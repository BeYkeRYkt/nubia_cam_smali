package com.android.startrack;

import com.android.camera.R;
import com.android.common.appService.C0329e;
import com.android.common.custom.C0421M;
import com.android.common.setting.C0109m;
import com.android.common.setting.C0716s;

public class C1121j extends C0109m {
    public C1121j(C0329e c0329e) {
        super(c0329e);
    }

    protected String vZ() {
        return "off";
    }

    protected String wh() {
        return "manual";
    }

    protected int vM() {
        int i = C0716s.Aq;
        if (!xt()) {
            return i;
        }
        i = vO().getInt("maf_key", C0716s.Aq);
        if (i == -1) {
            return C0716s.Aq;
        }
        return i;
    }

    protected String wa() {
        return "off";
    }

    protected String wB() {
        return C0421M.dC().dD().bm();
    }

    protected String xm() {
        return vO().getString("pref_camera_whitebalance_key", wA());
    }

    protected int wL() {
        return vO().getInt("wb-manual-cct", 3500);
    }

    protected String wA() {
        if (C0421M.dC().dD().dp()) {
            return "fluorescent";
        }
        return "manual-cct";
    }

    protected String wz() {
        return vN(R.string.pref_camera_iso_value_iso3200);
    }

    protected String vW() {
        if (C0421M.dC().dD().bW()) {
            return C0421M.dC().dD().bm();
        }
        String wk = wk(vO().getString("pref_slow_shutter_min_key", "0"), vO().getString("pref_slow_shutter_sec_key", "30"));
        if (Integer.parseInt(wk) < 9) {
            return "9";
        }
        return wk;
    }

    protected int xb() {
        if (C0421M.dC().dD().du() && this.zQ.SU().RJ()) {
            return 1;
        }
        return 0;
    }

    protected String wE() {
        return C0421M.dC().dD().bi();
    }

    protected int wt() {
        return 2;
    }

    protected boolean xt() {
        return true;
    }

    public boolean xr() {
        return true;
    }

    protected int vY() {
        return 0;
    }
}
