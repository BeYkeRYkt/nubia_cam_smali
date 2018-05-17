package com.android.lightpainting;

import com.android.camera.R;
import com.android.common.ui.ae;

final class C0951l implements ae {
    final /* synthetic */ C0943d aZx;

    C0951l(C0943d c0943d) {
        this.aZx = c0943d;
    }

    public void rH(boolean z) {
        this.aZx.aYp = z;
        if (this.aZx.aYp) {
            this.aZx.aYr.setImageResource(R.drawable.drawer_arrow_down);
        } else {
            this.aZx.aYr.setImageResource(R.drawable.drawer_arrow_up);
        }
    }
}
