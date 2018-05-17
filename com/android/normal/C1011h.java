package com.android.normal;

import com.android.camera.R;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.appService.IDualCameraControl$DualCameraMode;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.FunctionState;
import com.android.common.custom.C0417I;
import com.android.common.custom.C0421M;
import com.android.common.setting.C0109m;
import com.android.common.setting.C0710j;
import com.android.common.setting.ListPreference;
import java.util.HashMap;

public class C1011h extends C0109m {
    private CameraMember aCC = CameraMember.NORMAL;
    private ListPreference aCD = null;
    private HashMap aCE = null;

    public C1011h(C0329e c0329e, CameraMember cameraMember) {
        super(c0329e);
        this.aCC = cameraMember;
        this.aCE = new HashMap();
    }

    protected String vQ() {
        if (this.zP == C0384o.Jr().Jt()) {
            return super.vQ();
        }
        String str;
        if (this.aCD == null) {
            this.aCD = this.zQ.SR().tp("pref_camera_picture_ratio_key");
        }
        if (aSZ() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE) {
            str = "4:3";
        } else {
            str = vO().getString("pref_camera_picture_ratio_key", vN(R.string.pref_camera_picture_ratio_default));
        }
        String str2 = (String) this.aCE.get(str);
        if (str2 == null) {
            str2 = C0109m.vS(str, vR());
            this.aCE.put(str, str2);
        }
        if (aSZ() != IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE || !aTa()) {
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

    protected String vV() {
        if (this.zQ.SM().arD().Sz() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_FUSION_MODE) {
            return "none";
        }
        return super.vV();
    }

    protected String wo() {
        if (!"-1".equals(vW()) || !vX() || this.zQ.Tv() || C0421M.dC().dD().cT()) {
            return vN(R.string.pref_camera_ae_bracket_hdr_default);
        }
        return vO().getString("pref_camera_ae_bracket_hdr_key", vN(R.string.pref_camera_ae_bracket_hdr_default));
    }

    protected String wY() {
        if (!"-1".equals(vW()) || !vX() || this.zQ.Tv() || C0421M.dC().dD().cT()) {
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

    protected String wx() {
        return vO().getString("pref_camera_contrast_key", vN(R.string.pref_camera_contrast_default));
    }

    protected String xa() {
        return vO().getString("pref_camera_sharpness_key", vN(R.string.pref_camera_sharpness_default));
    }

    protected String wg() {
        if (this.zQ.SX().JZ() == FunctionState.QUALITY_MULTISHOOTING) {
            return "off";
        }
        String string = vO().getString("pref_camera_front_smile_shoot", vN(R.string.pref_camera_smile_shoot_default));
        if ((C0384o.Jr().Jt() == this.zQ.SQ() ? 1 : null) == null || !"on".equalsIgnoreCase(string)) {
            return vO().getString("pref_camera_facedetection_key", C0421M.dC().dD().bj());
        }
        return "on";
    }

    protected String wa() {
        Object obj = null;
        boolean de = C0421M.dC().dD().de();
        String vW = vW();
        if (!vW.equals("-1") && Float.parseFloat(vW) < 1.0f && de) {
            obj = 1;
        }
        if (obj != null) {
            return "on";
        }
        return super.wa();
    }

    protected int wt() {
        if (this.zQ.Tu()) {
            return 12;
        }
        if (!vW().equals("-1") || wo().equalsIgnoreCase(vN(R.string.pref_camera_ae_bracket_hdr_value_hdr)) || this.zQ.SX().JZ() == FunctionState.QUALITY_MULTISHOOTING) {
            return 0;
        }
        return 1;
    }

    protected C0417I vP() {
        if (aSZ() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE) {
            return new C0417I(1280, 960);
        }
        return super.vP();
    }

    protected String wQ() {
        if (vO().getString("pref_live_photo_key", vN(R.string.switch_value_off)).equals("on")) {
            return "nv12";
        }
        return super.wQ();
    }

    protected String xg() {
        if (C0421M.dC().dD().cT() && "-1".equals(vW()) && !this.zQ.Tv() && vX()) {
            return vO().getString("pref_third_arith_hdr_key", vN(R.string.pref_third_arith_hdr_default));
        }
        return "off";
    }

    protected String vU() {
        if (this.zP == C0384o.Jr().Jt()) {
            return vO().getString("pref_snapshot_mirror_key", vN(R.string.pref_snapshot_mirror_default));
        }
        return super.vU();
    }

    protected C0710j vO() {
        if (aTa()) {
            return this.zQ.SW(this.zQ.SQ());
        }
        return super.vO();
    }

    protected int wT() {
        if (C0421M.dC().dD().cc() && aSZ() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_FUSION_MODE) {
            return 2;
        }
        return super.wT();
    }

    protected String vZ() {
        IDualCameraControl$DualCameraMode aSZ = aSZ();
        if (aTa() && (aSZ == IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE || aSZ == IDualCameraControl$DualCameraMode.DUAL_CAMERA_FUSION_MODE)) {
            return "off";
        }
        if (aSZ == IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE || this.zQ.Tv()) {
            return "off";
        }
        return super.vZ();
    }

    private boolean aTa() {
        if (this.zP != C0384o.Jr().Jx()) {
            return false;
        }
        if (C0421M.dC().dD().cc()) {
            return true;
        }
        return C0421M.dC().dD().bF();
    }

    private IDualCameraControl$DualCameraMode aSZ() {
        return this.zQ.SM().arD().Sz();
    }

    protected int wH() {
        if (aSZ() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_FUSION_MODE && this.zQ.SX().JZ() != FunctionState.QUALITY_MULTISHOOTING && "none".equals(vV())) {
            return 1;
        }
        return 0;
    }

    protected String ws() {
        if (aSZ() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE) {
            return "ON";
        }
        return "OFF";
    }

    protected int wW() {
        if (aSZ() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE) {
            return 30;
        }
        if (aSZ() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_FUSION_MODE) {
            return 28;
        }
        if (C0421M.dC().dD().cA() && wN() == 1) {
            return 22;
        }
        if (this.zQ.ST().FD() && this.zQ.ST().FE() && "on".equals(wa())) {
            return 28;
        }
        return 0;
    }

    protected int wN() {
        if (C0421M.dC().dD().cA() && aSZ() == IDualCameraControl$DualCameraMode.SINGLE_CAMERA_AUTO_MODE && C0384o.Jr().Js() == this.zQ.SQ()) {
            return 1;
        }
        return super.wN();
    }
}
