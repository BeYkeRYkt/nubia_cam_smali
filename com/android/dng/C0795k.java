package com.android.dng;

import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.cameradevice.C0384o;
import com.android.common.setting.C0109m;
import com.android.common.setting.C0710j;

public class C0795k extends C0109m {
    public C0795k(C0329e c0329e) {
        super(c0329e);
    }

    protected int wT() {
        return 1;
    }

    protected int xq() {
        return 0;
    }

    protected int wt() {
        return 6;
    }

    protected String wa() {
        if (C0616j.apU("NX518J")) {
            return "on";
        }
        return "off";
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

    protected C0710j vO() {
        return this.zQ.SW(C0384o.Jr().Js());
    }
}
