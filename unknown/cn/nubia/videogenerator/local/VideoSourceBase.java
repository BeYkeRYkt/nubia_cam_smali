package cn.nubia.videogenerator.local;

import java.io.IOException;

import android.media.MediaExtractor;
import android.media.MediaFormat;
import cn.nubia.videogenerator.common.CodecListener;
import cn.nubia.videogenerator.common.DecoderDataListener;
import cn.nubia.videogenerator.common.OutputListener;


public abstract class VideoSourceBase {
	protected static final int TRIM_MODE_INNER = 0;
	protected static final int TRIM_MODE_OUTER = 1;
	protected MediaFormat mFormat;
	protected OutputListener mListener;
	protected String mPath;	
	protected boolean mIsReading = true;
	protected boolean mExistVideoTail = false;
	protected boolean mExistVideoHead = false;
	protected boolean mPreciseTrim = true;
	protected String mMimetype;
	protected long mStartMs = -1;
	protected long mEndMs = -1;
	protected long mVideoDuration = 0;
	protected long mVideoPts = 0;  
	protected int mFps = 0;
	protected int mTrimType = TRIM_MODE_INNER;
	protected long IFramePts = 0;	
	protected MediaExtractor mExtractor;
	protected DecoderDataListener mDecoderDataListener;
	protected CodecListener mCodecListener; 
    
	public void setDataListener(DecoderDataListener datalsn,OutputListener outlsn,CodecListener codeclsn){
    	mDecoderDataListener = datalsn;
        mListener = outlsn;
        mCodecListener = codeclsn;
    }
    
    public MediaFormat getFormat(){
        return mFormat;
    }

    public void setFirstPts(long pts){    	
            mVideoPts = pts;    	
    }
    
    public void setFps(int fps){    	
        mFps = fps;    	
    }
    
    public void setPreciseTrim(boolean preciseTrim){    	
    	mPreciseTrim = preciseTrim;    	
    }        
    
    public void setTrimType(int trimtype){
    	mTrimType = trimtype;
    }
    public void setVideoTrimParmas(long startMs,long endMs,long videoDuration){
    	mStartMs = startMs * 1000L;
        mEndMs = endMs * 1000L;
        mVideoDuration = videoDuration * 1000;
    }
    
    public void setVideoHeadFlag(boolean existVideoHead) {
		// TODO Auto-generated method stub
    	mExistVideoHead = existVideoHead;
	}	
    
    public void setVideoTailFlag(boolean existVideoTail) {
		// TODO Auto-generated method stub
    	mExistVideoTail = existVideoTail;
	}	
    public abstract void start() throws IOException;
    public abstract void stop();
}
