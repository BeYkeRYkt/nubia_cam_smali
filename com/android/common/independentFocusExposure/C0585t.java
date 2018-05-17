package com.android.common.independentFocusExposure;

import android.hardware.Camera.Size;
import com.android.common.appService.C0329e;

public class C0585t {
    protected C0329e NB = null;
    protected int NC = 0;
    protected int ND = 0;

    protected boolean Qg() {
        double d;
        if (this.NB.Tn() != null) {
            Size Gv = this.NB.Tn().Gv();
            d = ((double) Gv.width) / ((double) Gv.height);
        } else {
            d = 0.0d;
        }
        if (d == 0.0d || Math.abs(d - 1.7777777777777777d) < 0.10000000149011612d) {
            return true;
        }
        return false;
    }
}
