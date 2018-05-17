package com.android.p037f;

import com.android.common.ui.C0366P;
import com.p010a.C0090a;

class C0854i implements C0366P {
    final /* synthetic */ C0852g bar;

    C0854i(C0852g c0852g) {
        this.bar = c0852g;
    }

    public void qf(boolean z) {
    }

    public void qe() {
        if (this.bar.adC || !this.bar.adA.Tl() || this.bar.bap.bqU()) {
            C0090a.bvj("Photo3DMemberFragment", "mIsPaused " + this.bar.adC + " isStorageLeftEnough " + this.bar.adA.Tl() + " Photo3DThread Busy " + this.bar.bap.bqU());
        } else {
            this.bar.adA.Tt();
        }
    }

    public void qg() {
    }
}
