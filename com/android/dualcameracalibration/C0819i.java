package com.android.dualcameracalibration;

import com.p010a.C0090a;

final class C0819i implements Runnable {
    final /* synthetic */ C0814d awx;

    C0819i(C0814d c0814d) {
        this.awx = c0814d;
    }

    public void run() {
        C0090a.m1e("DualCameraCalibrationCapture", "getDualCameraControl().restartPreview()");
        this.awx.awb.avV.VV(this.awx.awb.avV.ST());
    }
}
