package com.android.common.setting;

import android.hardware.Camera.Size;
import android.media.CamcorderProfile;
import android.media.CameraProfile;
import com.android.camera.R;
import com.android.common.ActivityBase;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.appService.IDualCameraControl$DualCameraMode;
import com.android.common.cameradevice.C0086j;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.FunctionState;
import com.android.common.custom.C0417I;
import com.android.common.custom.C0421M;
import com.p010a.C0090a;
import java.util.Arrays;
import java.util.List;

public abstract class C0109m {
    protected C0707g zO = null;
    protected int zP = -1;
    protected C0329e zQ = null;
    protected CamcorderProfile zR = null;

    public C0109m(C0329e c0329e) {
        this.zQ = c0329e;
    }

    public void wi(int i, C0707g c0707g) {
        this.zP = i;
        this.zO = c0707g;
    }

    protected int wC() {
        return 0;
    }

    protected String wD() {
        return vO().getString("pref_camera_demister_value", "50");
    }

    protected String vQ() {
        return wf();
    }

    protected C0417I vP() {
        Size Gr = wl().Gr();
        return we(((double) Gr.width) / ((double) Gr.height));
    }

    protected int[] wR() {
        return null;
    }

    protected String vV() {
        return vO().getString("pref_camera_ztemt_fun_effect", vN(R.string.pref_camera_ztemt_fun_effect_default));
    }

    protected String wY() {
        return vN(R.string.pref_camera_scenemode_default);
    }

    protected int wK() {
        return CameraProfile.getJpegEncodingQualityParameter(2);
    }

    protected int wG() {
        int parseInt;
        String string = vO().getString("pref_camera_exposure_key", "0");
        if (string != null) {
            parseInt = Integer.parseInt(string);
        } else {
            parseInt = 0;
        }
        if ("off".equals(wM()) || parseInt <= 0) {
            return parseInt;
        }
        return 0;
    }

    protected String vZ() {
        if (xs() || !wM().equals("off") || !"-1".equals(vW()) || this.zQ.Td().NY() || "point-measure".equals(xm())) {
            return "off";
        }
        if (this.zP != C0384o.Jr().Jt()) {
            return vO().getString("pref_camera_flashmode_key", vN(R.string.pref_camera_flashmode_default));
        }
        if (!this.zQ.TX() || xs()) {
            return vO().getString("pref_camera_front_flashmode_key", vN(R.string.pref_camera_flashmode_default));
        }
        return "on";
    }

    protected String xm() {
        String wA = wA();
        if (xt()) {
            return vO().getString("pref_camera_whitebalance_key", vN(R.string.pref_camera_whitebalance_default));
        }
        return wA;
    }

    protected int wL() {
        if (xt()) {
            return vO().getInt("wb-manual-cct", Integer.parseInt(vN(R.string.wb_manual_cct_default_value)));
        }
        return 0;
    }

    protected String wO() {
        return vO().getString("pref_camera_pictureformat_key", vN(R.string.pref_camera_picture_format_default));
    }

    protected String wo() {
        return vN(R.string.pref_camera_ae_bracket_hdr_default);
    }

    protected String wJ() {
        String string = vO().getString("pref_intelligent_noise_reduction_key", null);
        if (string != null) {
            return "denoise-" + string;
        }
        return string;
    }

    protected String wE() {
        return vO().getString("pref_camera_denoise_key", C0421M.dC().dD().bi());
    }

    protected String wV() {
        return "disable";
    }

    protected String wZ() {
        return "auto";
    }

    protected String wI() {
        String wz = wz();
        if (!xt()) {
            return wz;
        }
        if (!"off".equals(wM()) || xs()) {
            return vN(R.string.pref_camera_iso_default);
        }
        return vO().getString("pref_camera_iso_key", vN(R.string.pref_camera_iso_default));
    }

    protected String wX() {
        return vN(R.string.pref_camera_saturation_default);
    }

    protected String wx() {
        return vN(R.string.pref_camera_contrast_default);
    }

    protected String xa() {
        return vN(R.string.pref_camera_sharpness_default);
    }

