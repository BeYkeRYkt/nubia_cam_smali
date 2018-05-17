package com.android.electronicfno;

import android.view.View;
import android.view.View.OnClickListener;

final class C0843o implements OnClickListener {
    final /* synthetic */ C0833d aYd;

    C0843o(C0833d c0833d) {
        this.aYd = c0833d;
    }

    public void onClick(View view) {
        if (this.aYd.aXJ.Yx(1) && this.aYd.aXp.boq() != 0) {
            this.aYd.aXp.cancel();
        }
    }
}
