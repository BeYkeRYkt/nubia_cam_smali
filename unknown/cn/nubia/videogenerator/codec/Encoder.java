package cn.nubia.videogenerator.codec;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;

import android.annotation.SuppressLint;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import cn.nubia.videogenerator.common.AVFrame;
import cn.nubia.videogenerator.common.InputBufferFiller;
import cn.nubia.videogenerator.common.OutputListener;

@SuppressLint("NewApi")
public class Encoder implements InputBufferFiller {
    private static final String TAG = "Encoder";

    private AtomicBoolean mIsEnd = new AtomicBoolean(false);
    private Surface mSurface = null;
    private AudioParams mAudioParams;
    private VideoParams mVideoParams;
    private int mFps;
    private String mMimeType;
    private OutputListener mOutputListener;
    private MediaCodec mEncoder;

    private boolean isFirstFrame = true;
    private boolean isEndFrame = false;
    private long mPresentationTimeUs = 0;
    private ConcurrentLinkedQueue<AVFrame> mInputQueue;
    private long mAudioPts = 0;
    private CodecRender mRender;
    private Object mLock = new Object();
    private int mEncodWaitFrameCount = 0;
    private int mEncodFinishFrameCount = 0;
    private boolean mEncoderEndFlag = true;
    @SuppressLint("NewApi")
    public Encoder(VideoParams params) throws IOException {
        mVideoParams = params;
        mFps = params.getFps();
        mMimeType = params.getMimeType();
        mEncoder = MediaCodec.createEncoderByType(params.getMimeType());
        MediaFormat format = params.getMediaFormat();
        if(mVideoParams.getMtkHighFlag()){
            format.setInteger("recorder", 1);
        }
        if(mVideoParams.getMtkSlowFlag()){        	
            format.setInteger("enc-nonRefP", 1);
        }
        mEncoder.configure(format, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE);
        init();
    }

    public Encoder(AudioParams params) throws IOException {
        mAudioParams = params;
        mMimeType = params.getMimeType();
        mEncoder = MediaCodec.createEncoderByType(params.getMimeType());
        mEncoder.configure(params.getMediaFormat(), null, null, MediaCodec.CONFIGURE_FLAG_ENCODE);
        init();
    }

    private void init() {
        mInputQueue = new ConcurrentLinkedQueue<AVFrame>();
    }    

    public boolean isEmptyOfInputQueue() {
        return ((mInputQueue.isEmpty() && (mEncodFinishFrameCount >= mEncodWaitFrameCount)) || mIsEnd.get());
    }
    
    public void setRender(CodecRender render) {
        mRender = render;
        if (mEncoder != null) {
            mRender.setFiller(this);
        }
    }

    public void setRender(ImageRender render) {
        if (mEncoder != null) {
            render.setFiller(this);
 
            if (mSurface == null
                    && mVideoParams.getColorFormat() == MediaCodecInfo.CodecCapabilities.COLOR_FormatSurface) {
                synchronized (mLock) {
                    mSurface = mEncoder.createInputSurface();
                }
            }
            render.createInputSurface(getSurface(), getParams().getWidth(), getParams().getHeight());
        }
    }

    public VideoParams getParams() {
        return mVideoParams;
    }

    public void setEncoderEndFlag(boolean endflag) {
        mEncoderEndFlag = endflag;
    }
    
    public long setVideoPts(long pts) {
        return mPresentationTimeUs = pts;
    }
    
    public long getVideoPts() {
        return mPresentationTimeUs;
    }
    
    @Override
    public boolean isBufferUpperLimit(int bufferCount){
    	boolean isUpperLimit = false;
    	if(mEncodWaitFrameCount >= (mEncodFinishFrameCount + bufferCount)){
    		isUpperLimit = true;
		}
    	return isUpperLimit;
    }
    
    @Override
    public void fillInputBuffer(boolean isEnd) {
    	mEncodWaitFrameCount++;
    	//Log.i(TAG, "mEncodWaitFrameCount = " + mEncodWaitFrameCount);
        fillInputBufferInner(isEnd);
    }

