package com.android.p017c;

import com.android.camera.R;
import com.android.common.ui.ae;

final class C0140m implements ae {
    final /* synthetic */ C0134g aWY;

    C0140m(C0134g c0134g) {
        this.aWY = c0134g;
    }

    public void rH(boolean z) {
        this.aWY.aWI = z;
        if (this.aWY.aWI) {
            this.aWY.aWK.setImageResource(R.drawable.drawer_arrow_down);
        } else {
            this.aWY.aWK.setImageResource(R.drawable.drawer_arrow_up);
        }
    }
}
