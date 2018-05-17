package com.android.gallery3d.p021b;

import android.view.View;
import android.view.View.OnClickListener;

final class C0894f implements OnClickListener {
    final /* synthetic */ C0890c asb;

    C0894f(C0890c c0890c) {
        this.asb = c0890c;
    }

    public void onClick(View view) {
        this.asb.dismiss();
        if (this.asb.arX != null) {
            this.asb.arX.onClick(view);
        }
    }
}
