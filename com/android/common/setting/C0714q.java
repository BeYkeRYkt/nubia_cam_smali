package com.android.common.setting;

import android.hardware.Camera;
import android.hardware.Camera.AutoFocusMoveCallback;

final class C0714q implements AutoFocusMoveCallback {
    final /* synthetic */ C0160p Am;

    private C0714q(C0160p c0160p) {
        this.Am = c0160p;
    }

    public void onAutoFocusMoving(boolean z, Camera camera) {
        if (this.Am.Ad.TE().Ll()) {
            this.Am.Ad.TE().Lr(z);
            this.Am.Ad.SU().RQ(z);
        }
    }
}
