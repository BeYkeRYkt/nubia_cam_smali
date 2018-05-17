package com.android.dualcameracalibration;

import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import android.os.Handler;
import com.android.common.camerastate.DeviceState;
import com.android.common.p012e.C0458b;
import com.p010a.C0090a;

class C0815e implements PictureCallback {
    final /* synthetic */ C0813c awc;

    private C0815e(C0813c c0813c) {
        this.awc = c0813c;
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        this.awc.avV.Vi(1);
        if (this.awc.awa == 0) {
            try {
                this.awc.aJM(bArr, "AngleTestMono.JPEG");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (this.awc.avV.US() >= this.awc.avV.Uz()) {
            C0090a.m1e("DualCameraCalibrationCapture", "mSnapNum MyMonoPictureCallback=" + this.awc.awa);
            this.awc.avX.aKf();
            this.awc.avV.SX().Kd(DeviceState.IDLE);
            C0458b.adi().adk();
            if (this.awc.awa == 0) {
                new Handler().postDelayed(new C0820j(this), 500);
            }
            C0813c c0813c = this.awc;
            c0813c.awa = c0813c.awa + 1;
            this.awc.avZ.edit().putInt("steps_key", this.awc.awa).apply();
            if (5 == this.awc.awa) {
                this.awc.avZ.edit().putInt("steps_key", 0).apply();
            } else {
                this.awc.avV.UM(this.awc.avW).tE(-1);
                this.awc.avV.UM(this.awc.avY).tE(-1);
            }
        }
    }
}
