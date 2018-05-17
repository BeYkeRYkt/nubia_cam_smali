package com.android.p013b;

import android.hardware.Camera.Size;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.custom.C0417I;
import com.android.common.custom.C0421M;
import com.android.common.setting.C0109m;

public class C0122h extends C0109m {
    public C0122h(C0329e c0329e) {
        super(c0329e);
    }

    protected C0417I vP() {
        Size Gr = wl().Gr();
        double d = ((double) Gr.width) / ((double) Gr.height);
        Size apD = C0616j.apD(this.zQ.SN(), this.zO.ur(), d);
        if (!C0421M.dC().dD().bY() || Math.abs(d - 1.7777777777777777d) >= 0.10000000149011612d) {
            return new C0417I(apD.width, apD.height);
        }
        return new C0417I(1280, 720);
    }

    protected String wx() {
        return "5";
    }

    protected String xa() {
        return "2";
    }

    protected String wg() {
        return "on";
    }

    protected String xe() {
        return "off";
    }

    protected String wy() {
        return "off";
    }

    protected boolean xv() {
        return false;
    }

    protected String xn() {
        return "off";
    }

    protected String vU() {
        return vN(R.string.pref_snapshot_mirror_default);
    }

    protected int wt() {
        return 1;
    }

    protected int xd() {
        return 0;
    }
}
