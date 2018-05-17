package com.nubia.camera.common.Native;

import java.nio.ByteBuffer;

public class BufferCell {
    ByteBuffer bcx;
    private Type bcy;

    public enum Type {
        BYTES,
        YUV420SP,
        RGB888,
        RGBA8888
    }

    private static native ByteBuffer createBuffer(int i);

    private static native byte[] getDataFromNative(ByteBuffer byteBuffer);

    private static native int[] getIntArrayFromNative(ByteBuffer byteBuffer);

    private static native void putDataToNative(byte[] bArr, ByteBuffer byteBuffer, int i);

    private static native void releaseBuffer(ByteBuffer byteBuffer);

    static {
        System.loadLibrary("Buffer");
    }

    public BufferCell(byte[] bArr) {
        this(bArr.length);
        btF(bArr);
    }

    public BufferCell(int i) {
        this.bcx = null;
        this.bcy = Type.BYTES;
        this.bcx = createBuffer(i);
    }

    public BufferCell(ByteBuffer byteBuffer) {
        this.bcx = null;
        this.bcy = Type.BYTES;
        this.bcx = byteBuffer;
    }

    public void release() {
        if (this.bcx != null) {
            releaseBuffer(this.bcx);
            this.bcx = null;
        }
    }

    public void btF(byte[] bArr) {
        if (this.bcx != null) {
            putDataToNative(bArr, this.bcx, bArr.length);
        }
    }

    public byte[] btD() {
        if (this.bcx == null) {
            return null;
        }
        return getDataFromNative(this.bcx);
    }

    public ByteBuffer btE() {
        return this.bcx;
    }

    public int[] btC() {
        if (this.bcx == null) {
            return null;
        }
        return getIntArrayFromNative(this.bcx);
    }

    protected void finalize() {
        release();
        super.finalize();
    }
}
