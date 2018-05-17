package com.android.normal;

import android.widget.Toast;
import com.android.camera.R;
import com.android.common.C0259A;
import com.android.common.appService.C0343r;

final class C1017n implements C0343r {
    Toast aCJ;
    final /* synthetic */ C1005b aCK;

    C1017n(C1005b c1005b) {
        this.aCK = c1005b;
    }

    public boolean Zy() {
        if (this.aCK.adC) {
            return true;
        }
        if (!"on".equals(this.aCK.adA.SS().getString("pref_big_aperature_key", "off")) && !this.aCK.adA.Tv()) {
            return false;
        }
        aTb();
        return true;
    }

    private void aTb() {
        CharSequence string;
        if (this.aCK.adA.Tv()) {
            string = this.aCK.getResources().getString(R.string.fusion_dont_support_effect);
        } else {
            string = this.aCK.getResources().getString(R.string.bigaperture_dont_support_effect);
        }
        if (this.aCK.adA.SM().arE()) {
            C0259A.avD(this.aCK.getActivity(), string);
            return;
        }
        if (this.aCJ == null) {
            this.aCJ = Toast.makeText(this.aCK.getActivity(), string, 0);
        }
        this.aCJ.setText(string);
        this.aCJ.show();
    }
}
