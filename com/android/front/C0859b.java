package com.android.front;

import android.hardware.Camera.Size;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.custom.C0417I;
import com.android.common.custom.C0421M;
import com.android.common.setting.C0109m;

public class C0859b extends C0109m {
    public C0859b(C0329e c0329e) {
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
        if (!C0421M.dC().dD().cG() || C0421M.dC().dD().cv()) {
            return "off";
        }
        return vO().getString("pref_camera_doc_pretty", vN(R.string.pref_camera_pretty_default));
    }

    protected boolean xv() {
        if (C0421M.dC().dD().cG() && !C0421M.dC().dD().cv() && C0421M.dC().dD().dv()) {
            return "on".equals(vO().getString("pref_camera_doc_pretty", vN(R.string.pref_camera_pretty_default)));
        }
        return false;
    }

    protected String xn() {
        if (C0421M.dC().dD().cG() && C0421M.dC().dD().cv()) {
            return vO().getString("pref_camera_zk_pretty", vN(R.string.pref_camera_zk_pretty_default));
        }
        return "off";
    }

    protected String vU() {
        return vO().getString("pref_snapshot_mirror_key", vN(R.string.pref_snapshot_mirror_default));
    }

    protected int wt() {
        return 1;
    }

    protected String xg() {
        if (C0421M.dC().dD().cT()) {
            return vO().getString("pref_third_arith_hdr_key", vN(R.string.pref_third_arith_hdr_default));
        }
        return "off";
    }
}
