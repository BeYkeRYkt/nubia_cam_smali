package com.android.intervalometer;

import com.android.common.storagemanager.C0236g;
import com.p010a.C0090a;

final class C0939k implements C0236g {
    final /* synthetic */ C0936h aOY;

    C0939k(C0936h c0936h) {
        this.aOY = c0936h;
    }

    public void amp(long j, boolean z) {
        if (!z) {
            C0090a.bvm("IntervalometerFragment", "Storage enough: " + z);
            this.aOY.stop();
            this.aOY.beV();
            if (!this.aOY.adC) {
                this.aOY.adA.Xk(this.aOY.adA.Vf());
            }
        }
    }
}
