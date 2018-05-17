package com.android.common.independentFocusExposure;

import android.os.Handler;
import android.os.Message;
import com.android.common.camerastate.FunctionState;
import com.p010a.C0090a;

class C0589e extends Handler {
    final /* synthetic */ C0586b KZ;

    private C0589e(C0586b c0586b) {
        this.KZ = c0586b;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 31:
                this.KZ.LZ();
                break;
            case 98:
                this.KZ.MR(0);
                break;
            case 99:
                if (this.KZ.Kn != CameraFocusService$FocusModeState.MANUAL) {
                    this.KZ.JZ.cancel();
                    this.KZ.Kj.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(200).withEndAction(this.KZ.Ke).start();
                    C0090a.bvm("CameraFocusService", "FS -- 99 start");
                    this.KZ.Ku = false;
                    this.KZ.KA = false;
                    break;
                }
                return;
            case 101:
                this.KZ.JZ.start();
                break;
            case 102:
                this.KZ.Ka.start();
                break;
            case 103:
                C0090a.bvm("CameraFocusService", "MESSAGE_SET_MODE_CAF");
                this.KZ.Kn = CameraFocusService$FocusModeState.CAF;
                this.KZ.NB.SZ(8);
                this.KZ.KA = true;
                break;
            case 105:
                this.KZ.JZ.cancel();
                break;
            case 106:
                this.KZ.JZ.start();
                break;
            case 107:
                this.KZ.Md();
                this.KZ.Kr.removeMessages(107);
                break;
            case 108:
                this.KZ.Mc();
                this.KZ.Kr.removeMessages(108);
                break;
            case 109:
                this.KZ.Kn = CameraFocusService$FocusModeState.CAF;
                if (this.KZ.NB.SX().JZ() != FunctionState.SWITCHING_CAMERA) {
                    this.KZ.NB.SZ(8);
                    break;
                }
                break;
            case 110:
                if (this.KZ.Ki != null) {
                    this.KZ.Ki.setVisibility(4);
                    this.KZ.NB.Td().ND();
                    this.KZ.NB.Te().OV();
                    break;
                }
                break;
        }
    }
}
