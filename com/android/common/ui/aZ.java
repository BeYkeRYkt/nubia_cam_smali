package com.android.common.ui;

import android.view.View;
import android.view.View.OnClickListener;

final class aZ implements OnClickListener {
    final /* synthetic */ C0738N yp;

    aZ(C0738N c0738n) {
        this.yp = c0738n;
    }

    public void onClick(View view) {
        this.yp.dismiss();
        if (this.yp.sg != null) {
            this.yp.sg.onClick(view);
        }
    }
}
