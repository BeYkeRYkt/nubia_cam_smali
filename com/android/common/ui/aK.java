package com.android.common.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.android.common.p012e.C0458b;

final class aK implements OnClickListener {
    final /* synthetic */ C0743w xP;
    final /* synthetic */ int xQ;

    aK(C0743w c0743w, int i) {
        this.xP = c0743w;
        this.xQ = i;
    }

    public void onClick(View view) {
        C0458b.adi().adj(new C0766x(this.xP, this.xP, view, this.xQ));
    }
}
