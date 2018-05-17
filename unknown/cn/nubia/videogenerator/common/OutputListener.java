package cn.nubia.videogenerator.common;

import java.nio.ByteBuffer;

import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;

public interface OutputListener {
    public void onOutputBufferUpdate(ByteBuffer outputBuffer, BufferInfo bufferInfo, String mimeType);
    public void onOutputFormatChanged(MediaFormat mediaFormat);
    public void onOutputComplete(String mimeType);
    public boolean isMuxerStarted();
    public boolean isEncoderBufferUpperLimit(int bufferCount);
}
