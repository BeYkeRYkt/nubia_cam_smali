package com.nubia.camera.common.Native;

import java.nio.ByteBuffer;

public class PrettyWaterMarkEffect {
    public static native void nativeAddWaterMark(ByteBuffer byteBuffer, int i, int i2, int i3, int i4);

    public static native void nativeApplyPrettyEffect(ByteBuffer byteBuffer, int i, int i2, int i3, int i4, int i5);

    static {
        System.loadLibrary("PrettyWaterMark");
    }

    public static void btK(BufferCell bufferCell, int i, int i2, int i3, int i4, int i5) {
        nativeApplyPrettyEffect(bufferCell.btE(), i, i2, i3, i4, i5);
    }

    public static void btL(BufferCell bufferCell, int i, int i2, int i3, int i4) {
        nativeAddWaterMark(bufferCell.btE(), i, i2, i3, i4);
    }
}
