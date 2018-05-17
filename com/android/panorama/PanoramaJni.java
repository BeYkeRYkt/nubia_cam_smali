package com.android.panorama;

import java.nio.ByteBuffer;

public class PanoramaJni {
    public static native ByteBuffer allocateBuffer(int i);

    public static native void freeBuffer(ByteBuffer byteBuffer);

    public static native int yuv2rgb(byte[] bArr, int i, int i2, int i3, int[] iArr, int i4, int i5, int i6);

    static {
        System.loadLibrary("panoramahelper");
    }
}
