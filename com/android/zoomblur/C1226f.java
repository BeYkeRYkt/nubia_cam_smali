package com.android.zoomblur;

import com.android.common.ui.C0758j;
import com.p010a.C0091b;

final class C1226f implements C0758j {
    final /* synthetic */ C1222b aPe;

    C1226f(C1222b c1222b) {
        this.aPe = c1222b;
    }

    public void iX(int i) {
        C0091b.bvq("ZoomBlurFragment", "onItemClick : " + i);
        this.aPe.bfr(i);
    }
}
