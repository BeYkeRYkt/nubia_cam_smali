package com.android.pretty;

import com.android.camera.R;
import com.android.common.ui.ae;

final class C1060G implements ae {
    final /* synthetic */ C1075e avH;

    C1060G(C1075e c1075e) {
        this.avH = c1075e;
    }

    public void rH(boolean z) {
        this.avH.atb = z;
        this.avH.ata = false;
        if (this.avH.atb) {
            this.avH.asU.setImageResource(R.drawable.drawer_arrow_down);
        } else {
            this.avH.asU.setImageResource(R.drawable.drawer_arrow_up);
        }
    }
}