    @Override
    public void fillInputBufferAsync(ByteBuffer buffer, BufferInfo bufferInfo) {
        // TODO Auto-generated method stub
        AVFrame frame = new AVFrame();
        frame.data = buffer.array();
        frame.info = bufferInfo;
        mInputQueue.add(frame);
        mEncodWaitFrameCount++;
        //Log.i(TAG, "mEncodWaitFrameCount = " + mEncodWaitFrameCount);
    }

    public Surface getSurface() {
        return mSurface;
    }

    public void setOutputListener(OutputListener listener) {
        mOutputListener = listener;
    }

    public void fillInputBufferInner(boolean isEnd) {        
        try {        	
            synchronized (mLock) {
                if (mEncoder != null) {
                    drainEncoder(isEnd);  
                }
            }
        } catch (IllegalStateException e) {
            e.printStackTrace();           
        }
    }

    private void queueInputBuffer() throws IllegalStateException {
        if (!isFirstFrame && !getMuxFlags()) {
            return;
        }
        synchronized (mLock) {
            int inputBufferIndex = mEncoder.dequeueInputBuffer(100);
            if (inputBufferIndex >= 0) {
                isFirstFrame = false;
                AVFrame datainfo = mInputQueue.poll();               
                ByteBuffer inputBuffer = mEncoder.getInputBuffer(inputBufferIndex);
                inputBuffer.clear();
                inputBuffer.put(datainfo.data);

                if ((datainfo.info.size >= 0) && (datainfo.info.flags & MediaCodec.BUFFER_FLAG_END_OF_STREAM) == 0) {
                    mEncoder.queueInputBuffer(inputBufferIndex, 0, datainfo.info.size,
                            datainfo.info.presentationTimeUs, 0);
                } else {
                    Log.i(TAG, mMimeType + " EOS received in fillInputBufferInner");
                    mEncoder.queueInputBuffer(inputBufferIndex, 0, datainfo.info.size,
                            datainfo.info.presentationTimeUs, MediaCodec.BUFFER_FLAG_END_OF_STREAM);
                    isEndFrame = true;
                }
            }
        }
    }

    @SuppressLint("NewApi")
    private void drainEncoder(boolean endOfStream) throws IllegalStateException {
        if (endOfStream) {
            Log.d(TAG, mMimeType + " sending EOS to encoder");
            if (mSurface != null) {
                synchronized (mLock) {
                    mEncoder.signalEndOfInputStream();
                }
            }
        }

        while (true) {
            MediaCodec.BufferInfo outputBufferInfo = new MediaCodec.BufferInfo();
            int outputIndex = -0xff;
            synchronized (mLock) {
                outputIndex = mEncoder.dequeueOutputBuffer(outputBufferInfo, 0);
            }
            if(mIsEnd.get())break;
            if (outputIndex == MediaCodec.INFO_TRY_AGAIN_LATER) {
            	if(mSurface != null ){
            		if(!endOfStream || mEncodWaitFrameCount == 0){ 
            		    break;
            		}
            	}else if ((!endOfStream &&  !mInputQueue.isEmpty()) || mEncodWaitFrameCount == 0) {
                    break;
                }
            } else if (outputIndex == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED) {
                MediaFormat format = null;
                synchronized (mLock) {
                    format = mEncoder.getOutputFormat();
                }
                if(mPresentationTimeUs == 0){
                    notifyOutputFormatChanged(format);
                }
            } else if (outputIndex < 0) {
                Log.w(TAG, mMimeType + " unexpected result from encoder.dequeueOutputBuffer: " + outputIndex);
            } else {
                byte[] copyOfEncodedBytes = new byte[outputBufferInfo.size];
                synchronized (mLock) {
                    mEncoder.getOutputBuffer(outputIndex).get(copyOfEncodedBytes);
                }
                ByteBuffer encodedData = ByteBuffer.wrap(copyOfEncodedBytes);                
                if (encodedData == null) {
                    throw new RuntimeException("encoderOutputBuffer " + outputIndex + " was null");
                }
                if ((outputBufferInfo.flags & MediaCodec.BUFFER_FLAG_CODEC_CONFIG) != 0) {
                    outputBufferInfo.size = 0;
                }
                if (outputBufferInfo.size != 0) {
                    encodedData.position(outputBufferInfo.offset);
                    encodedData.limit(outputBufferInfo.offset + outputBufferInfo.size);
                    if (mMimeType.contains("video/")) {
                        outputBufferInfo.presentationTimeUs = mPresentationTimeUs;
                        mPresentationTimeUs += 1000000L / mFps;
                    } else if (mMimeType.contains("audio/")){
                        outputBufferInfo.presentationTimeUs = mAudioPts;
                        if (getMuxFlags()) {
                            mAudioPts += 1024 * 1000000L / mAudioParams.getSampleRate();
                        }
                    }
                    mEncodFinishFrameCount ++;
                    //Log.i(TAG, "mEncodFinishFrameCount = " + mMimeType + ":"+ mEncodFinishFrameCount);
                    //Log.w(TAG, "mPresentationTimeUs" + mMimeType + ":" + mPresentationTimeUs);
                    notifyOutputBufferUpdate(encodedData, outputBufferInfo);
                   
                }
                synchronized (mLock) {
                    mEncoder.releaseOutputBuffer(outputIndex, false);
                }
                if ((outputBufferInfo.flags & MediaCodec.BUFFER_FLAG_END_OF_STREAM) != 0) {
                    if (!endOfStream) {
                        Log.w(TAG, mMimeType + " reached end of stream unexpectedly " + mMimeType);
                    } else {
                        Log.d(TAG, mMimeType + " end of stream reached " + mMimeType);
                    }
                    if(mEncoderEndFlag){
                        notifyOutputComplete();
                    }
                    mIsEnd.set(true);
                    break; // out of while
                }
                if((mSurface == null) && (mInputQueue.isEmpty()) && (mEncodFinishFrameCount >= mEncodWaitFrameCount)
                		&& (mMimeType.contains("video/"))){
                	Log.d(TAG, mMimeType + " encoder data is over ");
                	break;
                }
            }
        }
    }

