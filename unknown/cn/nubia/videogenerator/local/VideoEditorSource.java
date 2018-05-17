package cn.nubia.videogenerator.local;

import java.io.IOException;
import java.nio.ByteBuffer;

import android.annotation.SuppressLint;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.os.SystemClock;
import android.util.Log;

public class VideoEditorSource extends VideoSourceBase {
    private static final String TAG = "VideoEditorSource";   
    private ReadTask mReadTask;    
    
    public VideoEditorSource(String path) throws IOException{
        mPath = path;                
        mReadTask = new ReadTask();
    }      
    
    @Override
    public void start() throws IOException{   	
        new Thread(mReadTask, "VideoLocalSource").start();
    }
    
    @Override
    public void stop(){
        mIsReading = false;
    }       
   
    @SuppressLint("NewApi")
    public class ReadTask implements Runnable{        
        
        public ReadTask() throws IOException{
            super();
            mExtractor = new MediaExtractor();
            mExtractor.setDataSource(mPath);
            selectTrack();
        }

        private void selectTrack() {
            int count = mExtractor.getTrackCount();
            for(int i = 0; i< count; i++){
                MediaFormat format = mExtractor.getTrackFormat(i);     
                
                if(format.getString(MediaFormat.KEY_MIME).contains("video/")){
                    mExtractor.selectTrack(i);                   
                    mFormat = format;
                    mMimetype = mFormat.getString(MediaFormat.KEY_MIME);                    
                    break;
                }
            }
        } 
        
        @Override
        public void run() {        	
            ByteBuffer inputBuffer = ByteBuffer.allocate(1 * 1024 * 1024);//1M           
            if(mTrimType == TRIM_MODE_INNER){            	
            	if(mStartMs > 0){ 
            		  mExtractor.seekTo(mStartMs, MediaExtractor.SEEK_TO_NEXT_SYNC);    	    
             	}
            	Log.e(TAG, "start read video");
		        while(mIsReading){
		        	if(mDecoderDataListener != null && mDecoderDataListener.isBufferUpperLimit(20)){		        		
		        		Thread.yield();
						SystemClock.sleep(50);
						continue;
					}
		        	MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
		            bufferInfo.size = mExtractor.readSampleData(inputBuffer, 0);
		            bufferInfo.presentationTimeUs = mExtractor.getSampleTime();
		            bufferInfo.offset = 0;		            
		            bufferInfo.flags = mExtractor.getSampleFlags();
		            
		            if((bufferInfo.size < 0) || (mExtractor.getSampleTime() >= mEndMs) ){
		                Log.e(TAG, "read EOS break");
		                bufferInfo.size = 0;
		                bufferInfo.flags = MediaCodec.BUFFER_FLAG_END_OF_STREAM;
		                mDecoderDataListener.onDecoderDataCopy(inputBuffer,bufferInfo);
		                while(mIsReading && !mCodecListener.isEmptyOfInputQueue());
		                mIsReading = false;		                
		                if (mListener != null) {		                	
		                    mListener.onOutputComplete(mMimetype);
		                }		                
		                break;
		            }
		            mDecoderDataListener.onDecoderDataCopy(inputBuffer,bufferInfo);
		            mExtractor.advance();
		        }
            }else if(mTrimType == TRIM_MODE_OUTER){
            	boolean startSecondHalfTrim = false;
            	while(mIsReading){
            		if(mDecoderDataListener != null && mDecoderDataListener.isBufferUpperLimit(50)){
            			Thread.yield();
						SystemClock.sleep(20);
						continue;
					}
		        	MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
		        	 bufferInfo.size = mExtractor.readSampleData(inputBuffer, 0);
			         bufferInfo.presentationTimeUs = mExtractor.getSampleTime();
			         bufferInfo.offset = 0;		            
			         bufferInfo.flags = mExtractor.getSampleFlags();
		            
                    if(!startSecondHalfTrim && mExtractor.getSampleTime() >= mStartMs){
                    	startSecondHalfTrim = true;
                    	if(mEndMs < mVideoDuration){              		
                    	    mExtractor.seekTo(mEndMs, MediaExtractor.SEEK_TO_NEXT_SYNC);
                    	    Log.e(TAG, "mEndMs = " + mEndMs + " " + mExtractor.getSampleTime());
                    	    continue;
                    	}else{   
                    		bufferInfo.size = 0;
     		                bufferInfo.flags = MediaCodec.BUFFER_FLAG_END_OF_STREAM;
     		                mDecoderDataListener.onDecoderDataCopy(inputBuffer,bufferInfo);
                    		while(mIsReading && !mCodecListener.isEmptyOfInputQueue());
                    		mIsReading = false;
     		                if (mListener != null) {     		                	
     		                    mListener.onOutputComplete(mMimetype);
     		                }     		                
     		                break;
                    	}
		            }         
		            
		            if(bufferInfo.size < 0 || mExtractor.getSampleTime() >= mVideoDuration) {
		                Log.e(TAG, "read EOS break");
		                bufferInfo.size = 0;
 		                bufferInfo.flags = MediaCodec.BUFFER_FLAG_END_OF_STREAM;
 		                mDecoderDataListener.onDecoderDataCopy(inputBuffer,bufferInfo);
                		while(mIsReading && !mCodecListener.isEmptyOfInputQueue());
		                mIsReading = false;
		                if (mListener != null) {		                	
		                    mListener.onOutputComplete(mMimetype);
		                }	                
		                break;
		            }
		            mDecoderDataListener.onDecoderDataCopy(inputBuffer,bufferInfo);
		            mExtractor.advance();
		        }
            }
            Log.d(TAG, "**** release Extractor ****");
            mDecoderDataListener = null;
            mListener = null;
            mCodecListener = null;
            mExtractor.release();           
        }
        
    }
}
