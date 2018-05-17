package com.android.pretty;

import android.widget.Toast;
import com.android.camera.R;
import com.android.common.C0259A;
import com.android.common.appService.C0343r;

final class C1064K implements C0343r {
    Toast avL;
    final /* synthetic */ C1083m avM;

    C1064K(C1083m c1083m) {
        this.avM = c1083m;
    }

    public boolean Zy() {
        if (this.avM.adC) {
            return true;
        }
        if (!"on".equals(this.avM.adA.SS().getString("pref_big_aperature_key", "off"))) {
            return false;
        }
        aJI();
        return true;
    }

    private void aJI() {
        if (this.avM.adA.SM().arE()) {
            C0259A.avE(this.avM.getActivity(), R.string.bigaperture_dont_support_effect);
            return;
        }
        if (this.avL == null) {
            this.avL = Toast.makeText(this.avM.getActivity(), R.string.bigaperture_dont_support_effect, 0);
        }
        this.avL.show();
    }
}
