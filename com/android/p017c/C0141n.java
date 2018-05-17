package com.android.p017c;

import android.view.View;
import android.view.View.OnClickListener;

final class C0141n implements OnClickListener {
    final /* synthetic */ C0134g aWZ;

    C0141n(C0134g c0134g) {
        this.aWZ = c0134g;
    }

    public void onClick(View view) {
        if (this.aWZ.aWM.getVisibility() == 8 && !this.aWZ.aWN.rk() && this.aWZ.aWI) {
            this.aWZ.aWQ.start();
        }
        if (!this.aWZ.aWI) {
            this.aWZ.aWQ.rE();
        }
        this.aWZ.bmY();
    }
}
