package cn.nubia.videogenerator.local;

import java.io.IOException;
import java.nio.ByteBuffer;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.os.Build;
import android.util.Log;

public class VideoLocalSource extends VideoSourceBase{
    private static final String TAG = "VideoLocalSource";
    private ReadTask mReadTask;
    private long step = 0;   
    
    public VideoLocalSource(String path) throws IOException{
        mPath = path;                
        mReadTask = new ReadTask();
    }      
   
    @Override
    public void start() throws IOException{
    	if(mFormat != null && !mExistVideoHead){
    		mListener.onOutputFormatChanged(mFormat);
    	}
    	
        new Thread(mReadTask, "VideoLocalSource").start();
    }
    
    @Override
    public void stop(){
        mIsReading = false;
    }   
    
    @TargetApi(Build.VERSION_CODES.JELLY_BEAN)
   	private void getFront(long realTime){
       	Log.d(TAG,"start precise adjustment ");
       	mExtractor.seekTo(realTime,MediaExtractor.SEEK_TO_NEXT_SYNC);
       	IFramePts = mExtractor.getSampleTime();       	   
   		if(mTrimType == TRIM_MODE_INNER){
   		    ByteBuffer buffer = ByteBuffer.allocate(1024 * 1024);
   		    BufferInfo info = new BufferInfo();
   		    step = IFramePts - mStartMs;
   		    int num = mExtractor.readSampleData(buffer,0);    		   		
   		    info.flags = mExtractor.getSampleFlags();
   		    info.offset = 0;   			
   		    info.presentationTimeUs = mVideoPts;    		
   		    info.size = num;    	
   		    mListener.onOutputBufferUpdate(buffer,info,mMimetype);
   		    mExtractor.advance();
   		}
   		return;            		
    } 
    
