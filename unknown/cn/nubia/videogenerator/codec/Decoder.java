package cn.nubia.videogenerator.codec;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.ConcurrentLinkedQueue;

import android.annotation.SuppressLint;
import android.graphics.RectF;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import android.os.SystemClock;
import android.util.Log;
import cn.nubia.videogenerator.common.AVFrame;
import cn.nubia.videogenerator.common.DecoderDataListener;
import cn.nubia.videogenerator.common.OutputListener;
import cn.nubia.videogenerator.common.YuvCroper;

@SuppressLint("NewApi")
public class Decoder extends DataOutput implements DecoderDataListener{

    private static final String TAG = "Decoder";     
    private boolean mIsEnd = false;    
    private MediaFormat mDecoderFormat = null;
    private static final int MAX_INPUT_SIZE = 16 * 1024;
    private String mMimeType;
    private MediaCodec mDecoder;
    private OutputListener mOutputListener;    
    private boolean isEndFrame = false;
    private ConcurrentLinkedQueue<AVFrame> mInputQueue;
    private Object mLock = new Object();
    private int mDecodWaitFrameCount = 0;
    private int mDecodFinishFrameCount = 0;
    private long mIFramePts = -1;
    private YuvCroper mVideoCrop = null;
    
    public Decoder(MediaFormat decoderFormat) throws IOException {
        mDecoderFormat = decoderFormat;       
        mMimeType = mDecoderFormat.getString(MediaFormat.KEY_MIME);
        prepare(mDecoderFormat);        
        mInputQueue = new ConcurrentLinkedQueue<AVFrame>();        
    }     
    
     private void prepare(MediaFormat format) {
       format.setInteger(MediaFormat.KEY_MAX_INPUT_SIZE, MAX_INPUT_SIZE);
       MediaCodecList codecList = new MediaCodecList(MediaCodecList.REGULAR_CODECS);
       String decoderName = codecList.findDecoderForFormat(format);
       boolean isByName = true;
       try{
    	   if(decoderName != null){
    		   Log.i(TAG, "decoderName :" + decoderName);
    		   isByName = true;
    		   mDecoder = MediaCodec.createByCodecName(decoderName);
    	   }else{
    		   Log.i(TAG, "KEY_MIME :" + MediaFormat.KEY_MIME);
    		   isByName = false;
    	       mDecoder = MediaCodec.createDecoderByType(format.getString(MediaFormat.KEY_MIME));
    	   }
    	   mDecoder.configure(format, null, null, 0);       
       }catch(Exception e){
    	   try{
    	       release();
    	       if(isByName){
    		       mDecoder = MediaCodec.createDecoderByType(format.getString(MediaFormat.KEY_MIME));
    		       mDecoder.configure(format, null, null, 0);
    	       }
    	   }catch(Exception o){
    	   
    	   }
       }
    } 
   
