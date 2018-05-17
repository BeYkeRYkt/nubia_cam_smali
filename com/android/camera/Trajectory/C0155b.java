package com.android.camera.Trajectory;

import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;

class C0155b implements PreviewCallback {
    final /* synthetic */ NubiaTrajectory aHA;

    private C0155b(NubiaTrajectory nubiaTrajectory) {
        this.aHA = nubiaTrajectory;
    }

    public void onPreviewFrame(byte[] bArr, Camera camera) {
        if (this.aHA.aHp && System.currentTimeMillis() - this.aHA.mStartTime > ((long) this.aHA.aHw)) {
            this.aHA.mStartTime = System.currentTimeMillis();
            this.aHA.aWV(bArr);
        }
        if (this.aHA.aHp) {
            this.aHA.aHl.Ts().abI(this.aHA.aHt, this.aHA.aHl.SQ());
        }
    }
}
