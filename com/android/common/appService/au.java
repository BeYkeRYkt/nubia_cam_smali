package com.android.common.appService;

import com.android.common.camerastate.FunctionState;
import com.android.common.ui.C0325a;

final class au implements C0325a {
    final /* synthetic */ C0303E Vd;

    au(C0303E c0303e) {
        this.Vd = c0303e;
    }

    public void gC() {
        if (this.Vd.SR != null) {
            this.Vd.aaF(this.Vd.aaD());
            this.Vd.SR.SX().JW(FunctionState.ZOOM);
        }
    }

    public void gB() {
        if (this.Vd.SR != null) {
            this.Vd.aaF(this.Vd.aaD());
            if (this.Vd.aaD()) {
                this.Vd.SR.SX().JY(FunctionState.ZOOM);
            }
        }
    }

    public void gA(int i) {
        if (this.Vd.SR != null) {
            this.Vd.aaF(this.Vd.aaD());
        }
        this.Vd.Ta.acK(i);
    }
}
