package cn.nubia.videogenerator.p007b;

import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import java.nio.ByteBuffer;

public interface C0060d {
    boolean aRL(int i);

    boolean aRM();

    void aRN(ByteBuffer byteBuffer, BufferInfo bufferInfo, String str);

    void aRO(String str);

    void aRP(MediaFormat mediaFormat);
}
