package com.android.common.appService;

import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;
import com.android.common.camerastate.DeviceState;

final class aj implements PreviewCallback {
    final /* synthetic */ C0332g UQ;
    final /* synthetic */ int UR;

    aj(C0332g c0332g, int i) {
        this.UQ = c0332g;
        this.UR = i;
    }

    public void onPreviewFrame(byte[] bArr, Camera camera) {
        this.UQ.Xt("[optical zoom] main camera frame received, " + this.UQ.QB.get(this.UR));
        if (this.UQ.QB.get(this.UR) && !this.UQ.Qw.SO()) {
            this.UQ.XI();
            this.UQ.XH(DeviceState.IDLE);
            this.UQ.XR();
        }
    }
}
