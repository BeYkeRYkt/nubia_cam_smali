package com.android.p017c;

import android.view.View;
import android.view.View.OnClickListener;

final class C0143p implements OnClickListener {
    final /* synthetic */ C0134g aXb;

    C0143p(C0134g c0134g) {
        this.aXb = c0134g;
    }

    public void onClick(View view) {
        if (!this.aXb.aWN.rk()) {
            if (this.aXb.aWI) {
                this.aXb.aWQ.start();
            } else {
                this.aXb.aWQ.rE();
            }
        }
    }
}
