package com.android.electronicfno;

import com.android.camera.R;
import com.android.common.appService.C0329e;
import com.android.common.custom.C0417I;
import com.android.common.custom.C0421M;
import com.android.common.independentutil.IndependenceUtil;
import com.android.common.setting.C0109m;

public class C0831c extends C0109m {
    public C0831c(C0329e c0329e) {
        super(c0329e);
    }

    protected String vQ() {
        return wj();
    }

    protected C0417I vP() {
        if (!IndependenceUtil.afZ) {
            return super.vP();
        }
        if (this.zO.uu() != null && wm() == 1) {
            return this.zO.uu();
        }
        if (this.zO.ut() != null && (!bnr() || C0421M.dC().dD().ds())) {
            return this.zO.ut();
        }
        if (this.zO.us() != null) {
            return this.zO.us();
        }
        return we(1.7777777777777777d);
    }

    protected String wx() {
        return vO().getString("pref_camera_contrast_key", vN(R.string.pref_camera_contrast_default));
    }

    protected String xa() {
        return vO().getString("pref_camera_sharpness_key", vN(R.string.pref_camera_sharpness_default));
    }

    protected String wa() {
        return "off";
    }

    protected String vZ() {
        return "off";
    }

    protected String wM() {
        return "tripod";
    }

    private boolean bnr() {
        if (C0421M.dC().dD().bq() == 1) {
            return false;
        }
        return "on".equals(vO().getString("pref_camera_anti_shake", vN(R.string.setting_on_value)));
    }

    protected int wt() {
        if (bnr()) {
            return 11;
        }
        return 4;
    }

    protected boolean xt() {
        return true;
    }

    protected boolean vX() {
        if ("off".equals(vO().getString("pref_camera_interval_switch", vN(R.string.switch_value_off)))) {
            return true;
        }
        return this.zQ.SM().arE();
    }

    protected int wm() {
        if (bnr()) {
            return 0;
        }
        return 1;
    }
}
