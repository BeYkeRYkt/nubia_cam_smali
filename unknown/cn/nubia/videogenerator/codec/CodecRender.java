package cn.nubia.videogenerator.codec;

import java.nio.ByteBuffer;

import android.annotation.SuppressLint;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import android.view.Surface;
import cn.nubia.videogenerator.common.FrameFilter;
import cn.nubia.videogenerator.common.InputBufferFiller;
import cn.nubia.videogenerator.common.OutputListener;


@SuppressLint("NewApi")
public class CodecRender implements  OutputListener{   
    private static final String TAG = "Render";          
    protected InputBufferFiller mFiller;
    public CodecRender(){
    	
    }
    
    public void setFiller(InputBufferFiller filler){
        this.mFiller = filler;
    } 
    
    public void setDecoder(DataOutput dataOutput){
    	dataOutput.setOutputListener(this);
    }      
  
	@Override
	public void onOutputBufferUpdate(ByteBuffer outputBuffer,
			BufferInfo bufferInfo, String mimeType) {
		// TODO Auto-generated method stub		
		if (mFiller != null) {
            mFiller.fillInputBufferAsync(outputBuffer,bufferInfo);
        }
	}

	@Override
	public void onOutputFormatChanged(MediaFormat mediaFormat) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onOutputComplete(String mimeType) {
		// TODO Auto-generated method stub		
	}	
	
	@Override
	public boolean isMuxerStarted() {
	    return false;
	}
	
	@Override
    public boolean isEncoderBufferUpperLimit(int bufferCount){    	
    	return mFiller.isBufferUpperLimit(bufferCount);
    }
}
