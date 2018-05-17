package com.android.pretty;

import com.p010a.C0090a;

final class C1061H implements C1054c {
    final /* synthetic */ C1078h avI;

    C1061H(C1078h c1078h) {
        this.avI = c1078h;
    }

    public void aGs(int i, int i2, boolean z) {
    }

    public void aGr(int i, int i2, boolean z) {
        if (this.avI.atw == i2) {
            C0090a.m0d("PrettyExpandableItem", "onLevelChanged same level");
            return;
        }
        this.avI.atw = i2;
        this.avI.aHq();
        this.avI.aHp(C1078h.att[i2], C1078h.atu[i2], C1078h.ats[i2]);
    }

    public void aGt() {
    }
}
