package com.android.p036e;

import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0384o;
import com.android.common.custom.C0417I;
import com.android.common.custom.C0421M;
import com.android.common.setting.C0109m;
import com.android.common.setting.C0710j;
import com.android.common.setting.ListPreference;
import java.util.HashMap;

public class C0824b extends C0109m {
    private CameraMember aZC = CameraMember.NORMAL;
    private ListPreference aZD = null;
    private HashMap aZE = null;

    public C0824b(C0329e c0329e, CameraMember cameraMember) {
        super(c0329e);
        this.aZC = cameraMember;
        this.aZE = new HashMap();
    }

    protected String vQ() {
        String wf = wf();
        if (this.zP == C0384o.Jr().Js()) {
            return wf;
        }
        String FX = this.zQ.Ud(this.zP).FX("altek-back-sub-picturesize");
        if (FX == null) {
            FX = vT(wf);
        }
        return FX;
    }

    protected String wg() {
        return vO().getString("pref_camera_facedetection_key", C0421M.dC().dD().bj());
    }

    protected int wt() {
        return 1;
    }

    protected C0417I vP() {
        return new C0417I(1280, 960);
    }

    protected C0710j vO() {
        return this.zQ.SW(this.zQ.SQ());
    }

    protected String vZ() {
        return "off";
    }

    protected int wW() {
        return 30;
    }

    protected String ws() {
        return "ON";
    }
}
