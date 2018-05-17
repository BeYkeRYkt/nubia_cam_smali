package com.nubia.camera.common.Native;

import java.nio.ByteBuffer;

public class YUVAlgorithm {
    static native ByteBuffer ARGB2YUV(ByteBuffer byteBuffer, int i, int i2);

    static native ByteBuffer YUV2ARGB(ByteBuffer byteBuffer, int i, int i2);

    static native ByteBuffer YVU2ARGB(ByteBuffer byteBuffer, int i, int i2);

    static native void rotateYUV(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, int i, int i2, int i3);

    static {
        System.loadLibrary("Algorithm");
    }

    public static BufferCell btO(BufferCell bufferCell, int i, int i2) {
        return new BufferCell(YUV2ARGB(bufferCell.bcx, i, i2));
    }

    public static BufferCell btP(BufferCell bufferCell, int i, int i2) {
        return new BufferCell(ARGB2YUV(bufferCell.bcx, i, i2));
    }

    public static BufferCell btN(BufferCell bufferCell, int i, int i2) {
        return new BufferCell(YVU2ARGB(bufferCell.bcx, i, i2));
    }

    public static void btM(BufferCell bufferCell, BufferCell bufferCell2, int i, int i2, int i3) {
        rotateYUV(bufferCell.bcx, bufferCell2.bcx, i, i2, i3);
    }
}