    @TargetApi(Build.VERSION_CODES.JELLY_BEAN)
	private void getDecoderFront(long realTime){
    	Log.d(TAG,"start precise adjustment ");
    	mExtractor.seekTo(realTime,MediaExtractor.SEEK_TO_NEXT_SYNC);
    	IFramePts = mExtractor.getSampleTime();       	
    	Log.d(TAG,"IFramePts = " + IFramePts);
    	if(IFramePts == -1){
    		IFramePts = Long.MAX_VALUE;
    	}    	
    	mExtractor.seekTo(realTime,MediaExtractor.SEEK_TO_PREVIOUS_SYNC);
    	ByteBuffer buffer = ByteBuffer.allocate(1024 * 1024);
    	
    	if(mExtractor.getSampleFlags() != MediaCodec.BUFFER_FLAG_KEY_FRAME){
    		Log.d(TAG,"error:first frame is no");
    	}
    	for(int i = 0;i < 300;i++){
    		BufferInfo info = new BufferInfo();
    		int num = mExtractor.readSampleData(buffer,0);
    		if(num == -1){
    			Log.d(TAG,"file is eos");
    			info.size = 0;
    			info.flags = MediaCodec.BUFFER_FLAG_END_OF_STREAM;
    			if (mDecoderDataListener != null) {    			
    				mDecoderDataListener.onDecoderDataCopy(buffer,info);				
    			} 
    			break;
    		}
    		if(!mIsReading){
    			break;
    		}
    		long currentTime = mExtractor.getSampleTime();
    		Log.d(TAG,"currentTime = " + currentTime + "realTime =  " + realTime);
    		
    		if(currentTime >= IFramePts){
    			info.size = 0;
    			info.flags = MediaCodec.BUFFER_FLAG_END_OF_STREAM;
    			if (mDecoderDataListener != null) {    			
    				mDecoderDataListener.onDecoderDataCopy(buffer,info);				
    			} 
    			Log.d(TAG,"precise adjustment is over");
    			break;
    		}
    		
    		info.flags = mExtractor.getSampleFlags();
    		info.offset = 0;
    		info.presentationTimeUs = mExtractor.getSampleTime();
    		info.size = num;    		
    		
    		Log.d(TAG,"send decoder data" + num);
    		if (mDecoderDataListener != null) {    			
				mDecoderDataListener.onDecoderDataCopy(buffer,info);				
			}    		
    		mExtractor.advance();
    	}
    	buffer = null;    	
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
            		if(mPreciseTrim){
                 	    getDecoderFront(mStartMs);            	
            	        while(mIsReading && !mCodecListener.isEmptyOfInputQueue());
            		}else{
            			getFront(mStartMs);
            		}            	    
             	}else{
             		while(mListener!= null && !mListener.isMuxerStarted()){
             			continue;
             		}
             	}
            	Log.e(TAG, "start read video");
		        while(mIsReading){		        	
		        	MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
		            bufferInfo.size = mExtractor.readSampleData(inputBuffer, 0);
		            
		            if(mStartMs == 0){   
		            	bufferInfo.presentationTimeUs = mVideoPts +  mExtractor.getSampleTime();                    
		            }else{     
		            	bufferInfo.presentationTimeUs = mVideoPts +  (mExtractor.getSampleTime() - mStartMs); 		            	
		            }
		            bufferInfo.flags = mExtractor.getSampleFlags();
		            
		            if((bufferInfo.size < 0) || (mExtractor.getSampleTime() >= mEndMs) ){
		                Log.e(TAG, "read EOS break");
		                mIsReading = false;
		                if (mListener != null) { 
		                    mListener.onOutputComplete(mMimetype);
		                }		                
		                break;
		            }
		            if (mListener != null) {                	
		                mListener.onOutputBufferUpdate(inputBuffer, bufferInfo,mMimetype);
		            }
		            mExtractor.advance();
		        }
            }else if(mTrimType == TRIM_MODE_OUTER){
            	boolean startSecondHalfTrim = false;            	
            	long trimVideoDuration = mEndMs - mStartMs;
            	while(mIsReading){             	
		        	MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
		            bufferInfo.size = mExtractor.readSampleData(inputBuffer, 0);
		            
                    if(!startSecondHalfTrim && mExtractor.getSampleTime() >= mStartMs){
                    	startSecondHalfTrim = true;
                    	if(mEndMs < mVideoDuration){
                    		if(mPreciseTrim){
                    			getFront(mEndMs);
                        		while(mIsReading && !mCodecListener.isEmptyOfInputQueue() );
                    		}else{
                    			getFront(mEndMs);
                    		}
                    		
                    	    if(mExtractor.getSampleTime() < mEndMs && mPreciseTrim){
                    	    	step = mEndMs - mExtractor.getSampleTime();
                    	    }
                    	    Log.e(TAG, "mEndMs = " + mEndMs + " " + mExtractor.getSampleTime());
                    	    continue;
                    	}else{    
                    		mIsReading = false;
     		                if (mListener != null) { 
     		                    mListener.onOutputComplete(mMimetype);
     		                }     		                
     		                break;
                    	}
		            }
                    
		            if(startSecondHalfTrim){   
		            	bufferInfo.presentationTimeUs = mVideoPts + (mExtractor.getSampleTime() + step - trimVideoDuration);                    
		            }else{          
		            	bufferInfo.presentationTimeUs = mVideoPts +  mExtractor.getSampleTime();		                
		            }
		            bufferInfo.flags = mExtractor.getSampleFlags();
		            
		            if(bufferInfo.size < 0 || mExtractor.getSampleTime() >= mVideoDuration - step) {
		                Log.e(TAG, "read EOS break");
		                mIsReading = false;
		                if (mListener != null) { 
		                    mListener.onOutputComplete(mMimetype);
		                }	                
		                break;
		            }
		            if (mListener != null) {                	
		                mListener.onOutputBufferUpdate(inputBuffer, bufferInfo,mMimetype);		               
		            }
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
