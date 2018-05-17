package com.nubia.camera.common.Native;

import java.nio.ByteBuffer;

public class EffectAlgorithm {
    static native void Effect(ByteBuffer byteBuffer, int i, int i2, String str);

    static {
        System.loadLibrary("Algorithm");
    }

    public static void btJ(BufferCell bufferCell, int i, int i2, String str) {
        Effect(bufferCell.bcx, i, i2, str);
    }
}
