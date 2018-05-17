package com.android.dng;

import com.android.camera.R;
import com.android.common.ui.ae;

final class C0803s implements ae {
    final /* synthetic */ C0789e aNv;

    C0803s(C0789e c0789e) {
        this.aNv = c0789e;
    }

    public void rH(boolean z) {
        this.aNv.aMn = z;
        if (this.aNv.aMn) {
            this.aNv.aMp.setImageResource(R.drawable.drawer_arrow_down);
        } else {
            this.aNv.aMp.setImageResource(R.drawable.drawer_arrow_up);
        }
    }
}
