package cn.nubia.videogenerator.media;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;

import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.util.Log;
import cn.nubia.videogenerator.codec.Encoder;
import cn.nubia.videogenerator.codec.ImageRender;
import cn.nubia.videogenerator.codec.VideoParams;
import cn.nubia.videogenerator.common.Generator;
import cn.nubia.videogenerator.common.OutputListener;
import cn.nubia.videogenerator.writer.MuxerWriter;

public class SimpleVideoGenerator implements Generator,  OutputListener{

    private MuxerWriter mWriter;
    private Encoder mEncoder;
    private String mOutputPath;
    private long mMaxDuration;
    private int mMuxTracks = 0;
    private OnCompleteListener mOnCompleteListener;
    private OnProgressListener mOnProgressListener;
    private int mDegrees = 0;
    private ImageRender mRender = null;
    private ArrayList<MediaFormat> mFormats = new ArrayList<MediaFormat>();
    
    public SimpleVideoGenerator(){
        
    }    
    
    public void setOutputPath(String outputPath) throws IOException {
        // TODO Auto-generated method stub
        mOutputPath = outputPath;
        mWriter = new MuxerWriter(mOutputPath, MediaMuxer.OutputFormat.MUXER_OUTPUT_MPEG_4);
    }    
  
    public void export() {
        // TODO Auto-generated method stub
        if(mWriter != null){
            mWriter.setMuxTracks(mMuxTracks);
            mWriter.setOrientation(mDegrees);
            if(mMaxDuration > 0){
                mWriter.setMaxDuration(mMaxDuration);
            }
            mWriter.setOnCompleteListener(mOnCompleteListener);
            mWriter.setOnProgressListener(mOnProgressListener);
        }
        if(mEncoder != null){
        	mEncoder.setOutputListener(this);
        	mEncoder.start();
        }
        
        if(mRender != null){
        	mRender.startRender();
        }
    }
    
    public void cancel() throws IOException {
    	if(mRender != null){
        	mRender.stop();
        	mRender = null;
        }
    	if(mEncoder != null){
    		mEncoder.cancel();    		
    		mEncoder = null;
        }
        if(mWriter != null){
            mWriter.stop();
            mWriter.delete();
            mWriter = null;
        }
    }
    
    public void setOrientation(int degrees){
        mDegrees  = degrees;
    }
    
    public void stop() throws IOException {
    	if(mRender != null){
        	mRender.stop();
        	mRender = null;
        }
        if(mEncoder != null){        	
        	mEncoder.release();
        	mEncoder = null;
        }
        if(mWriter != null){
            mWriter.stop();
            mWriter = null;
        }
    }
    
    public void setVideoParams(VideoParams params) {
        if(mEncoder == null){
        	try {
				mEncoder =  new Encoder(params);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
            mMuxTracks++;
        }       
    }    
    
    public void setVideoRender(ImageRender render) {
        // TODO Auto-generated method stub
    	mRender = render;
        if(mEncoder != null){
        	mEncoder.setRender(render);
        }
    }
    
    public void setOnCompleteListener(OnCompleteListener listener) {
        mOnCompleteListener = listener;
    }
   
    public void setOnProgressListener(OnProgressListener listener) {
        mOnProgressListener = listener;
    }
    
    public void setMaxDuration(long duration){
        mMaxDuration = duration;
    }

	@Override
	public void onOutputBufferUpdate(ByteBuffer outputBuffer,
			BufferInfo bufferInfo, String mimeType) {
		// TODO Auto-generated method stub
		if(mWriter != null && mWriter.isMuxerStarted()){			
		    mWriter.onOutputBufferUpdate(outputBuffer, bufferInfo, mimeType);				
		}
	}

	@Override
	public void onOutputFormatChanged(MediaFormat mediaFormat) {
		// TODO Auto-generated method stub
		if(mFormats.isEmpty()){
            mFormats = new ArrayList<MediaFormat>(1);
        }
       
        if(!mFormats.contains(mediaFormat) && mWriter != null){
            mFormats.add(mediaFormat);           
            mWriter.onOutputFormatChanged(mediaFormat);            
        }
	}

	@Override
	public void onOutputComplete(String mimeType) {
		// TODO Auto-generated method stub
		if(mWriter != null){
    	    mWriter.onOutputComplete(mimeType);
    	}
	}

	@Override
	public boolean isMuxerStarted() {
		// TODO Auto-generated method stub
		return mWriter.isMuxerStarted();
	}

	@Override
	public boolean isEncoderBufferUpperLimit(int bufferCount) {
		// TODO Auto-generated method stub
		return false;
	}
	

}
