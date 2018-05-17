package com.android.normal;

import com.android.common.p012e.C0458b;
import com.p010a.C0090a;

final class C1020q implements Runnable {
    final /* synthetic */ C1005b aCN;

    C1020q(C1005b c1005b) {
        this.aCN = c1005b;
    }

    public void run() {
        if (this.aCN.adC) {
            C0090a.m1e("NormalFragment", "Fragment is paused, ignore showIdleUI");
            return;
        }
        this.aCN.adA.SU().St(false);
        C0458b.adi().adk();
    }
}
