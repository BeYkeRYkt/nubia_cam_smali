package com.android.common.ui;

import android.view.View;
import android.view.View.OnLayoutChangeListener;

final class bn implements OnLayoutChangeListener {
    final /* synthetic */ WheelView yH;

    bn(WheelView wheelView) {
        this.yH = wheelView;
    }

    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i != i5 || i2 != i6 || i3 != i7 || i4 != i8) {
            this.yH.sB();
        }
    }
}
