package com.android.normal.p040a;

import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import cn.nubia.videogenerator.p007b.C0060d;
import com.p010a.C0090a;
import java.nio.ByteBuffer;

final class C1000j implements C0060d {
    final /* synthetic */ C0998h aBT;

    C1000j(C0998h c0998h) {
        this.aBT = c0998h;
    }

    public void aRN(ByteBuffer byteBuffer, BufferInfo bufferInfo, String str) {
        if (this.aBT.aBK != null) {
            this.aBT.aBK.bPi(byteBuffer, bufferInfo, str);
        }
    }

    public void aRP(MediaFormat mediaFormat) {
        C0090a.bvo(C0991a.TAG, "fmt:" + mediaFormat);
        if (!this.aBT.aBF.contains(mediaFormat) && this.aBT.aBK != null) {
            this.aBT.aBF.add(mediaFormat);
            this.aBT.aBK.bPj(mediaFormat);
        }
    }

    public void aRO(String str) {
        if (this.aBT.aBK != null) {
            C0090a.bvo(C0991a.TAG, "Writer oc: " + str);
            this.aBT.aBK.bPp(str);
        }
    }

    public boolean aRM() {
        return this.aBT.aBK.bPk();
    }

    public boolean aRL(int i) {
        return false;
    }
}
