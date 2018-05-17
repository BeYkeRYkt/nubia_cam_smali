package com.android.normal;

import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.custom.C0421M;

public class C1012i extends C1011h {
    public C1012i(C0329e c0329e, CameraMember cameraMember) {
        super(c0329e, cameraMember);
    }

    protected boolean xt() {
        return true;
    }

    protected int wt() {
        if (wo().equalsIgnoreCase(vN(R.string.pref_camera_ae_bracket_hdr_value_hdr))) {
            return 0;
        }
        if (C0616j.ahq) {
            return 1;
        }
        return 13;
    }

    protected boolean vX() {
        if ("off".equals(this.zQ.SS().getString("pref_camera_interval_switch", vN(R.string.switch_value_off)))) {
            return true;
        }
        return this.zQ.SM().arE();
    }

    protected String xg() {
        if (C0421M.dC().dD().cT() && "-1".equals(vW()) && vX()) {
            return vO().getString("pref_third_arith_hdr_key", vN(R.string.pref_third_arith_hdr_default));
        }
        return "off";
    }

    protected int wN() {
        return 0;
    }
}
