package com.android.multiexposure;

import com.android.camera.R;
import com.android.common.ui.ae;
import com.p010a.C0090a;

final class C0961C implements ae {
    final /* synthetic */ C0974i amH;

    C0961C(C0974i c0974i) {
        this.amH = c0974i;
    }

    public void rH(boolean z) {
        this.amH.alq = z;
        C0090a.m1e("MultiExposureFragment", "isShowSeekbar = " + this.amH.alq);
        if (this.amH.alq) {
            this.amH.als.setImageResource(R.drawable.drawer_arrow_down);
        } else {
            this.amH.als.setImageResource(R.drawable.drawer_arrow_up);
        }
    }
}
