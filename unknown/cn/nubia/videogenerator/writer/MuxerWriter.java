package cn.nubia.videogenerator.writer;

import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;

import android.annotation.SuppressLint;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.util.Log;
import cn.nubia.videogenerator.common.AVFrame;
import cn.nubia.videogenerator.common.Generator.OnCompleteListener;
import cn.nubia.videogenerator.common.Generator.OnProgressListener;

@SuppressLint("NewApi")
public class MuxerWriter {

    private static final String TAG = "MuxerWriter";
    private MediaMuxer mMuxer;
    private int mTotalTracks = 0;
    private long mAudioPts = 0;
    private long mVideoPts = 0;
    private AtomicBoolean mMuxerStarted = new AtomicBoolean(false);    
    private String mPath = null;
    private HashMap<String, Integer> mTrackIndex = new HashMap<String, Integer>();
    private OnCompleteListener mOnCompleteListener;
    private OnProgressListener mOnProgressListener;
    private int mCompleteTracks = 0;
    private long mMaxDuration = 0;
    private long mCurrentProgress = 0;
    private Object mMuxerLock = new Object();
    private ConcurrentLinkedQueue<AVFrame> mInputQueue;
    
    public MuxerWriter(String path, int outputFormat) throws IOException {
        mPath = path;
        mInputQueue = new ConcurrentLinkedQueue<AVFrame>();
        mMuxer = new MediaMuxer(path, outputFormat);       
    }
    
    public void setOrientation(int degrees) {
        synchronized (mMuxerLock) {
            mMuxer.setOrientationHint(degrees);
        }
    }
    
    public void setMuxTracks(int num){
        mTotalTracks = num;
    }
  
    public void onOutputBufferUpdate(ByteBuffer outputBuffer,
            BufferInfo bufferInfo, String mimeType) {
        writeSampleData(outputBuffer, bufferInfo, mimeType);
    }

    public void onOutputFormatChanged(MediaFormat mediaFormat) {
        addMediaFormat(mediaFormat);
    }
  
    public boolean isMuxerStarted() {
        return mMuxerStarted.get();
    }
    
    private void addMediaFormat(MediaFormat mediaFormat) {
        if(mMuxerStarted.get()){
            Log.e(TAG, "Muxer has started , MediaFormat should not change");
            throw new RuntimeException("MediaFormat changed after MediaMuxer started");
        }
        if((mediaFormat != null) && (mMuxer != null)){        	
            synchronized (mMuxerLock) {
                int index = mMuxer.addTrack(mediaFormat);
                mTrackIndex.put(mediaFormat.getString(MediaFormat.KEY_MIME), index);
                if (mTrackIndex.size() >= mTotalTracks) {

                    Log.d(TAG, "all tracks have added, start Muxer");
                    mMuxer.start();
                    mMuxerStarted.set(true);
                }
                while (!mInputQueue.isEmpty()) {
                    AVFrame datainfo = mInputQueue.poll();
                    Log.d(TAG, "chenpeng1 = " + datainfo.info.offset + "," + datainfo.info.size + ","
                            + datainfo.info.presentationTimeUs);
                    ByteBuffer decodedData = ByteBuffer.wrap(datainfo.data);
                    writeSampleData(decodedData, datainfo.info, datainfo.mimeType);
                }
            }
        }
    }

    
    private void writeSampleData(ByteBuffer outputBuffer,
            BufferInfo bufferInfo, String mimeType){
        if (!mMuxerStarted.get()) {
            Log.e(TAG, "Muxer hasn't started!");            
            AVFrame frame = new AVFrame();
            frame.data = outputBuffer.array();            
            frame.info = bufferInfo;            
            frame.mimeType = mimeType;
            Log.d(TAG, "chenpeng0 = " + frame.info.offset + ","+frame.info.size + "," + frame.info.presentationTimeUs);
            mInputQueue.add(frame);                       
        }else{
            updateProgress(bufferInfo.presentationTimeUs, mimeType);
            synchronized (mMuxerLock) {
                if(mMuxer != null){
                    mMuxer.writeSampleData(mTrackIndex.get(mimeType), outputBuffer, bufferInfo);
                }
            }
        }
    }

    private void updateProgress(long pts, String mimeType) {
        if(mMaxDuration > 0){
        	if(mimeType.contains("video/")){
        		mVideoPts = pts;
        	}else if(mimeType.contains("audio/")){
        		mAudioPts = pts;
        	}
            mCurrentProgress = (((mVideoPts + mAudioPts)* 100) / (mMaxDuration * mTotalTracks));
            notifyProgressUpdate(mCurrentProgress);
        }
    }

    private void notifyProgressUpdate(long progress) {
        if(mOnProgressListener != null){
            mOnProgressListener.onProgress(progress);
        }
    }
   
    public void onOutputComplete(String mimeType) {
        if((++mCompleteTracks >= mTotalTracks)){
            Log.i(TAG, "onOutputComplete");           
            if(mMaxDuration > 0){
                notifyProgressUpdate(100);
            }
            if (mOnCompleteListener != null) {
                mOnCompleteListener.onComplete();
            }
        }
    }
  
    public void stop(){
        Log.e(TAG, "stop");
        if(mMuxer != null){
            if (mMuxerStarted.get()) {
                try {
                    synchronized (mMuxerLock) {
                        mMuxer.stop();
                    }
                } catch (IllegalStateException e) {
                    e.printStackTrace();
                }
                mMuxerStarted.set(false);
            }
            release();
        }
    }
    
    public void release(){    	
        try{   			    		
    		synchronized(mMuxerLock){
    			if(mMuxer != null){
                    mMuxer.release();
    		    }
    		}
            mMuxer = null;
    	}catch(IllegalStateException e){	
			e.printStackTrace();
        }  	               
    }

   
    public void delete() {
        if(mPath != null){
            File file = new File(mPath);
            if(file != null && file.exists() && file.isFile()){
                file.delete();               
            }            
        }
    }

 
    public void rename(String newname) {
        if(mPath != null){
            File file = new File(mPath);
            if(file != null && file.exists()){
                file.renameTo(new File(newname));              
             }
        }
    }

   
    public void setOnCompleteListener(OnCompleteListener listener) {
        mOnCompleteListener = listener;
    }

   
    public void setOnProgressListener(OnProgressListener listener) {
        mOnProgressListener = listener;
    }

    public void setMaxDuration(long duration) {
        mMaxDuration = duration;
    }       

}
