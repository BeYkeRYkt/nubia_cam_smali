package com.android.normal;

import com.android.common.appService.C0342q;

final class C1016m implements C0342q {
    final /* synthetic */ C1005b aCI;

    C1016m(C1005b c1005b) {
        this.aCI = c1005b;
    }

    public void Zx() {
        if (!this.aCI.adC) {
            this.aCI.alw(true, 100, -1);
            this.aCI.aCg.aro();
            if (this.aCI.aCj != null) {
                this.aCI.aCj.setVisibility(8);
            }
            this.aCI.aRU(false);
            this.aCI.adA.Tc().LT();
            this.aCI.aRW();
        }
    }

    public void Zw() {
        if (!this.aCI.adC) {
            this.aCI.alx(true, 100, 200);
        }
    }

    public void Zv() {
        if (!this.aCI.adC) {
            this.aCI.aRV();
            this.aCI.aSg();
            this.aCI.aSh();
            this.aCI.adA.Tc().LU();
            this.aCI.aRU(true);
            if (this.aCI.adA.Tv()) {
                this.aCI.aSt();
            }
        }
    }
}
