package com.android.p017c;

import android.hardware.Camera.Size;
import com.android.camera.R;
import com.android.common.appService.C0329e;
import com.android.common.custom.C0421M;
import com.android.common.setting.C0109m;
import com.android.common.setting.C0707g;

public class C0129c extends C0109m {
    Size aVT;
    Size aVU;

    public C0129c(C0329e c0329e) {
        super(c0329e);
    }

    public void wi(int i, C0707g c0707g) {
        super.wi(i, c0707g);
        blU();
        blT();
    }

    protected boolean xt() {
        return true;
    }

    protected String wa() {
        Object obj = null;
        boolean de = C0421M.dC().dD().de();
        String vW = vW();
        if (!vW.equals("-1") && Float.parseFloat(vW) < 1.0f && de) {
            obj = 1;
        }
        if (obj != null) {
            return "on";
        }
        return super.wa();
    }

    protected int wt() {
        return 14;
    }

    protected boolean vX() {
        if ("off".equals(this.zQ.SS().getString("pref_camera_interval_switch", vN(R.string.switch_value_off)))) {
            return true;
        }
        return this.zQ.SM().arE();
    }

    private void blT() {
        float f = ((float) this.aVT.width) / ((float) this.aVT.height);
        for (Size size : this.zO.uB()) {
            if (this.aVU == null) {
                this.aVU = size;
            } else {
                float f2 = ((float) size.width) / ((float) size.height);
                if ((((double) Math.abs((((float) this.aVU.width) / ((float) this.aVU.height)) - f)) < 0.10000000149011612d ? 1 : null) != null) {
                    if (((double) Math.abs(f2 - f)) < 0.10000000149011612d && size.width * size.height > this.aVU.width * this.aVU.height) {
                        this.aVU = size;
                    }
                } else if (((double) Math.abs(f2 - f)) < 0.10000000149011612d || size.width * size.height > this.aVU.width * this.aVU.height) {
                    this.aVU = size;
                }
            }
        }
    }

    private void blU() {
        int i = 0;
        for (Size size : this.zO.ur()) {
            int i2;
            int i3 = size.width * size.height;
            if (i3 > i) {
                this.aVT = size;
                i2 = i3;
            } else {
                i2 = i;
            }
            i = i2;
        }
    }
}
