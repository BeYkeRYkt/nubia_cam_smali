package cn.nubia.videogenerator.common;

import java.nio.ByteBuffer;

import android.media.MediaCodec;

public interface InputBufferFiller {
    public void fillInputBuffer(boolean isEnd);    
    public void fillInputBufferAsync(ByteBuffer buffer,
            MediaCodec.BufferInfo bufferInfo);
    public boolean isBufferUpperLimit(int bufferCount);
}
