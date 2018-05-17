package com.android.common.image3d;

import android.media.MediaCodec.BufferInfo;
import android.util.Log;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.util.ArrayList;

public class C0574d {
    private ArrayList ES = null;
    private int ET = 0;
    private RandomAccessFile EU = null;

    public C0574d(String str) {
        this.EU = new RandomAccessFile(str, "rw");
        this.ES = new ArrayList();
    }

    public void Db(ByteBuffer byteBuffer, BufferInfo bufferInfo) {
        long filePointer = this.EU.getFilePointer();
        byte[] bArr = new byte[bufferInfo.size];
        byteBuffer.get(bArr, bufferInfo.offset, bufferInfo.size);
        this.EU.write(bArr, bufferInfo.offset, bufferInfo.size);
        this.ES.add(new C0575e(((int) bufferInfo.presentationTimeUs) / 33000, filePointer, bufferInfo.size));
        this.ET++;
        Log.i("Image3DFileMuxer", "index:" + bufferInfo.presentationTimeUs + ",offset:" + filePointer + ",size:" + bufferInfo.size + ",mDataList.size:" + this.ES.size());
    }

    public int close() {
        Dc();
        Log.v("aizhao", "file.length:" + this.EU.length() + "mDataNum:" + this.ET);
        this.EU.close();
        return this.ET;
    }

    private void Dc() {
        for (int i = 0; i < this.ET; i++) {
            C0575e c0575e = (C0575e) this.ES.get(i);
            this.EU.writeInt(c0575e.EV);
            this.EU.writeLong(c0575e.EW);
            this.EU.writeInt(c0575e.EX);
        }
    }
}
