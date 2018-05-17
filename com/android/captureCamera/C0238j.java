package com.android.captureCamera;

import android.os.Handler;
import android.os.Message;
import com.p010a.C0090a;

final class C0238j extends Handler {
    final /* synthetic */ CaptureCameraService aSP;

    C0238j(CaptureCameraService captureCameraService) {
        this.aSP = captureCameraService;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 101:
                this.aSP.bjj();
                return;
            case 102:
                this.aSP.aSr = this.aSP.aSb.getParameters();
                this.aSP.aSr.setExposureCompensation(0);
                this.aSP.aSb.setParameters(this.aSP.aSr);
                return;
            case 103:
                this.aSP.bjl();
                return;
            case 104:
                this.aSP.biS();
                this.aSP.aSq.disable();
                return;
            case 105:
                this.aSP.bjk();
                return;
            case 106:
                this.aSP.biP();
                return;
            case 107:
                C0090a.bvo("CaptureCameraService", "CAPTURE_WHILE_FOCUS_LONG");
                if (this.aSP.aSb != null) {
                    this.aSP.aSb.cancelAutoFocus();
                }
                this.aSP.biH();
                return;
            default:
                return;
        }
    }
}
