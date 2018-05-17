package com.android.pretty;

import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.appService.IDualCameraControl$DualCameraMode;
import com.android.common.cameradevice.C0384o;
import com.android.common.custom.C0417I;
import com.android.common.custom.C0421M;
import com.android.common.setting.C0109m;
import com.android.common.setting.C0710j;
import com.android.common.setting.ListPreference;
import java.util.HashMap;

public class C1079i extends C0109m {
    private ListPreference atB;
    private HashMap atC;

    public C1079i(C0329e c0329e) {
        super(c0329e);
        this.atC = null;
        this.atB = null;
        this.atC = new HashMap();
    }

    protected CameraMember aHw() {
        return CameraMember.PRETTYCAMERA;
    }

    protected C0417I vP() {
        if (aHx() != IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE) {
            return super.vP();
        }
        if (C0421M.dC().dD().dr()) {
            return new C0417I(960, 720);
        }
        return new C0417I(1280, 960);
    }

    protected String vQ() {
        if (this.zP == C0384o.Jr().Jt()) {
            return super.vQ();
        }
        String str;
        if (this.atB == null) {
            this.atB = this.zQ.SR().tp("pref_camera_picture_ratio_key");
        }
        if (aHx() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE) {
            str = "4:3";
        } else {
            str = vO().getString("pref_camera_picture_ratio_key", vN(R.string.pref_camera_picture_ratio_default));
        }
        String str2 = (String) this.atC.get(str);
        if (str2 == null) {
            str2 = C0109m.vS(str, vR());
            this.atC.put(str, str2);
        }
        if (aHx() != IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE || !aHz()) {
            return str2;
        }
        str = this.zQ.Ud(this.zP).FX("altek-back-sub-picturesize");
        if (str != null) {
            str2 = str;
        } else {
            str2 = vT(str2);
        }
        return str2;
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
        if (!C0421M.dC().dD().cG() || aHy() || C0421M.dC().dD().cv() || !aHA()) {
            return "off";
        }
        return "on";
    }

    protected boolean xv() {
        if (C0421M.dC().dD().cG() && !C0421M.dC().dD().cv() && C0421M.dC().dD().dv()) {
            return true;
        }
        return false;
    }

    protected String vU() {
        if (this.zP == C0384o.Jr().Jt()) {
            return vO().getString("pref_snapshot_mirror_key", vN(R.string.pref_snapshot_mirror_default));
        }
        return super.vU();
    }

    private boolean aHy() {
        return this.zQ.Vu();
    }

    protected int xc() {
        if (aHy()) {
            return 10;
        }
        return 1;
    }

    protected int wr() {
        if (aHy()) {
            return 1;
        }
        return 0;
    }

    protected int wt() {
        if (aHy()) {
            return 0;
        }
        return 1;
    }

    protected String vV() {
        if (aHy()) {
            return super.vV();
        }
        return this.zQ.SS().getString("pref_camera_pretty_effect_key", this.zQ.Tb(R.string.pref_camera_ztemt_fun_effect_default));
    }

    protected String wo() {
        if ("-1".equals(vW()) && vX() && !C0421M.dC().dD().cT()) {
            return vO().getString("pref_camera_ae_bracket_hdr_key", vN(R.string.pref_camera_ae_bracket_hdr_default));
        }
        return vN(R.string.pref_camera_ae_bracket_hdr_default);
    }

    protected String wY() {
        if (!"-1".equals(vW()) || !vX() || C0421M.dC().dD().cT()) {
            return vN(R.string.pref_camera_scenemode_default);
        }
        String str;
        if ("HDR".equals(wo())) {
            str = "hdr";
        } else {
            str = vO().getString("pref_camera_scenemode_key", vN(R.string.pref_camera_scenemode_default));
        }
        return str;
    }

    protected int vY() {
        if (C0616j.aoM(aHw(), this.zQ.ST())) {
            return 0;
        }
        return super.vY();
    }

    protected C0710j vO() {
        if (aHz()) {
            return this.zQ.SW(this.zQ.SQ());
        }
        return super.vO();
    }

    protected String vZ() {
        IDualCameraControl$DualCameraMode aHx = aHx();
        if (aHz() && (aHx == IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE || aHx == IDualCameraControl$DualCameraMode.DUAL_CAMERA_FUSION_MODE)) {
            return "off";
        }
        if (aHx == IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE) {
            return "off";
        }
        return super.vZ();
    }

    private boolean aHz() {
        if (this.zP != C0384o.Jr().Jx()) {
            return false;
        }
        if (C0421M.dC().dD().cc()) {
            return true;
        }
        return C0421M.dC().dD().bF();
    }

    private IDualCameraControl$DualCameraMode aHx() {
        return this.zQ.SM().arD().Sz();
    }

    protected String ws() {
        if (aHx() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE) {
            return "ON";
        }
        return "OFF";
    }

    protected int wW() {
        if (aHx() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE) {
            return 30;
        }
        if (this.zQ.ST().FD() && this.zQ.ST().FE() && "on".equals(wa())) {
            return 28;
        }
        return 0;
    }

    protected int wb() {
        if (aHA()) {
            return super.wb();
        }
        return 0;
    }

    protected int wc() {
        if (aHA()) {
            return super.wc();
        }
        return 0;
    }

    protected int wd() {
        if (aHA()) {
            return super.wd();
        }
        return 0;
    }

    private boolean aHA() {
        if (C0421M.dC().dD().cE() && !"on".equals(vO().getString("pref_pretty_switch", vN(R.string.switch_value_off))) && this.zQ.ST().Fy()) {
            return false;
        }
        return true;
    }

    protected boolean xu() {
        return vN(R.string.switch_value_on).equals(vO().getString("pref_refocus_after_capture", vN(R.string.switch_value_off)));
    }
}
