package com.android.pretty;

import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;

public class C1089v implements PictureCallback {
    private C1084p avi = null;

    public C1089v(C1084p c1084p) {
        this.avi = c1084p;
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        this.avi.aIV(bArr);
    }
}
