package com.android.normal;

import com.android.common.independentFocusExposure.C0591g;

final class C1013j implements C0591g {
    final /* synthetic */ C1005b aCF;

    C1013j(C1005b c1005b) {
        this.aCF = c1005b;
    }

    public void Nn() {
        if ("on".equals(this.aCF.als().getString("pref_big_aperature_key", "off"))) {
            this.aCF.aBX.mW(false);
            this.aCF.adA.SM().arD().Su(true);
            this.aCF.adA.Tc().LP();
        }
    }
}
