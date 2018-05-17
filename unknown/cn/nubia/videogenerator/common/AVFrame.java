package cn.nubia.videogenerator.common;

import android.media.MediaCodec.BufferInfo;

public class AVFrame {
    public static final int MEDIA_TYPE_VIDEO = 1;
    public static final int MEDIA_TYPE_AUDIO = 2;
    public static final int MEDIA_TYPE_SUBTILE = 4;
    public BufferInfo info = null;
    public byte[] data = null;
    public boolean isBeginOfStream;
    public boolean isEndOfStream;
    public int frameType = -1;
    public String mimeType = null;
    public AVFrame() {
        info = null;
        data = null;
        mimeType = null;
        frameType = -1;
    }
    
    public AVFrame(byte[] buffer, BufferInfo info,int type) {
        this.info = info;
        data = buffer;
        frameType = type;
    }
    
}