    public void prepareVideoTrim(int decoderType,int degree,RectF crop){    
    	try {    		
			mVideoCrop = new YuvCroper(decoderType,mDecoderFormat.getInteger(MediaFormat.KEY_WIDTH),
					mDecoderFormat.getInteger(MediaFormat.KEY_HEIGHT),degree,crop);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    
    public int getCropWidth(){
    	return mVideoCrop.getCropWidth();
    }
    
    public int getCropHeight(){
    	return mVideoCrop.getCropHeight();
    }
    
    @SuppressLint("NewApi")
    private void fillInputBufferAsync(ByteBuffer buffer, BufferInfo bufferInfo) {
    	
        AVFrame frame = new AVFrame();
        frame.data = buffer.array();
        frame.info = bufferInfo;
        mInputQueue.add(frame);
        if(bufferInfo.size != 0){
            mDecodWaitFrameCount++;
        }
        //Log.i(TAG, "mDecodWaitFrameCount = " + mDecodWaitFrameCount);
    }

    
    public void setOutputListener(OutputListener listener) {
        mOutputListener = listener;
    }   
  
    private void queueInputBuffer() throws IllegalStateException {  	   	 	      
        int inputBufferIndex = mDecoder.dequeueInputBuffer(100);
        if (inputBufferIndex >= 0) {
            AVFrame frame = mInputQueue.poll();
            ByteBuffer inputBuffer = mDecoder.getInputBuffer(inputBufferIndex);
            inputBuffer.clear();
            inputBuffer.put(frame.data);
            
            if ((frame.info.size >= 0) && ((frame.info.flags & MediaCodec.BUFFER_FLAG_END_OF_STREAM) == 0)) {
                mDecoder.queueInputBuffer(inputBufferIndex, 0, frame.info.size, frame.info.presentationTimeUs, 0);
            } else {            	
                Log.i(TAG, "EOS recevied in fillInputBufferInner");
                mDecoder.queueInputBuffer(inputBufferIndex, 0, frame.info.size, frame.info.presentationTimeUs,
                        MediaCodec.BUFFER_FLAG_END_OF_STREAM);
                isEndFrame = true;
            }
            
        }
    }
    
    @SuppressLint("NewApi") 
    private void drainDecoder(MediaCodec decoder,boolean endOfStream)throws IllegalStateException {       
        while (true) {
            MediaCodec.BufferInfo decodedBufferInfo = new MediaCodec.BufferInfo();
            int outputIndex = decoder.dequeueOutputBuffer(decodedBufferInfo, 0);
            if(mIsEnd)break;
            if (outputIndex == MediaCodec.INFO_TRY_AGAIN_LATER) {
                if ((!endOfStream && mDecodWaitFrameCount > 0 && !mInputQueue.isEmpty())|| mDecodWaitFrameCount == 0) {                    
                    break;
                }
            } else if (outputIndex == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED) {
                MediaFormat format = decoder.getOutputFormat();
                mMimeType = format.getString(MediaFormat.KEY_MIME);
                notifyOutputFormatChanged(format);               
            } else if (outputIndex < 0) {
                Log.w(TAG, "unexpected result from decoder.dequeueOutputBuffer: " + outputIndex);
            } else {
            	 
            	if((decodedBufferInfo.presentationTimeUs < mIFramePts) &&
            			(mDecodFinishFrameCount < mDecodWaitFrameCount)){
            		mDecodFinishFrameCount++;
            		decoder.getOutputBuffer(outputIndex);
            		decoder.releaseOutputBuffer(outputIndex, false);
                    //Log.i(TAG, "mDecodFinishFrameCount0 = " + mDecodFinishFrameCount);
            		continue;
            	}
            	
                ByteBuffer decodedData = null;
            	if(mVideoCrop != null){             		
            		byte[] CropBytes = new byte[mVideoCrop.getCropWidth() * mVideoCrop.getCropHeight() * 3 / 2];            		
            		System.arraycopy(mVideoCrop.crop(decoder.getOutputBuffer(outputIndex),decodedBufferInfo), 0, CropBytes, 0, mVideoCrop.getCropWidth() * mVideoCrop.getCropHeight() * 3 / 2);
            		decodedData = ByteBuffer.wrap(CropBytes);
            		if(decodedBufferInfo.size > 0){
            		decodedBufferInfo.size = mVideoCrop.getCropWidth() * mVideoCrop.getCropHeight() * 3 / 2;
            		}
            	}else{  
            		byte[] copyOfDecodedBytes = new byte[decodedBufferInfo.size];
                    decoder.getOutputBuffer(outputIndex).get(copyOfDecodedBytes);
                    decodedData = ByteBuffer.wrap(copyOfDecodedBytes);                    
            	}
            	if (decodedData == null) {
                    Log.e(TAG, "decodedData is null ");
                    throw new RuntimeException("encoderOutputBuffer " + outputIndex + " was null");
                }
                if ((decodedBufferInfo.flags & MediaCodec.BUFFER_FLAG_CODEC_CONFIG) != 0) {
                    decodedBufferInfo.size = 0;
                }
               
                notifyOutputBufferUpdate(decodedData, decodedBufferInfo);
                mDecodFinishFrameCount++;
                //Log.i(TAG, "mDecodFinishFrameCount = " + mDecodFinishFrameCount);
                decoder.releaseOutputBuffer(outputIndex, false);
                if ((decodedBufferInfo.flags & MediaCodec.BUFFER_FLAG_END_OF_STREAM) != 0) {
                    if (!endOfStream) {
                        Log.w(TAG, "reached end of stream unexpectedly");
                    } else {
                        Log.d(TAG, "end of stream reached");
                    }   
                    mIsEnd = true;
                    notifyOutputComplete();                   
                    break; // out of while
                }
                if((mInputQueue.isEmpty()) && (mDecodFinishFrameCount >= mDecodWaitFrameCount)
                		&& (mMimeType.contains("video/"))){                	
                	break;
                }
            }
        }
    }    
    
    public boolean isEmptyOfInputQueue() {
    	 return ((mInputQueue.isEmpty() && (mDecodFinishFrameCount >= mDecodWaitFrameCount)) || mIsEnd);
    }
    
    public void setNextIFramePts(long pts){
    	mIFramePts = pts;
    }
    
    private void notifyOutputComplete(){
        if (mOutputListener != null) {
            mOutputListener.onOutputComplete(mMimeType);
        }
    }
    
    private synchronized void notifyOutputBufferUpdate(ByteBuffer decodedData, BufferInfo bufferInfo) {
        if (mOutputListener != null) {
            mOutputListener.onOutputBufferUpdate(decodedData, bufferInfo, mMimeType);
        }       
    }

    private void notifyOutputFormatChanged(MediaFormat mediaFormat) {
        Log.i(TAG, "notifyOutputFormatChanged format changed " + mediaFormat.toString());
        if (mOutputListener != null) {
            mOutputListener.onOutputFormatChanged(mediaFormat);
        }
    }  
    
    private void decodeData(){
        try{
    	    if(mDecoder != null && !mIsEnd){
        	    queueInputBuffer();
   	            drainDecoder(mDecoder, isEndFrame);
            }
        }catch (IllegalStateException e){  
        	 byte[] copyOfDecodedBytes = new byte[1];
        	 MediaCodec.BufferInfo decodedBufferInfo = new MediaCodec.BufferInfo();
             ByteBuffer decodedData = ByteBuffer.wrap(copyOfDecodedBytes);             
             decodedBufferInfo.flags = MediaCodec.BUFFER_FLAG_END_OF_STREAM;
             decodedBufferInfo.size = 0;            
             notifyOutputBufferUpdate(decodedData, decodedBufferInfo);
        	 mIsEnd = true;
        	 mInputQueue.clear();
        }
    }
    
    private void startDecode() {    	
        while (!mIsEnd) {         	
            if (mInputQueue.isEmpty()) {
                Thread.yield();
                SystemClock.sleep(20);
               // Log.v(TAG, "filter out is empty");
            } else if(mOutputListener.isEncoderBufferUpperLimit(80)){
            	Thread.yield();
                SystemClock.sleep(10);
            	synchronized(mLock){
            	    decodeData();
            	}
            }  else{        
            	synchronized(mLock){
            	    decodeData();
            	}
            }           	 
        }
    }
    
    private class  DecoderTask extends Thread {
    	public void run() {            
    		startDecode();            
        }
    };       
   
    @Override
    public boolean isBufferUpperLimit(int bufferCount){
    	boolean isUpperLimit = false;
    	if(mDecodWaitFrameCount >= (mDecodFinishFrameCount + bufferCount)){
    		isUpperLimit = true;
		}
    	return isUpperLimit;
    }
    
	@Override
	public void onDecoderDataCopy(ByteBuffer previewData, BufferInfo bufferInfo) {		
		 byte[] copyOfDecodedBytes = new byte[bufferInfo.size];
		 previewData.get(copyOfDecodedBytes);  
		 ByteBuffer decodedData = ByteBuffer.wrap(copyOfDecodedBytes);
	     fillInputBufferAsync(decodedData,bufferInfo);    	
	}
    
    public void start() {
	        // TODO Auto-generated method stub	    	
	    if (mDecoder != null) {
            mDecoder.start();
	    }
	    new DecoderTask().start();           
    } 
	
	public void cancel() {         
		mIsEnd = true;
         if(mDecoder != null){
        	 synchronized(mLock){
        	     mDecoder.stop();
        	 }
         }
         mInputQueue.clear();
	}

	public void release() {
        Log.d(TAG, "releaseDecoder");
        mIsEnd = true;
        if(mDecoder != null){
        	synchronized(mLock){ 
        		try{
        	        mDecoder.stop();        	       
        		}catch (IllegalStateException e){
        			
        		}
        		mDecoder.release();        	   
     	        mDecoder = null;
        	}        
        }
        mVideoCrop = null;
        mInputQueue.clear();
    }
}
