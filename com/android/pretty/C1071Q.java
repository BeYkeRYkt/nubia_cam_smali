package com.android.pretty;

import com.android.camera.R;
import com.android.common.ui.ae;

final class C1071Q implements ae {
    final /* synthetic */ C1090w avS;

    C1071Q(C1090w c1090w) {
        this.avS = c1090w;
    }

    public void rH(boolean z) {
        this.avS.avo = z;
        this.avS.avn = false;
        if (this.avS.avo) {
            this.avS.avm.setImageResource(R.drawable.drawer_arrow_down);
        } else {
            this.avS.avm.setImageResource(R.drawable.drawer_arrow_up);
        }
    }
}
