package cn.nubia.videogenerator.common;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.AudioRecord;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.os.Build;
import android.os.SystemClock;
import android.util.Log;
import cn.nubia.videogenerator.codec.AudioParams;

public class PCMGenerator {
    private static String TAG = "meeeAudioRecorder";
    private int mAudioSource;
    private AudioParams mAudioParam;
    private ConcurrentLinkedQueue<AVFrame> mOutputQueue = null;
    private AudioRecord mAudioRecorder = null;
    private int mMinBufferSize;
    private AtomicBoolean mIsRunning = new AtomicBoolean(false);
    private long mOutputCacheDurationMs;

    public PCMGenerator(int audioSource) {
        mAudioSource = audioSource;
    }

    public PCMGenerator() {
    }

    public void setAudioSource(int audioSource) {
        mAudioSource = audioSource;
    }

    public void setAudioRecordParam(AudioParams params) {
        mAudioParam = params;
    }

    public void setOutputCacheDuration(int timeMs) {
        mOutputCacheDurationMs = timeMs;
    }

    public void setOutputQueue(ConcurrentLinkedQueue<AVFrame> queue) {
        mOutputQueue = queue;
    }

    @SuppressLint("NewApi")
    @TargetApi(Build.VERSION_CODES.JELLY_BEAN)
    public void start() throws IllegalArgumentException, IllegalStateException {
        mMinBufferSize = AudioRecord.getMinBufferSize(mAudioParam.getSampleRate(), mAudioParam.getChannelLayout(),
                mAudioParam.getAudioFormat());
        mAudioRecorder = new AudioRecord(mAudioSource, mAudioParam.getSampleRate(), mAudioParam.getChannelLayout(),
                mAudioParam.getAudioFormat(), 2 * mMinBufferSize);

        mAudioRecorder.startRecording();
        Log.v(TAG, "startRecording");
        Log.v(TAG, "minBufferSize " + mMinBufferSize);
        mIsRunning.set(true);
        Thread aThread = new Thread(new Runnable() {
            @Override
            public void run() {
                int num = 0;

                int cnt = (int) ((mOutputCacheDurationMs + 200) / 1000.0 * mAudioParam.getSampleRate() * 4 / (2 * mMinBufferSize)) / 2;
                Log.v(TAG, "samples cnt " + cnt);
                while (mIsRunning.get()) {
                    byte[] buffer = new byte[2 * mMinBufferSize];
                    synchronized (this) {
                        num = mAudioRecorder.read(buffer, 0, 2 * mMinBufferSize);
                    }
                    if (num == AudioRecord.ERROR_INVALID_OPERATION) {
                        Log.v(TAG, "read pcm error");
                    } else {
                        BufferInfo aInfo = new BufferInfo();
                        AVFrame aFrame = new AVFrame();
                        aFrame.data = buffer;
                        aFrame.frameType = AVFrame.MEDIA_TYPE_AUDIO;
                        aInfo.presentationTimeUs = SystemClock.elapsedRealtimeNanos() / 1000;
                        aInfo.size = num;
                        aInfo.offset = 0;
                        aInfo.flags = MediaCodec.BUFFER_FLAG_KEY_FRAME;
                        aFrame.info = aInfo;
                        if (mOutputQueue.size() < cnt) {
                            mOutputQueue.add(aFrame);
                        } else {
                            mOutputQueue.poll();
                            mOutputQueue.add(aFrame);
                        }
                    }
                }
            }
        });
        aThread.setName("PCM Thread " + System.currentTimeMillis());
        aThread.setPriority(android.os.Process.THREAD_PRIORITY_BACKGROUND);
        aThread.start();

    }

    public void stop() {
        mIsRunning.set(false);
        synchronized (this) {
            mAudioRecorder.stop();
        }
    }

    public boolean isRunning() {
        return mIsRunning.get();
    }

    public void release() {
        if (mAudioRecorder.getState() != AudioRecord.RECORDSTATE_STOPPED) {
            mAudioRecorder.stop();
        }
        if (mAudioRecorder != null) {
            mAudioRecorder.release();
            mAudioRecorder = null;
        }
    }

}
