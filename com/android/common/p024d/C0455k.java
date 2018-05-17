package com.android.common.p024d;

import android.hardware.Camera.ShutterCallback;
import com.android.common.camerastate.FunctionState;
import com.p010a.C0090a;

class C0455k implements ShutterCallback {
    final /* synthetic */ C0454j Oz;

    private C0455k(C0454j c0454j) {
        this.Oz = c0454j;
    }

    public void onShutter() {
        synchronized (this.Oz.Ri()) {
            if (this.Oz.Ow.SX().JZ() != FunctionState.QUALITY_MULTISHOOTING) {
                C0090a.bvo("LongShotShutterCallback", "not in QUALITY_MULTISHOOTING, return");
                return;
            }
            C0090a.bvo("LongShotShutterCallback", "longshot shutter");
            this.Oz.Ow.Ua(System.currentTimeMillis());
            this.Oz.Ri().IO(this.Oz.Oy, null, null, this.Oz.Ox);
        }
    }
}
