package com.android.clone;

import android.graphics.Bitmap;

public class CloneJni {
    private static native int CloneCameraAutoCompose(Bitmap bitmap);

    private static native int CloneCameraCleanData();

    private static native byte[] CloneCameraComposeConfirmByte();

    private static native int CloneCameraEditGetMaskPicture(int i, Bitmap bitmap);

    private static native int CloneCameraEditGetPicture(int i, Bitmap bitmap);

    private static native int CloneCameraEditPreview(Bitmap bitmap);

    private static native int CloneCameraErase(int i, Bitmap bitmap);

    private static native int CloneCameraPaintContour(int i, Bitmap bitmap, Bitmap bitmap2);

    private static native int CloneCameraSaveRGBAData(int i, int i2, int i3, int i4, int i5, byte[] bArr, int i6, Bitmap bitmap);

    static {
        System.loadLibrary("nubia_clone");
    }

    public static int aAb(int i, int i2, int i3, int i4, int i5, byte[] bArr, int i6, Bitmap bitmap) {
        return CloneCameraSaveRGBAData(i, i2, i3, i4, i5, bArr, i6, bitmap);
    }

    public static int aAc(Bitmap bitmap) {
        return CloneCameraAutoCompose(bitmap);
    }

    public static int aAh(int i, Bitmap bitmap) {
        return CloneCameraEditGetPicture(i, bitmap);
    }

    public static int aAi(int i, Bitmap bitmap) {
        return CloneCameraEditGetMaskPicture(i, bitmap);
    }

    public static int aAd(int i, Bitmap bitmap, Bitmap bitmap2) {
        return CloneCameraPaintContour(i, bitmap, bitmap2);
    }

    public static int aAf(Bitmap bitmap) {
        return CloneCameraEditPreview(bitmap);
    }

    public static byte[] aAg() {
        return CloneCameraComposeConfirmByte();
    }

    public static int aAj() {
        return CloneCameraCleanData();
    }

    public static int aAe(int i, Bitmap bitmap) {
        return CloneCameraErase(i, bitmap);
    }
}
