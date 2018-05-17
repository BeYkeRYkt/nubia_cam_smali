package com.nubia.camera.common.Native;

import android.graphics.Bitmap;

public class HistUtil {
    public static native int getMaxHis(Bitmap bitmap, int[] iArr, int i, int i2);

    static {
        System.loadLibrary("histutil");
    }
}
