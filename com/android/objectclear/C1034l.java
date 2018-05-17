package com.android.objectclear;

import android.view.View;
import android.view.View.OnClickListener;
import com.android.common.p012e.C0458b;
import com.p010a.C0090a;

class C1034l implements OnClickListener {
    final /* synthetic */ C1031i aKk;

    private C1034l(C1031i c1031i) {
        this.aKk = c1031i;
    }

    public void onClick(View view) {
        C0090a.m1e("NubiaObjectClearFragment", "SaveButtonClickListener");
        if (this.aKk.aJM.getVisibility() != 0) {
            C0090a.bvo("NubiaObjectClearFragment", "ignore click because view is not visible");
        } else if (!this.aKk.aJK) {
            this.aKk.aJK = true;
            this.aKk.aKg.sendEmptyMessage(0);
            this.aKk.aZS();
            this.aKk.aZZ();
            this.aKk.bab();
            this.aKk.aZT();
            this.aKk.aZY();
            this.aKk.bag(null, null);
            this.aKk.aZV();
            this.aKk.adA.SX().Ka();
            this.aKk.adA.TE().Lq(false);
            this.aKk.adA.TE().Lz(0);
            C0458b.adi().adk();
        }
    }
}
