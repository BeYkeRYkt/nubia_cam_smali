package com.android.captureCamera;

import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import com.p010a.C0090a;

final class C0234g implements AutoFocusCallback {
    final /* synthetic */ CaptureCameraService aSM;

    C0234g(CaptureCameraService captureCameraService) {
        this.aSM = captureCameraService;
    }

    public void onAutoFocus(boolean z, Camera camera) {
        C0090a.bvo("CaptureCameraService", "onAutoFocus flag = " + z);
        this.aSM.biH();
    }
}
