package com.android.gallery3d.ui;

final class C0918p implements C0909g {
    final /* synthetic */ C0906d arc;

    C0918p(C0906d c0906d) {
        this.arc = c0906d;
    }

    public void aEJ(int i, int i2) {
        this.arc.aqG.apX = i;
        boolean aCQ = this.arc.aqG.aBT();
        this.arc.aqG.aBR(this.arc.aqG.aBZ());
        if (aCQ) {
            this.arc.aqG.apZ.aEj(true);
        }
        this.arc.aqG.invalidate();
    }

    public void aEI() {
        this.arc.aqz = true;
        if (this.arc.aqG.aqr[2] != null) {
            this.arc.aqG.aCq();
            if (this.arc.aqG.apX == this.arc.aqG.aqr[2].aDq() && this.arc.aqG.aCa() == 1) {
                this.arc.aDm();
            }
        }
    }
}
