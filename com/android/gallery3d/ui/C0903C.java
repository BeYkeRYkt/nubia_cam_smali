package com.android.gallery3d.ui;

import android.view.View;
import android.view.View.OnLayoutChangeListener;

final class C0903C implements OnLayoutChangeListener {
    final /* synthetic */ C0917o arC;

    C0903C(C0917o c0917o) {
        this.arC = c0917o;
    }

    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int i9 = i3 - i;
        int i10 = i4 - i2;
        if (this.arC.ara != i10 || this.arC.arb != i9) {
            this.arC.arb = i9;
            this.arC.ara = i10;
        }
    }
}
