package com.android.common.ui;

import android.view.View;
import com.android.common.p012e.C0102l;

class C0766x extends C0102l {
    private int ph;
    private View pi = null;
    private C0743w pj = null;
    final /* synthetic */ C0743w pk;

    public C0766x(C0743w c0743w, C0743w c0743w2, View view, int i) {
        this.pk = c0743w;
        this.pj = c0743w2;
        this.pi = view;
        this.ph = i;
    }

    public void mE() {
        this.pj.mc(this.pi, this.ph);
    }

    public int mF() {
        return 100;
    }
}