    protected String wq() {
        String string = vO().getString("pref_camera_exposure_disable_key", "off");
        if ("off".equals(string)) {
            return vN(R.string.pref_camera_autoexposure_value_centerweighted);
        }
        return string;
    }

    protected String wp() {
        return vO().getString("pref_camera_antibanding_key", vN(R.string.pref_camera_antibanding_default));
    }

    protected String wa() {
        if ((!xs() || C0421M.dC().dD().dd()) && (vW().equals("-1") || !wM().equals("off"))) {
            return C0421M.dC().dD().bo();
        }
        return "off";
    }

    protected String wg() {
        return "off";
    }

    protected C0710j vO() {
        return this.zQ.SW(this.zP);
    }

    protected String vN(int i) {
        return this.zQ.SN().getString(i);
    }

    protected String wM() {
        return "off";
    }

    protected String xe() {
        String[] Rz = this.zQ.SU().Rz(this.zQ);
        if (Rz == null) {
            C0090a.bvm("BaseParameterItems", "Statibilization keys null, just use off");
            return "off";
        } else if (Arrays.asList(Rz).contains("pref_camera_stabilization_key")) {
            return vO().getString("pref_camera_stabilization_key", C0421M.dC().dD().bl());
        } else {
            return "off";
        }
    }

    protected int vM() {
        if (xt()) {
            return vO().getInt("maf_key", -1);
        }
        return -1;
    }

    protected String wh() {
        if (vM() != -1) {
            return "manual";
        }
        if (this.zP == C0384o.Jr().Jx() && wF() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_FUSION_MODE) {
            return "manual";
        }
        if (this.zP == C0384o.Jr().Jx() && (wF() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE || this.zQ.SP() == CameraMember.PHOTO3D)) {
            return "af-mapping";
        }
        return this.zQ.Tc().Mk();
    }

    private IDualCameraControl$DualCameraMode wF() {
        return this.zQ.SM().arD().Sz();
    }

    protected String ww() {
        if ("auto".equals(xm())) {
            return vO().getString("pref_camera_colorfilter_key", vN(R.string.pref_camera_colorfilter_default));
        }
        return vN(R.string.pref_camera_colorfilter_default);
    }

    protected String wy() {
        return "off";
    }

    protected String xn() {
        return "off";
    }

    protected boolean xv() {
        return false;
    }

    protected int wd() {
        return Integer.parseInt(vO().getString("pref_camera_pretty_smooth_key", vN(R.string.pref_camera_pretty_smooth_default)));
    }

    protected int wc() {
        return Integer.parseInt(vO().getString("pref_camera_pretty_toning_key", vN(R.string.pref_camera_pretty_toning_default)));
    }

    protected int wb() {
        return Integer.parseInt(vO().getString("pref_camera_pretty_slimming_key", vN(R.string.pref_camera_pretty_slimming_default)));
    }

    protected String vU() {
        return "off";
    }

    protected String vW() {
        String wB = wB();
        if (xt()) {
            return wk(vO().getString("pref_slow_shutter_min_key", "0"), vO().getString("pref_slow_shutter_sec_key", "0"));
        }
        return wB;
    }

    protected int xb() {
        return 0;
    }

    protected String wP() {
        if (((ActivityBase) this.zQ.SN()).atJ()) {
            return "flip-v";
        }
        return "off";
    }

    protected boolean xt() {
        return false;
    }

    protected boolean vX() {
        return true;
    }

    protected String wz() {
        return vN(R.string.pref_camera_iso_default);
    }

    protected String wA() {
        return vN(R.string.pref_camera_whitebalance_default);
    }

    protected String wB() {
        return "-1";
    }

    protected String wk(String str, String str2) {
        String valueOf;
        wB();
        int parseInt = Integer.parseInt(str);
        int indexOf = str2.indexOf(47);
        if (indexOf == -1) {
            valueOf = String.valueOf((parseInt * 60) + Integer.parseInt(str2));
        } else if (parseInt != 0) {
            valueOf = String.valueOf(parseInt * 60);
        } else {
            valueOf = String.valueOf(((float) Integer.parseInt(str2.substring(0, indexOf))) / ((float) Integer.parseInt(str2.substring(indexOf + 1))));
        }
        if (C0616j.apu("0", valueOf)) {
            return "-1";
        }
        return valueOf;
    }