    private void notifyOutputComplete() {
        if (mOutputListener != null) {
            mOutputListener.onOutputComplete(mMimeType);
        }
    }

    private void notifyOutputBufferUpdate(ByteBuffer outputBuffer, BufferInfo bufferInfo) {
        if (mOutputListener != null) {
            mOutputListener.onOutputBufferUpdate(outputBuffer, bufferInfo, mMimeType);
        }
    }

    private void notifyOutputFormatChanged(MediaFormat mediaFormat) {
        Log.i(TAG, "notifyOutputFormatChanged format changed " + mediaFormat.toString());
        if (mOutputListener != null) {
            mOutputListener.onOutputFormatChanged(mediaFormat);
        }
    }

    private boolean getMuxFlags() {
        return mOutputListener.isMuxerStarted();
    }

    private void encodeData() {
        if (mEncoder != null && !mIsEnd.get()) {
            queueInputBuffer();
            drainEncoder(isEndFrame);
        }
    }

    private void startEncode() {
        synchronized (mLock) {
        	 if (mEncoder != null){
                 drainEncoder(isEndFrame);
        	 }
        }
        while (!mIsEnd.get()) {
            if (mInputQueue.isEmpty()) {
                Thread.yield();
                SystemClock.sleep(20);
              //  Log.v(TAG, mMimeType + " filter out is empty");
            } else {
                synchronized (mLock) {
                    encodeData();
                }
            }

        }
    }

    private class EncoderTask extends Thread {

        public void run() {
            startEncode();
        }
    };

    public void start() {
        if (mEncoder != null) {
            Log.i(TAG, mMimeType + " Encoder start");
            synchronized (mLock) {
                mEncoder.start();
            }
        }
        if (mSurface == null) {
            new EncoderTask().start();
        }
    }         
    
    public void cancel(){   	 
    	mIsEnd.set(true);    
        if(mEncoder != null){
            synchronized(mLock){
        	    mEncoder.stop();        	 
            }
	    }
        mInputQueue.clear(); 
    }    
    
    public void release() { 
    	mIsEnd.set(true);
        if (mEncoder != null) {
        	synchronized(mLock){
                Log.i(TAG, mMimeType + " release");           
                mEncoder.stop();
                mEncoder.release();                 
                mEncoder = null;
                if(mSurface != null){
                    mSurface.release();
                    mSurface = null;
                }
        	}
        }
        mInputQueue.clear(); 
    }
}
