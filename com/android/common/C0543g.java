package com.android.common;

import android.hardware.Camera;
import android.hardware.Camera.ErrorCallback;
import com.p010a.C0090a;

public class C0543g implements ErrorCallback {
    public void onError(int i, Camera camera) {
        C0090a.m1e("CameraErrorCallback", "Got camera error callback. error=" + i);
        if (i == 100) {
            throw new RuntimeException("Media server died.");
        }
    }
}
