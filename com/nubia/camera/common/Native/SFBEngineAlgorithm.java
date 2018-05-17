package com.nubia.camera.common.Native;

import java.nio.ByteBuffer;

public class SFBEngineAlgorithm {
    static native void SFBProcess(ByteBuffer byteBuffer, int i, int i2, int i3, int i4, int i5);

    static {
        System.loadLibrary("Algorithm");
    }

    public static void btG(BufferCell bufferCell, int i, int i2, int i3, int i4, int i5) {
        SFBProcess(bufferCell.bcx, i, i2, i3, i4, i5);
    }
}
