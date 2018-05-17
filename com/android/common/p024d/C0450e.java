package com.android.common.p024d;

import android.hardware.Camera.ShutterCallback;
import com.p010a.C0090a;

class C0450e implements ShutterCallback {
    final /* synthetic */ C0449d Oi;

    private C0450e(C0449d c0449d) {
        this.Oi = c0449d;
    }

    public void onShutter() {
        this.Oi.Oe.Ua(System.currentTimeMillis());
        C0090a.bvo("MTKContinousShot", "mShutterLag = " + (this.Oi.Oe.TM() - this.Oi.Oe.TI()) + "ms");
    }
}