    protected int xc() {
        return 1;
    }

    protected int wr() {
        return 0;
    }

    protected List vR() {
        return this.zO.uB();
    }

    protected List xf() {
        return this.zO.uy();
    }

    protected String wf() {
        return this.zO.uw();
    }

    protected String wj() {
        return this.zO.uv();
    }

    protected int wt() {
        return 0;
    }

    protected int wT() {
        return 0;
    }

    public boolean xr() {
        return false;
    }

    protected int vY() {
        if (C0421M.dC().dD().cq()) {
            return C0616j.apd(this.zQ);
        }
        return 0;
    }

    protected int wS() {
        return -1;
    }

    protected boolean wU() {
        return false;
    }

    protected String wQ() {
        return "yuv420sp";
    }

    protected int[] xl() {
        List GK = wl().GK();
        return new int[]{((Size) GK.get(0)).width, ((Size) GK.get(0)).height};
    }

    protected int xi() {
        return 0;
    }

    protected String xj() {
        return "off";
    }

    protected String xk() {
        return "off";
    }

    protected CamcorderProfile xh() {
        return null;
    }

    protected boolean xs() {
        if (wY().equals("hdr") || wo().equalsIgnoreCase(vN(R.string.pref_camera_ae_bracket_hdr_value_hdr)) || !xg().equals("off")) {
            return true;
        }
        return false;
    }

    protected C0086j wl() {
        return this.zO.ux();
    }

    protected int wu() {
        return this.zP;
    }

    protected String xg() {
        return "off";
    }

    protected static String vS(String str, List list) {
        String[] split = str.split(":");
        double parseInt = ((double) Integer.parseInt(split[0])) / ((double) Integer.parseInt(split[1]));
        int i = 0;
        Size size = null;
        for (Size size2 : list) {
            Size size3;
            int i2;
            if (parseInt == 0.0d || Math.abs((((double) size2.width) / ((double) size2.height)) - parseInt) <= 0.10000000149011612d) {
                int i3 = size2.width * size2.height;
                if (i3 > i) {
                    size3 = size2;
                    i2 = i3;
                } else {
                    i2 = i;
                    size3 = size;
                }
            } else {
                i2 = i;
                size3 = size;
            }
            size = size3;
            i = i2;
        }
        if (size == null) {
            return null;
        }
        return size.width + "x" + size.height;
    }

    protected int xp() {
        if (vO().getString("pref_zoom_function_key", "on").equals("on") && CameraMember.aat(this.zQ.SP(), wu())) {
            return 1;
        }
        return 0;
    }

    protected String wv() {
        if (this.zQ.SX().JZ() == FunctionState.QUALITY_MULTISHOOTING) {
            return "continuousshot";
        }
        return "normal";
    }

    protected final C0417I we(double d) {
        Size apD = C0616j.apD(this.zQ.SN(), this.zO.ur(), d);
        if (apD == null) {
            return null;
        }
        return new C0417I(apD.width, apD.height);
    }

    protected int wH() {
        return 0;
    }

    protected int wW() {
        return 0;
    }

    protected String ws() {
        return "OFF";
    }

    protected int xq() {
        if (this.zQ.SM().ary() != null) {
            return this.zQ.SM().ary().acU();
        }
        return -1;
    }

    protected String xo() {
        return "-1";
    }

    protected int wN() {
        return 0;
    }

    protected int xd() {
        return 1;
    }

    protected String vT(String str) {
        int indexOf = str.indexOf(120);
        if (indexOf == -1) {
            return null;
        }
        return (Integer.parseInt(str.substring(0, indexOf)) / 2) + "x" + (Integer.parseInt(str.substring(indexOf + 1)) / 2);
    }

    protected int wm() {
        return 0;
    }

    protected String wn() {
        return null;
    }

    protected boolean xu() {
        return false;
    }
}
