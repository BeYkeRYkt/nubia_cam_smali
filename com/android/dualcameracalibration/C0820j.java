package com.android.dualcameracalibration;

import com.p010a.C0090a;

final class C0820j implements Runnable {
    final /* synthetic */ C0815e awy;

    C0820j(C0815e c0815e) {
        this.awy = c0815e;
    }

    public void run() {
        C0090a.m1e("DualCameraCalibrationCapture", "getDualCameraControl().restartPreview()");
        this.awy.awc.avV.VV(this.awy.awc.avV.ST());
    }
}
