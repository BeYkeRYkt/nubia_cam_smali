package com.android.common.ui;

import android.view.View;
import android.view.View.OnClickListener;

final class aI implements OnClickListener {
    final /* synthetic */ ZtemtSlidingDrawer xN;

    aI(ZtemtSlidingDrawer ztemtSlidingDrawer) {
        this.xN = ztemtSlidingDrawer;
    }

    public void onClick(View view) {
        if (this.xN.kQ) {
            if (this.xN.kI != null) {
                this.xN.kI.iV();
            }
            this.xN.close();
            return;
        }
        if (this.xN.kI != null) {
            this.xN.kI.iW();
        }
        this.xN.iH();
    }
}
