package com.android.camera.p020b;

import android.view.View;
import android.view.View.OnClickListener;
import com.android.camera.cameraFamily.C0184l;

final class C0169g implements OnClickListener {
    final /* synthetic */ C0165c aHi;

    C0169g(C0165c c0165c) {
        this.aHi = c0165c;
    }

    public void onClick(View view) {
        C0184l c0184l = (C0184l) view.getTag();
        if (c0184l.aGj) {
            this.aHi.aGK.aWl(c0184l);
        }
    }
}
