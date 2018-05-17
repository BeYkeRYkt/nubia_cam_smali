package com.android.common.appService;

import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;
import com.android.common.camerastate.DeviceState;

final class ak implements PreviewCallback {
    final /* synthetic */ C0332g US;
    final /* synthetic */ int UT;

    ak(C0332g c0332g, int i) {
        this.US = c0332g;
        this.UT = i;
    }

    public void onPreviewFrame(byte[] bArr, Camera camera) {
        this.US.Xt((this.US.Xw() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE ? "[aper]" : "[fu]") + " color preview frame received, " + this.US.QB.get(this.UT));
        if (this.US.QB.get(this.UT) && !this.US.Qw.SO()) {
            this.US.XO();
            this.US.XH(DeviceState.IDLE);
            this.US.XR();
        }
    }
}
