package com.android.dng;

import android.view.View;
import android.view.View.OnClickListener;

final class C0806v implements OnClickListener {
    final /* synthetic */ C0789e aNy;

    C0806v(C0789e c0789e) {
        this.aNy = c0789e;
    }

    public void onClick(View view) {
        if (this.aNy.aMn) {
            this.aNy.aMy.start();
        } else {
            this.aNy.aMy.rE();
        }
    }
}
