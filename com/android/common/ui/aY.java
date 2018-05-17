package com.android.common.ui;

import android.view.View;
import android.view.View.OnClickListener;

final class aY implements OnClickListener {
    final /* synthetic */ C0738N yo;

    aY(C0738N c0738n) {
        this.yo = c0738n;
    }

    public void onClick(View view) {
        this.yo.dismiss();
        if (this.yo.si != null) {
            view.setTag(this.yo.sj.getText().toString());
            this.yo.si.onClick(view);
        }
    }
}
