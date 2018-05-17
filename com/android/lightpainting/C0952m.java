package com.android.lightpainting;

import android.view.View;
import android.view.View.OnClickListener;

final class C0952m implements OnClickListener {
    final /* synthetic */ C0943d aZy;

    C0952m(C0943d c0943d) {
        this.aZy = c0943d;
    }

    public void onClick(View view) {
        if (this.aZy.aYp) {
            this.aZy.aYR.start();
        } else {
            this.aZy.aYR.rE();
        }
    }
}
