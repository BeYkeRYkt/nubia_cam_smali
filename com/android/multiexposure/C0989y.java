package com.android.multiexposure;

import android.view.View;
import android.view.View.OnClickListener;

final class C0989y implements OnClickListener {
    final /* synthetic */ C0974i amD;

    C0989y(C0974i c0974i) {
        this.amD = c0974i;
    }

    public void onClick(View view) {
        if (this.amD.alo.axB() != 0 && !this.amD.awD()) {
            this.amD.alo.axx();
            this.amD.alo = C0970e.awg(this.amD.alA(), this.amD.alV, this.amD.alz);
            this.amD.awF();
        }
    }
}
