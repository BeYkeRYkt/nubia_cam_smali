package com.android.pretty;

import android.view.View;
import android.view.View.OnLayoutChangeListener;

final class C1059F implements OnLayoutChangeListener {
    final /* synthetic */ C1075e avG;

    C1059F(C1075e c1075e) {
        this.avG = c1075e;
    }

    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i != i5 || i2 != i6) {
            this.avG.aGO();
        }
    }
}
