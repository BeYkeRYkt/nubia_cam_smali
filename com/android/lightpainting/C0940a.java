package com.android.lightpainting;

import com.android.camera.R;
import com.android.common.appService.C0329e;
import com.android.common.custom.C0417I;
import com.android.common.custom.C0421M;
import com.android.common.setting.C0109m;
import com.android.common.setting.C0716s;

public class C0940a extends C0109m {
    private final String[] aYh = new String[]{"ISO100", "ISO100", "ISO200", "ISO400", "ISO800", "ISO1600"};
    private final String[] aYi = new String[]{"-1", "1/2", "1", "2", "3", "4"};

    public C0940a(C0329e c0329e) {
        super(c0329e);
    }

    protected String vQ() {
        return wj();
    }

    protected C0417I vP() {
        if (this.zO.ut() != null) {
            return this.zO.ut();
        }
        if (this.zO.us() != null) {
            return this.zO.us();
        }
        return we(1.7777777777777777d);
    }

    protected String vZ() {
        return "off";
    }

    protected String wh() {
        return "manual";
    }

    protected int vM() {
        return C0716s.Aq;
    }

    protected String wI() {
        if (C0421M.dC().dD().bf() != null) {
            return C0421M.dC().dD().bf();
        }
        return this.aYh[Integer.parseInt(boJ())];
    }

    protected String vW() {
        return wk("0", this.aYi[Integer.parseInt(boJ())]);
    }

    protected int xb() {
        return this.zQ.Vh();
    }

    protected String boJ() {
        String vN = vN(R.string.pref_camera_light_draw_step_default);
        if (xt()) {
            return vO().getString("pref_camera_light_draw_step", vN);
        }
        return vN;
    }

    protected String wM() {
        if (this.zQ.Vh() == 0) {
            return "on";
        }
        return "off";
    }

    protected int wt() {
        return 5;
    }

    protected String wE() {
        return C0421M.dC().dD().bi();
    }

    protected boolean xt() {
        return C0421M.dC().dD().ch();
    }
}
