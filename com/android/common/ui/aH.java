package com.android.common.ui;

import com.android.camera.R;

final class aH implements ae {
    final /* synthetic */ ZtemtSlidingDrawer xM;

    aH(ZtemtSlidingDrawer ztemtSlidingDrawer) {
        this.xM = ztemtSlidingDrawer;
    }

    public void rH(boolean z) {
        this.xM.kQ = z;
        if (this.xM.kQ) {
            this.xM.kM.setImageResource(R.drawable.drawer_arrow_down);
        } else {
            this.xM.kM.setImageResource(R.drawable.drawer_arrow_up);
        }
    }
}
