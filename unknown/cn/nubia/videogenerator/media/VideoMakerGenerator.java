package cn.nubia.videogenerator.media;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import android.media.MediaMuxer;
import android.os.Build;
import android.util.Log;
import cn.nubia.videogenerator.codec.AudioParams;
import cn.nubia.videogenerator.codec.CodecRender;
import cn.nubia.videogenerator.codec.Decoder;
import cn.nubia.videogenerator.codec.Encoder;
import cn.nubia.videogenerator.codec.ImageRender;
import cn.nubia.videogenerator.codec.VideoParams;
import cn.nubia.videogenerator.common.Generator;
import cn.nubia.videogenerator.common.OutputListener;
import cn.nubia.videogenerator.local.AudioLocalSource;
import cn.nubia.videogenerator.writer.MuxerWriter;

public class VideoMakerGenerator implements Generator,  OutputListener{
	protected static final String TAG = "VideoMakerGenerator";
    private MuxerWriter mWriter = null;     
    private Encoder mVideoEncoder = null;
    private Encoder mAudioEncoder = null;
    private Decoder mAudioDecoder = null;
    private AudioLocalSource mAudioLocalSource = null;
    private String mOutputPath = null;
    private long mMaxDuration;
    private int mMuxTracks = 0;
    private OnCompleteListener mOnCompleteListener;
    private OnProgressListener mOnProgressListener;
    private int mDegrees = 0;
    private long mVideoDuration = 0;
    private ArrayList<MediaFormat> mFormats = new ArrayList<MediaFormat>();
    private Thread mVideoEncoderStart = null;
    private Thread mAudioEncoderStart = null;
    private String mAudioPath = null;    
    private ImageRender mRender = null;    
    
    public VideoMakerGenerator(long videoDuration){
    	mVideoDuration = videoDuration;    	
    }    
    
    public void setOutputPath(String outputPath) throws IOException {
        // TODO Auto-generated method stub
        mOutputPath = outputPath;
        mWriter = new MuxerWriter(mOutputPath, MediaMuxer.OutputFormat.MUXER_OUTPUT_MPEG_4);
    }
    
    public void setAudioPath(String audioPath){
    	mAudioPath = audioPath;
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
        if(mVideoEncoder != null){
        	mVideoEncoder.setOutputListener(this);           
        }
        if(mAudioEncoder != null){        	
        	mAudioEncoder.setOutputListener(this);        	
        }
        mVideoEncoderStart = new VideoEncoderStart();
        mVideoEncoderStart.start();    
        
        mAudioEncoderStart = new AudioEncoderStart();
        mAudioEncoderStart.start();       
    }
    
    private class VideoEncoderStart extends Thread{
		@Override
		public void run(){			
			if(mVideoEncoder != null){	            
				mVideoEncoder.start();
	        }	
			
			if(mRender != null){
				mRender.startRender();
			}
		}
    }
    
    private class AudioEncoderStart extends Thread{
		@Override
		public void run(){
			 if(mAudioEncoder != null){		        	
		        	mAudioEncoder.start();
		        }
		        if(mAudioDecoder != null){
		        	mAudioDecoder.start();
		        }
		        if(mAudioLocalSource != null){
		        	mAudioLocalSource.start();
		        }		       
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
    	if(mAudioLocalSource != null){
        	mAudioLocalSource.stop();
        	mAudioLocalSource = null;
        }
    	
    	if(mAudioDecoder != null){        	
        	mAudioDecoder.release();
        	mAudioDecoder = null;
        }   
    	
    	if(mAudioEncoder != null){       	        	
        	mAudioEncoder.release();
        	mAudioEncoder = null;
        }  
    	
        if(mVideoEncoder != null){         
        	mVideoEncoder.release();
        	mVideoEncoder = null;
        }                                               
        
        if(mWriter != null){
            mWriter.stop();
            mWriter = null;
        }
    }

   
    public void setVideoParams(VideoParams params) {
        if(mVideoEncoder == null){
            try {
            	mVideoEncoder =  new Encoder(params);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				mVideoEncoder = null;
				e.printStackTrace();
			}
            mMuxTracks++;
        }       
    }

