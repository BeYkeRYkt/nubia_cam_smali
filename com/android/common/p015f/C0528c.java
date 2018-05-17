package com.android.common.p015f;

import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import com.android.common.appService.C0329e;
import com.p010a.C0090a;

public final class C0528c implements AutoFocusCallback {
    private C0329e VW = null;

    public C0528c(C0329e c0329e) {
        this.VW = c0329e;
    }

    public void onAutoFocus(boolean z, Camera camera) {
        if (!adO()) {
            adP(System.currentTimeMillis() - adN());
            C0090a.bvo("AutoFocusCallback", "mAutoFocusTime = " + adM() + "ms");
            this.VW.Tc().MF(z);
        }
    }

    private C0329e adL() {
        return this.VW;
    }

    private long adN() {
        return adL().Ue();
    }

    private long adM() {
        return adL().Uf();
    }

    private void adP(long j) {
        adL().Ug(j);
    }

    private boolean adO() {
        return adL().SO();
    }
}
