package com.android.pretty;

import android.view.View;
import android.view.View.OnClickListener;

final class C1070P implements OnClickListener {
    final /* synthetic */ C1090w avR;

    C1070P(C1090w c1090w) {
        this.avR = c1090w;
    }

    public void onClick(View view) {
        if (this.avR.avo) {
            this.avR.avp.start();
            this.avR.avn = true;
            return;
        }
        this.avR.avp.rE();
        this.avR.avn = true;
    }
}
