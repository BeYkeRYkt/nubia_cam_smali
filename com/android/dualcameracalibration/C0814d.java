package com.android.dualcameracalibration;

import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import android.os.Handler;
import com.android.common.camerastate.DeviceState;
import com.android.common.p012e.C0458b;
import com.p010a.C0090a;

class C0814d implements PictureCallback {
    final /* synthetic */ C0813c awb;

    private C0814d(C0813c c0813c) {
        this.awb = c0813c;
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        this.awb.avV.Vi(1);
        if (this.awb.awa == 0) {
            try {
                this.awb.aJM(bArr, "AngleTestColor.JPEG");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (this.awb.avV.US() >= this.awb.avV.Uz()) {
            C0090a.m1e("DualCameraCalibrationCapture", "mSnapNum MyColorPictureCallback=" + this.awb.awa);
            this.awb.avX.aKf();
            this.awb.avV.SX().Kd(DeviceState.IDLE);
            C0458b.adi().adk();
            if (this.awb.awa == 0) {
                new Handler().postDelayed(new C0819i(this), 500);
            }
            C0813c c0813c = this.awb;
            c0813c.awa = c0813c.awa + 1;
            this.awb.avZ.edit().putInt("steps_key", this.awb.awa).apply();
            if (5 == this.awb.awa) {
                this.awb.avZ.edit().putInt("steps_key", 0).apply();
            } else {
                this.awb.avV.UM(this.awb.avW).tE(-1);
                this.awb.avV.UM(this.awb.avY).tE(-1);
            }
        }
    }
}
