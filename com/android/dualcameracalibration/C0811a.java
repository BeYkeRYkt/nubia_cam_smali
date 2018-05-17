package com.android.dualcameracalibration;

import com.android.camera.R;
import com.android.common.appService.C0329e;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.DeviceState;
import com.android.common.custom.C0417I;
import com.android.common.custom.C0421M;
import com.android.common.custom.C0442w;
import com.android.common.setting.C0109m;
import com.android.common.setting.C0710j;

public class C0811a extends C0109m {
    private int aJJ() {
        return vO().getInt("steps_key", 0);
    }

    public C0811a(C0329e c0329e) {
        super(c0329e);
    }

    protected String vQ() {
        if (C0421M.dC().dD() instanceof C0442w) {
            if (this.zP == C0384o.Jr().Js()) {
                return "4032x3024";
            }
            return "2688x2016";
        } else if (aJJ() == 0) {
            return "1728x972";
        } else {
            return "4160x3120";
        }
    }

    protected C0417I vP() {
        if (aJJ() == 0) {
            return new C0417I(1280, 720);
        }
        return new C0417I(1440, 1080);
    }

    protected int wt() {
        return 16;
    }

    protected int wT() {
        if (aJJ() == 0) {
            return 0;
        }
        return 2;
    }

    protected C0710j vO() {
        return this.zQ.SW(this.zQ.SQ());
    }

    protected int vM() {
        if (aJJ() == 3) {
            return 120;
        }
        if (aJJ() == 1 || aJJ() == 2) {
            return 110;
        }
        if (aJJ() == 4) {
            return 130;
        }
        if (aJJ() == 0) {
            return 140;
        }
        return super.vM();
    }

    protected String wh() {
        return "manual";
    }

    protected int wH() {
        if (aJJ() == 0) {
            return 0;
        }
        return 1;
    }

    protected int wW() {
        if (C0421M.dC().dD() instanceof C0442w) {
            return 29;
        }
        if (aJJ() == 0) {
            return 27;
        }
        return 28;
    }

    protected String wI() {
        if (this.zQ.SX().JV() == DeviceState.PREVIEW_STOPPED) {
            return vN(R.string.pref_camera_iso_default);
        }
        if (C0421M.dC().dD() instanceof C0442w) {
            return "ISO200";
        }
        return "ISO100";
    }

    protected int vY() {
        return 0;
    }
}
