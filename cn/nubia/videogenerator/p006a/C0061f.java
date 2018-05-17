package cn.nubia.videogenerator.p006a;

import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import cn.nubia.videogenerator.p007b.C0054e;
import cn.nubia.videogenerator.p007b.C0060d;
import java.nio.ByteBuffer;

public class C0061f implements C0060d {
    protected C0054e brg;

    public void bOd(C0054e c0054e) {
        this.brg = c0054e;
    }

    public void bOe(C0056g c0056g) {
        c0056g.bNI(this);
    }

    public void aRN(ByteBuffer byteBuffer, BufferInfo bufferInfo, String str) {
        if (this.brg != null) {
            this.brg.bNt(byteBuffer, bufferInfo);
        }
    }

    public void aRP(MediaFormat mediaFormat) {
    }

    public void aRO(String str) {
    }

    public boolean aRM() {
        return false;
    }

    public boolean aRL(int i) {
        return this.brg.bNr(i);
    }
}