    @TargetApi(Build.VERSION_CODES.JELLY_BEAN)
	@SuppressLint("NewApi")
	
    public void setAudioParams(AudioParams params) {
        // TODO Auto-generated method stub   
    	try{
    	    if(mAudioPath != null){
    		    mAudioLocalSource = new AudioLocalSource(mAudioPath,mVideoDuration); 
    	    }
    		if(mAudioLocalSource != null){
                if( mAudioLocalSource.isNeedToDecoder()){
        	        mAudioDecoder =  new Decoder(mAudioLocalSource.getFormat());          
    		        mAudioLocalSource.setDataListener(mAudioDecoder,this);        	
    		        params.setaudioSampleRate(mAudioLocalSource.getFormat().getInteger(MediaFormat.KEY_SAMPLE_RATE));
    		        params.setChannelCount(mAudioLocalSource.getFormat().getInteger(MediaFormat.KEY_CHANNEL_COUNT));    		        
    		        mAudioEncoder =  new Encoder(params);    		   
    		    }else{
    			    mAudioLocalSource.setDataListener(null,this); 
    		    }                
    		}
    		mMuxTracks++;
    		
    	}catch (IOException e) {
			// TODO Auto-generated catch block
    		releaseAudio();
			e.printStackTrace();
		}catch (IllegalArgumentException e) {		// TODO Auto-generated catch block
			releaseAudio();
			e.printStackTrace();
		}    	
    }
    
    private void releaseAudio(){
    	 if(mAudioLocalSource != null){
         	mAudioLocalSource.stop();
         	mAudioLocalSource = null;
         }
         
         if(mAudioDecoder != null){        	
         	mAudioDecoder.release();
         	mAudioDecoder = null;
         }   
         
         if(mAudioEncoder != null){       	        	
         	mAudioEncoder.release();
         	mAudioEncoder = null;
         }    
    }
    
    public void setVideoRender(ImageRender render) {
        // TODO Auto-generated method stub
    	 mRender = render;
        if(mVideoEncoder != null){
        	mVideoEncoder.setRender(render);
        }
    }
  
    public void setAudioDecoderRender(CodecRender render) {
        // TODO Auto-generated method stub
        if(mAudioDecoder != null && render != null){
        	render.setDecoder(mAudioDecoder);
        }
    }
    public void setAudioEncoderRender(CodecRender render) {
        // TODO Auto-generated method stub
        if(mAudioEncoder != null && render != null){
        	mAudioEncoder.setRender(render);
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
   
    @SuppressLint("NewApi")
	@Override
    public void onOutputFormatChanged(MediaFormat mediaFormat) {
        // TODO Auto-generated method stub
        if(mFormats.isEmpty()){
            mFormats = new ArrayList<MediaFormat>(mMuxTracks);
        }
        Log.i(TAG, " onOutputFormatChanged  format: " + mediaFormat.toString());
        if(!mFormats.contains(mediaFormat) && mWriter != null){
            mFormats.add(mediaFormat);           
            mWriter.onOutputFormatChanged(mediaFormat);            
        }
    }

    @Override
    public void onOutputComplete(String mimeType) {  
    	if(mWriter != null){
    	    mWriter.onOutputComplete(mimeType);
    	}
    }   

	@Override
	public  void onOutputBufferUpdate(ByteBuffer outputBuffer,BufferInfo bufferInfo, String mimeType) {		
		if(mWriter != null){			
		    mWriter.onOutputBufferUpdate(outputBuffer, bufferInfo, mimeType);				
		}
	}	
	
	@Override
    public boolean isMuxerStarted() {
        return mWriter.isMuxerStarted();
    }

	@Override
	public boolean isEncoderBufferUpperLimit(int bufferCount) {
		// TODO Auto-generated method stub
		return false;
	}
}
