package com.android.dng;

import android.view.View;
import android.view.View.OnClickListener;

final class C0804t implements OnClickListener {
    final /* synthetic */ C0789e aNw;

    C0804t(C0789e c0789e) {
        this.aNw = c0789e;
    }

    public void onClick(View view) {
        if (this.aNw.aMu.getVisibility() == 8 && this.aNw.aMn) {
            this.aNw.aMy.start();
        }
        if (!this.aNw.aMn) {
            this.aNw.aMy.rE();
        }
        this.aNw.bcJ();
    }
}
