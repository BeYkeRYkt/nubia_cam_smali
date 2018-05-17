/**
 * 从输入队列InputQueue中筛选需要送去编码/解码的数据帧,输出队列OutputQueue。
 * 筛选依据是输入队列中数据帧的时间戳，类似一个时域带通滤波器，时间戳位于
 * [passBeginUs,passEndUs]之间的数据帧被选中送往输出队列
 * 不检查数据帧数据和时间戳的有效性，但确保输出队列的最后一帧标记为END_OF_STREAM
 * */

package cn.nubia.videogenerator.common;

import java.nio.ByteBuffer;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

import cn.nubia.videogenerator.codec.DataOutput;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.os.Build;
import android.os.SystemClock;
import android.util.Log;

public class FrameFilter extends DataOutput {
    private static String TAG = "meeeeFrameFilter";
    private long mPassBeginUs = Long.MIN_VALUE;
    private long mPassEndUs = Long.MAX_VALUE;
    private int mFrameFilterType = 0xFFFFFFFF;
    private ConcurrentLinkedQueue<AVFrame> mInputQueue;
    private AtomicBoolean mIsFliterFinished = new AtomicBoolean(false);
    private AtomicBoolean mIsStoped = new AtomicBoolean(false);
    private OnQueueBeginOutput mOnQueueBeginOutputListener;
    private OnFilterFinish mOnFilterFinishListener;
    private OutputListener mOutputListener;
    private String mMimeType;

    public interface OnQueueBeginOutput {
        public void onQueueBeginOutput();

    }

    public interface OnFilterFinish {
        public void onFilterFinish();
    }

    public FrameFilter(String mimeType) {
        mMimeType = mimeType;
    }

    public void setOutputListener(OutputListener listener) {
        mOutputListener = listener;
    }

    public void setInputQueue(ConcurrentLinkedQueue<AVFrame> inputQueue) {
        mInputQueue = inputQueue;
    }

    public void setOnQueueBeginOutputListener(OnQueueBeginOutput lsn) {
        mOnQueueBeginOutputListener = lsn;
    }

    public void setOnFilterFinishListener(OnFilterFinish lsn) {
        mOnFilterFinishListener = lsn;
    }

    public void setFilteByTimeStamp(long passBeginUs, long passEndUs) {
        mPassBeginUs = passBeginUs;
        mPassEndUs = passEndUs;
    }

    public void setFilteByFrameType(int frameType) {
        mFrameFilterType = frameType;
    }

    public void start() {
        if (mPassBeginUs == Long.MIN_VALUE || mPassEndUs == Long.MAX_VALUE) {
            Log.v(TAG, "pass time windows is not set");
            return;
        }
        Thread fThread = new Thread(filterTask2);
        fThread.setName("Filter " + System.currentTimeMillis());
        fThread.setPriority(android.os.Process.THREAD_PRIORITY_BACKGROUND);
        fThread.start();
    }

    public void stop() {
        mIsStoped.set(true);
    }

    public boolean isFilterFinished() {
        return mIsFliterFinished.get();
    }

    private Runnable filterTask2 = new Runnable() {
        private TreeSet<Long> filterdTimestampSet = new TreeSet<Long>();
        private int mCnt = 0;

        @TargetApi(Build.VERSION_CODES.JELLY_BEAN)
        public void run() {
            boolean isFirstFrameFlitered = false;
            mIsStoped.set(false);
            while (!mIsStoped.get() && !mIsFliterFinished.get()) {
                if (mInputQueue == null) {
                    Log.v(TAG, "InputQueue lost");
                    continue;
                }
                if (mInputQueue.isEmpty()) {
                    Thread.yield();
                    continue;
                }
                Object[] avFrame = mInputQueue.toArray();// 取队列的快照，检查快照是否更新
                if (filterdTimestampSet.contains(((AVFrame) (avFrame[avFrame.length - 1])).info.presentationTimeUs)) {
                    Log.v(TAG, "no data update");// 队尾数据未更新
                    SystemClock.sleep(20);
                } else {
                    for (Object avframe : avFrame) {
                        AVFrame frame = (AVFrame) avframe;
                        if (!filterdTimestampSet.contains(frame.info.presentationTimeUs)) {
                            if (frame.info.presentationTimeUs >= mPassBeginUs
                                    && frame.info.presentationTimeUs <= mPassEndUs
                                    && ((mFrameFilterType & frame.frameType) != 0)) {
                                mOutputListener
                                        .onOutputBufferUpdate(ByteBuffer.wrap(frame.data), frame.info, mMimeType);
                                mCnt++;
                                if (!isFirstFrameFlitered) {
                                    isFirstFrameFlitered = true;
                                    if (mOnQueueBeginOutputListener != null) {
                                        mOnQueueBeginOutputListener.onQueueBeginOutput();
                                    } else {
                                        Log.v(TAG, "big error, no listener for filter first out");// 队尾数据未更新
                                    }
                                }
                                filterdTimestampSet.add(frame.info.presentationTimeUs);
                                /*
                                 * Log.v(TAG, "filterd frame:" +
                                 * frame.info.presentationTimeUs + " type:" +
                                 * frame.frameType);
                                 */
                            } else if (frame.info.presentationTimeUs > mPassEndUs) {
                                if (mCnt == 0) {
                                    Log.e(TAG, "serious!!!! no frame filterd out during the time window");
                                    mOutputListener.onOutputBufferUpdate(ByteBuffer.wrap(frame.data), frame.info,
                                            mMimeType);
                                    mCnt++;
                                    if (!isFirstFrameFlitered) {
                                        isFirstFrameFlitered = true;
                                        if (mOnQueueBeginOutputListener != null) {
                                            mOnQueueBeginOutputListener.onQueueBeginOutput();
                                        } else {
                                            Log.v(TAG, "big error, no listener for filter first out");
                                        }
                                    }
                                } else {
                                    frame = null;
                                }
                                AVFrame endFrame = new AVFrame();
                                endFrame.frameType = mFrameFilterType;
                                endFrame.data = new byte[2];// no use,just empty
                                endFrame.info = new BufferInfo();
                                endFrame.info.set(0, 2, 0, MediaCodec.BUFFER_FLAG_END_OF_STREAM);
                                mOutputListener.onOutputBufferUpdate(ByteBuffer.wrap(endFrame.data), endFrame.info,
                                        mMimeType);
                                Log.v(TAG, "enough data has got,end of stream added:" + mFrameFilterType);
                                if (mOnFilterFinishListener != null) {
                                    mOnFilterFinishListener.onFilterFinish();
                                }
                                mIsFliterFinished.set(true);
                            }
                        }
                    }
                }
                avFrame = null;
                Thread.yield();
                SystemClock.sleep(10);
            }
            Log.v(TAG, "Filter finish output: " + mCnt + " of " + mFrameFilterType);
        }
    };
}
