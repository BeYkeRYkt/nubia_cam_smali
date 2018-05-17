package com.android.video;

import android.widget.Toast;
import com.android.camera.R;
import com.android.common.C0259A;
import com.android.common.appService.C0343r;

final class C1146A implements C0343r {
    Toast aRE;
    final /* synthetic */ C1161n aRF;

    C1146A(C1161n c1161n) {
        this.aRF = c1161n;
    }

    public boolean Zy() {
        if (this.aRF.adC) {
            return true;
        }
        if (!this.aRF.bht()) {
            return false;
        }
        bim();
        return true;
    }

    private void bim() {
        if (this.aRF.adA.SM().arE()) {
            C0259A.avE(this.aRF.getActivity(), R.string.quality_dont_support_effect);
            return;
        }
        if (this.aRE == null) {
            this.aRE = Toast.makeText(this.aRF.getActivity(), R.string.quality_dont_support_effect, 0);
        }
        this.aRE.show();
    }
}
