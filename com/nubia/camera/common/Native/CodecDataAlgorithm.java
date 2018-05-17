package com.nubia.camera.common.Native;

import java.nio.ByteBuffer;

public class CodecDataAlgorithm {
    static native byte[] ARGB2JPEG(ByteBuffer byteBuffer, int i, int i2, int i3);

    static native ByteBuffer JPEG2ARGB(ByteBuffer byteBuffer, int[] iArr);

    static {
        System.loadLibrary("Algorithm");
    }

    public static BufferCell btI(BufferCell bufferCell, int[] iArr) {
        return new BufferCell(JPEG2ARGB(bufferCell.bcx, iArr));
    }

    public static byte[] btH(BufferCell bufferCell, int i, int i2, int i3) {
        return ARGB2JPEG(bufferCell.bcx, i, i2, i3);
    }
}
