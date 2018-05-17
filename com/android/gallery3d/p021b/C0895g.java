package com.android.gallery3d.p021b;

import android.view.View;
import android.view.View.OnClickListener;

final class C0895g implements OnClickListener {
    final /* synthetic */ C0890c asc;

    C0895g(C0890c c0890c) {
        this.asc = c0890c;
    }

    public void onClick(View view) {
        this.asc.dismiss();
        if (this.asc.arW != null) {
            this.asc.arW.onClick(view);
        }
    }
}
