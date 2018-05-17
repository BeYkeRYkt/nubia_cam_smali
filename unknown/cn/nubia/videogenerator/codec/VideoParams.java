package cn.nubia.videogenerator.codec;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import android.os.Build;
import android.util.Log;

@TargetApi(Build.VERSION_CODES.JELLY_BEAN_MR2)
public class VideoParams {
    public static final String MIME_TYPE_AVC = "video/avc";
    
    private String mMimeType;
    private boolean mIsMtkHigh;
    private boolean mIsMtkSlow;
    private int mFps;
    private int mWidth;
    private int mHeight;
    private int mColorFormat;
    private int mBitRate;
    private int mIFrameInter;
    
    public VideoParams(){
            initDefault();
    }
    
    public VideoParams( String mimeType, int bitRate, int colorFormat){
        this.mMimeType = mimeType;
        this.mBitRate = bitRate;
        this.mColorFormat = colorFormat;
    }
    
    private void initDefault(){
        //TODO:config default values
        this.mMimeType = MIME_TYPE_AVC;
        this.mColorFormat = MediaCodecInfo.CodecCapabilities.COLOR_FormatSurface;
        this.mWidth = 640;
        this.mHeight = 480;
        this.mBitRate = 4 * 1024 * 1024;
        this.mFps = 5;
        this.mIFrameInter = 1;
        this.mIsMtkHigh = false;
        this.mIsMtkSlow = false;
    }
    
    public void setMtkHighFlag(boolean isMtkHigh){
    	this.mIsMtkHigh = isMtkHigh;
    }
    
    public void setMtkSlowFlag(boolean isMtkSlow){
    	this.mIsMtkSlow = isMtkSlow;
    }
    
    public boolean getMtkHighFlag(){
    	return mIsMtkHigh;
    }
    
    public boolean getMtkSlowFlag(){
    	return mIsMtkSlow;
    }
    public void setFps(int fps){
        this.mFps = fps;
    }
    
    public int getFps() {
        return mFps;
    }

    public void setBitRate(int bitRate) {
        this.mBitRate = bitRate;
    }

    public int getBitRate() {
        return mBitRate;
    }
    
    public int getIFrameInter() {
        return mIFrameInter;
    }

    public void setIFrameInter(int IFrameInterval) {
        this.mIFrameInter = IFrameInterval;
    }
    
    public void setMimeType(String mime) {
        mMimeType = mime;
    }

    public String getMimeType() {
        return mMimeType;
    }

    public int getWidth() {
        return mWidth;
    }

    public int getHeight() {
        return mHeight;
    }
    
    public void setSize(int width, int height){
        Log.i("woo", "setSize width: " + width + " height: " + height);
        this.mWidth = width;
        this.mHeight = height;
    }
    
    public int getColorFormat() {
        return mColorFormat;
    }

    public void setColorFormat(int colorFormat) {
        this.mColorFormat = colorFormat;
    }

    public void initByMediaFormat(MediaFormat format){
        this.mMimeType = format.getString(MediaFormat.KEY_MIME);
//        this.mColorFormat = format.getInteger(MediaFormat.KEY_COLOR_FORMAT);
        this.mWidth = format.getInteger(MediaFormat.KEY_WIDTH);
        this.mHeight = format.getInteger(MediaFormat.KEY_HEIGHT);
//        this.mBitRate = format.getInteger(MediaFormat.KEY_BIT_RATE, 10*1024);
//        this.mFps = format.getInteger(MediaFormat.KEY_FRAME_RATE);
//        this.mIFrameInter = format.getInteger(MediaFormat.KEY_I_FRAME_INTERVAL);
    }

    public MediaFormat getMediaFormat(){
        MediaFormat format = new MediaFormat();
        format.setString(MediaFormat.KEY_MIME, mMimeType);
        format.setInteger(MediaFormat.KEY_WIDTH, mWidth);
        format.setInteger(MediaFormat.KEY_STRIDE, mWidth);
        format.setInteger(MediaFormat.KEY_HEIGHT, mHeight);
        format.setInteger(MediaFormat.KEY_SLICE_HEIGHT, mHeight);
        Log.d("woo", "getMediaFormat   mWidth: " + mWidth + " mHeight: " + mHeight + " colorFormat: " + mColorFormat);
        format.setInteger(MediaFormat.KEY_BIT_RATE, mBitRate);
        format.setInteger(MediaFormat.KEY_FRAME_RATE, mFps);
        format.setInteger(MediaFormat.KEY_COLOR_FORMAT, mColorFormat);
        
        format.setInteger(MediaFormat.KEY_I_FRAME_INTERVAL, mIFrameInter); 
        
        return format;
    }
}
