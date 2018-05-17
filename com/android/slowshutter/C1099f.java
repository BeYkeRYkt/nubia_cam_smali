package com.android.slowshutter;

import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.setting.C0109m;

public class C1099f extends C0109m {
    public C1099f(C0329e c0329e) {
        super(c0329e);
    }

    protected String wx() {
        return vO().getString("pref_camera_contrast_key", vN(R.string.pref_camera_contrast_default));
    }

    protected String xa() {
        return vO().getString("pref_camera_sharpness_key", vN(R.string.pref_camera_sharpness_default));
    }

    protected String wa() {
        if (vW().equals("-1")) {
            return "on";
        }
        return "off";
    }

    protected String vZ() {
        return "off";
    }

    protected String vW() {
        return wk(vO().getString("pref_slow_shutter_min_key", "0"), vO().getString("pref_slow_shutter_sec_key", "0"));
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

    protected int wt() {
        if (C0616j.ahq && C0616j.apU("NX541J")) {
            return 13;
        }
        return 15;
    }
}
