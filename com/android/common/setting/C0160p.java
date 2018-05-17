package com.android.common.setting;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Point;
import android.hardware.Camera.Area;
import android.hardware.Camera.Size;
import android.media.CamcorderProfile;
import android.view.Display;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0105L;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.appService.IDualCameraControl$DualCameraMode;
import com.android.common.cameradevice.C0086j;
import com.android.common.cameradevice.C0382m;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.FunctionState;
import com.android.common.custom.C0405a;
import com.android.common.custom.C0417I;
import com.android.common.custom.C0421M;
import com.p010a.C0090a;
import com.p010a.C0091b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public class C0160p implements C0159c {
    private static String Ac = "video-exposure-to-1080p";
    protected C0105L Aa = null;
    protected C0707g Ab = null;
    private C0329e Ad = null;
    private final C0714q Ae = new C0714q();
    private C0109m Af = null;
    private CameraMember Ag = null;
    private String Ah = null;
    protected ArrayList Ai;
    private String Aj;
    private C0715r Ak = new C0715r(this);
    ArrayList Al;
    protected boolean zX = false;
    protected String zY = "";
    protected int zZ = -1;

    public C0160p(int i, C0329e c0329e, C0105L c0105l) {
        this.Ad = c0329e;
        this.Aa = c0105l;
        this.zZ = i;
        this.Ai = new ArrayList();
        this.Al = new ArrayList();
    }

    public String tC() {
        if (this.Af != null) {
            return this.Af.vU();
        }
        return null;
    }

    public String tQ() {
        if (this.Af != null) {
            return this.Af.wM();
        }
        return null;
    }

    public int tH() {
        if (this.Af != null) {
            return this.Af.wN();
        }
        return 0;
    }

    public String tB() {
        if (this.Af != null) {
            return this.Af.vW();
        }
        return null;
    }

    public boolean tJ() {
        if (this.Af != null) {
            return this.Af.wU();
        }
        return false;
    }

    public String tF() {
        if (this.Af != null) {
            return this.Af.wg();
        }
        return null;
    }

    public boolean tx() {
        boolean z = false;
        if (this.Af == null) {
            return false;
        }
        if ("hdr".equals(this.Af.wY()) || this.Af.wo().equalsIgnoreCase(yG(R.string.pref_camera_ae_bracket_hdr_value_hdr))) {
            z = true;
        } else if (!this.Af.xg().equals("off")) {
            z = true;
        }
        return z;
    }

    public void tV() {
        C0382m Jw = C0384o.Jr().Jw(this.zZ);
        if (Jw != null && this.Ab != null && tD() != null) {
            CameraMember SP = this.Ad.SP();
            if (this.Ag != SP) {
                C0090a.bvo("BaseParametersSetter", "PreferenceChange to (" + SP + ", " + this.zZ + ")");
                C0109m tY = tY();
                if (Jw == null) {
                    C0090a.m1e("BaseParametersSetter", "updateParametersItems failed! because CameraDevice is null.");
                    return;
                }
                synchronized (Jw) {
                    this.Af = tY;
                }
                this.Ah = null;
                this.Ag = SP;
            }
        }
    }

    protected C0086j yy() {
        return C0384o.Jr().Jz(this.zZ);
    }

    private boolean yB() {
        return yy().GN();
    }

    private boolean yC() {
        return yy().GO();
    }

    public boolean tz() {
        if (yy().Gk() > 0) {
            return yz("auto", yy().GC());
        }
        return false;
    }

    public String tR() {
        if (this.Af != null) {
            return this.Af.xm();
        }
        return null;
    }

    public boolean tA() {
        return yy().Gl() > 0;
    }

    public String tG() {
        if (this.Af != null) {
            return this.Af.wa();
        }
        return null;
    }

    private boolean yD() {
        return yy().GC().contains("continuous-picture");
    }

    protected String yG(int i) {
        return this.Ad.SN().getString(i);
    }

    protected boolean yz(String str, List list) {
        return C0616j.apT(str, list);
    }

    protected boolean xJ(C0382m c0382m) {
        if (c0382m == null) {
            C0090a.bvo("BaseParametersSetter", "cameraDevice = null");
        }
        if (yF() == null) {
            C0090a.bvo("BaseParametersSetter", "getPreferences = null");
        }
        if (c0382m == null || yF() == null) {
            return false;
        }
        return true;
    }

    private void yM(C0382m c0382m) {
        if (xJ(c0382m)) {
            zg();
            yj();
            yU();
            yl();
            yk();
            ym();
            yn();
            yo();
            yp();
            yq();
            yr();
            ys();
            ze();
            xF();
            yt();
            ua();
            yu();
        }
    }

    protected void ud(C0382m c0382m) {
        xz();
        xA();
        xB();
        xC();
        xD();
        xE();
        ub(c0382m);
        xF();
        xG();
        xH();
        xI();
        yO();
    }

    protected void uc(C0382m c0382m) {
        if (xJ(c0382m)) {
            xK();
            xL();
            xz();
            xA();
            xB();
            xC();
            xM();
            xN();
            xO();
            xP();
            xQ();
            xR();
            xS();
            xT();
            xU();
            xV();
            xW();
            yR();
            xX();
            yX();
            yS();
            this.zX = false;
            xY();
            xZ();
            zb();
            if (this.zX) {
                xD();
                c0382m.IQ(tD());
                tW();
            }
            yV();
            ya();
            if (C0421M.dC().dD().cv()) {
                yb();
            } else {
                yc();
            }
            yd();
            xH();
            yO();
            if ("auto".equals(this.zY) || "hdr".equals(this.zY)) {
                xD();
                xE();
                ub(c0382m);
            }
            zh();
            zf();
            ye();
            xG();
            yf();
            yg();
            yh();
            xI();
            yN();
            zc();
            yT();
            za();
            yY();
            yM(c0382m);
            yi();
        }
    }

    private void zk() {
        xK();
        xL();
    }

    private void zi() {
        ya();
    }

    private void zj() {
        yc();
    }

    private void yV() {
        int vY = yv().vY();
        tD().GS("ztemt_logo_type", vY);
        yx("LogoType: " + vY);
    }

    protected void xS() {
        tD().GS("pref_camera_demister_state", yv().wC());
        yx("Demister Mode: " + yv().wC() + "; Demister Value: " + yv().wD());
        tD().GS("camera_demister_value", Integer.parseInt(yv().wD()));
    }

    protected void ye() {
        String Gy = tD().Gy();
        String vW = yv().vW();
        if (!(Gy == null || Gy.equals(vW) || (!"-1".equals(Gy) && !"-1".equals(vW)))) {
            this.Ai.add("pref_slow_shutter_key");
        }
        yx("slowShutter: " + vW);
        tD().HB(vW);
        tD().HC(yv().xb());
    }

    protected void ua() {
        String wg = yv().wg();
        if (yz(wg, tD().HS())) {
            yx("FaceDetectionMode: " + wg);
            tD().HT(wg);
            if (wg.equals("on") && !this.Ad.UH()) {
                this.Ad.WZ();
            }
            if (wg.equals("off") && this.Ad.UH()) {
                this.Ad.Xd();
            }
        }
    }

    protected void xV() {
        String wa = yv().wa();
        tD().HJ(wa);
        yx("zsl: " + wa);
    }

    protected void xW() {
        String wa = yv().wa();
        if (yv().wU()) {
            tD().HU(2);
        } else if ("on".equals(wa) || C0616j.ahq) {
            tD().HU(1);
        } else {
            tD().HU(0);
        }
    }

    private void yR() {
        String wv = yv().wv();
        tD().HV(wv);
        yx("CaptureMode: " + wv);
    }

    protected void yt() {
        String wp = yv().wp();
        if (yz(wp, tD().GA())) {
            yx("antiBanding: " + wp);
            tD().GT(wp);
        }
    }

    protected void xF() {
        String wq = yv().wq();
        yx("autoExposure: " + wq);
        if (yz(wq, tD().HW())) {
            tD().HX(wq);
        }
    }

    protected void ys() {
        int parseInt = Integer.parseInt(yv().xa());
        yx("Sharpness: " + parseInt);
        tD().HY(parseInt);
    }

    protected void yr() {
        int parseInt = Integer.parseInt(yv().wx());
        yx("Contrast: " + parseInt);
        tD().HZ(parseInt);
    }

    protected void yq() {
        int parseInt = Integer.parseInt(yv().wX());
        yx("Saturation: " + parseInt);
        tD().Ia(parseInt);
    }

    protected void ze() {
        if (this.zZ == C0384o.Jr().Jx() && C0421M.dC().dD().dq()) {
            tD().GR("tintless", "disable");
        }
    }

    protected void yo() {
        int[] wR = yv().wR();
        if (wR != null) {
            yx("PreviewFpsRange: " + wR[0] + " - " + wR[1]);
            tD().Hw(wR[0], wR[1]);
        }
    }

    protected void yp() {
        String wI = yv().wI();
        if (yz(wI, tD().HQ())) {
            yx("ISO: " + wI);
            tD().Ib(wI);
        }
    }

    protected void ym() {
        String wJ = yv().wJ();
        if (wJ == null) {
            wJ = yv().wE();
        }
        yx("Denoise: " + wJ);
        try {
            if (tD().HR() != null) {
                tD().Ic(wJ);
            }
        } catch (Exception e) {
            C0090a.bvo("BaseParametersSetter", "not support denoise");
        }
    }

    protected void yn() {
        String wV = yv().wV();
        if (yz(wV, tD().Id())) {
            tD().Ie(wV);
        }
    }

    protected void yl() {
        String wZ = yv().wZ();
        if (yz(wZ, tD().If())) {
            tD().Ig(wZ);
        }
    }

    protected void zg() {
        int xp = yv().xp();
        yx("ZoomType: " + xp);
        tD().HD(xp);
    }

    private boolean yK() {
        return tD().Gz() == 1;
    }

    protected void yk() {
        String wo = yv().wo();
        yx("AE Bracketing: new " + wo);
        if (yz(wo, tD().Ih())) {
            if (!wo.equals(tD().Ii())) {
                this.Ai.add("pref_camera_ae_bracket_hdr_key");
            }
            tD().Ij(wo);
            if (wo.equalsIgnoreCase(yG(R.string.pref_camera_ae_bracket_hdr_value_hdr))) {
                tD().GS("num-snaps-per-shutter", 2);
            } else {
                tD().GS("num-snaps-per-shutter", 1);
            }
        } else {
            wo = tD().Ii();
        }
        yx("set " + wo);
    }

    private void yU() {
        int wK = yv().wK();
        Size Gr = tD().Gr();
        if (Gr == null) {
            C0090a.m1e("BaseParametersSetter", "error getPictureSize: size is null");
        } else if (100 != wK || Gr.width < 3200) {
            if (this.Ad.SX().JZ() == FunctionState.QUALITY_MULTISHOOTING) {
                wK = 80;
            }
            if (yK()) {
                wK = 100;
            }
            tD().Hk(wK);
            yx("JPEGQuality: " + wK);
        }
    }

    protected void yj() {
        tD().Hs(yv().wO());
    }

    protected void xz() {
        if (yB()) {
            tD().GW(this.Ad.Td().NK());
            yx("AElock: " + this.Ad.Td().NK());
        }
    }

    protected void xA() {
        if (yC()) {
            tD().GX(this.Ad.Te().Pj());
            yx("AWblock: " + this.Ad.Te().Pj());
        }
    }

    protected void xB() {
        if (tz()) {
            List Mj = this.Ad.Tc().Mj();
            tD().Hc(Mj);
            if (Mj == null || Mj.size() == 0) {
                yx("FocusAreas: " + Mj);
            } else {
                yx("FocusAreas: " + ((Area) Mj.get(0)).rect);
            }
        }
    }

    protected void xC() {
        if (tA()) {
            List NO = this.Ad.Td().NO();
            tD().Hn(NO);
            if (NO == null || NO.size() == 0) {
                yx("MeteringAreas: " + NO);
            } else {
                yx("MeteringAreas: " + ((Area) NO.get(0)).rect);
            }
        }
    }

    private void zd(C0086j c0086j, C0417I c0417i) {
        String str;
        String str2 = "";
        for (Size size : c0086j.GD()) {
            if (size.height != 0 && size.width * c0417i.height == size.height * c0417i.width) {
                c0086j.Hl(size.width, size.height);
                str = size.width + "x" + size.height;
                break;
            }
        }
        str = str2;
        yx("ThumbnailSize: " + str);
    }

    protected void xM() {
        String vQ = yv().vQ();
        if (vQ == null) {
            yH(yF(), this.Ad.SN(), tD(), this.zZ == C0384o.Jr().Jt());
            yx("PictureSize: null, initialize");
            return;
        }
        yx("setting PictureSize: " + vQ);
        Size Gr = tD().Gr();
        yQ(vQ, yv().vR(), tD(), 0.0d, null);
        Size Gr2 = tD().Gr();
        yx("old PictureSize: " + Gr.width + " x " + Gr.height + "; new PictureSize: " + Gr2.width + " x " + Gr2.height);
    }

    private void yZ(boolean z) {
        this.Ad.WE(z);
    }

    protected void xY() {
        Size Gv = tD().Gv();
        C0417I vP = yv().vP();
        tD().GS("nubia_max_preview_enable", yv().wm());
        if (vP.width == Gv.width && vP.height == Gv.height) {
            Size Gh = tD().Gh();
            if (Gh.width == Gv.width && Gh.height == Gv.height && yE() != IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE) {
                zd(tD(), vP);
            }
        } else {
            tD().setPreviewSize(vP.width, vP.height);
            zd(tD(), vP);
            this.zX = true;
            yZ(true);
            C0090a.bvo("BaseParametersSetter", "Preview Size changed. Restart Preview");
        }
        yx("PreviewSize: optional: " + vP.width + "x" + vP.height + ", original: " + Gv.width + "x" + Gv.height);
    }

    protected void xZ() {
        this.zY = yv().wY();
        yx("mSceneMode: new " + this.zY);
        if (!yz(this.zY, tD().GJ())) {
            this.zY = tD().Gx();
            if (this.zY == null) {
                this.zY = "auto";
            }
        } else if (!this.zY.equals(tD().Gx())) {
            if ("hdr".equals(tD().Gx()) || "hdr".equals(this.zY)) {
                this.Ai.add("pref_camera_ae_bracket_hdr_key");
            }
            tD().HA(this.zY);
            if (this.Ad.VC() || this.zY.equals("auto")) {
                tD().GR("hdr-need-1x", "false");
            } else {
                tD().GR("hdr-need-1x", "true");
            }
            this.zX = true;
        }
        yx("set " + this.zY);
    }

    protected void ya() {
        String vV = yv().vV();
        String Gf = tD().Gf();
        if (!vV.equals(Gf) && ("none".equals(Gf) || "none".equals(vV))) {
            this.Ai.add("ztemt_effect_type");
        }
        tD().He(vV);
        yx("ZtemtEffect: " + vV);
    }

    protected void yc() {
        String wy = yv().wy();
        int wd = yv().wd();
        int wc = yv().wc();
        int wb = yv().wb();
        int i = wy.equals(yG(R.string.setting_on_value)) ? 2 : 0;
        tD().Hu(i, wd, wc, wb);
        yx("pretty: " + i + ", smooth: " + wd + ", toning: " + wc + ", slimming: " + wb);
    }

    protected void yb() {
        String str = yG(R.string.setting_on_value).equals(yv().xn()) ? "On" : "Off";
        yx("ZKPretty: " + str);
        tD().HF(str, 100, 35);
    }

    protected void xH() {
        int wG = yv().wG();
        int Gi = tD().Gi();
        int Gn = tD().Gn();
        yx("ExposureCompensation: " + wG);
        if (wG < Gn || wG > Gi) {
            C0090a.bvj("BaseParametersSetter", "invalid exposure range: " + wG);
        } else {
            tD().Ha(wG);
        }
    }

    private boolean yJ() {
        return yG(R.string.switch_value_on).equals(yF().getString("pref_bokeh_level_adjustable", yG(R.string.switch_value_off)));
    }

    private void yO() {
        if (yE() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE && yJ()) {
            float f = yF().getFloat("pref_bigaperture_pre_bokeh_level", C0716s.zo());
            tD().GR("bokeh-level", String.valueOf(f));
            yx("AperLevel: " + f);
            return;
        }
        tD().GR("bokeh-level", String.valueOf(C0716s.zo()));
    }

    protected void xD() {
        String vZ = yv().vZ();
        if (this.Ad.SU().RM() || tx()) {
            vZ = "off";
        }
        yx("FlashMode: " + vZ);
        if (yz(vZ, yv().xf())) {
            tD().Hb(vZ);
        }
    }

    protected void xE() {
        String xm = yv().xm();
        yx("WhiteBalance: " + xm + ";MwbArea: " + C0616j.apq(this.Ad.Te().Pm()));
        if (yz(xm, tD().GL())) {
            tD().HE(xm);
            tD().Ik(null);
        } else {
            tD().HE("auto");
            tD().Ik(this.Ad.Te().Pm());
        }
        yW();
    }

    private void yW() {
        int wL = yv().wL();
        yx("ManualWb: " + wL);
        tD().Hm(wL);
    }

    protected void ub(C0382m c0382m) {
        int vM = yv().vM();
        String wh = yv().wh();
        if (yz(wh, this.Ab.uz())) {
            tD().Hd(wh);
        } else {
            wh = (String) this.Ab.uz().get(0);
            tD().Hd(wh);
        }
        yA(wh, c0382m);
        if (vM != -1) {
            tD().HN(vM);
        }
        yx("FocusMode: " + wh + "; Manual: " + vM);
    }

    protected void yA(String str, C0382m c0382m) {
        if (yD()) {
            if (c0382m == null) {
                C0090a.m1e("BaseParametersSetter", "setAutoFocusMoveCallback fail, because getCameraDevice is null! mCameraId is " + this.zZ);
            } else if (str.equals("continuous-picture")) {
                c0382m.IU(this.Ae);
            } else {
                c0382m.IU(null);
            }
        }
    }

    protected void xU() {
        if (C0421M.dC().dD().cw()) {
            String wM = yv().wM();
            if (!wM.equals(this.Ah) && ("off".equals(wM) || "off".equals(this.Ah))) {
                this.Ai.add("night_key");
            }
            this.Ah = wM;
            yx("Night: " + wM);
            tD().Hp(wM);
        }
    }

    protected void yd() {
        if (C0421M.dC().dD().cy()) {
            String xe = yv().xe();
            if (this.zZ != C0384o.Jr().Jt()) {
                yx("Stabilization: " + xe);
                if (xe.equals("on")) {
                    tD().GS("ois_key", 1);
                } else if (xe.equals("off")) {
                    tD().GS("ois_key", 0);
                } else {
                    tD().GS("ois_key", 2);
                }
            }
        }
    }

    public void tU(int i) {
        yP(i, false);
    }

    public void tE(int i) {
        yP(i, true);
    }

    private void yP(int i, boolean z) {
        C0090a.bvo("BaseParametersSetter", "setCameraParameters " + this.zZ + ", type: " + i + (z ? " sync" : " async"));
        C0382m Jw = C0384o.Jr().Jw(this.zZ);
        if (xJ(Jw)) {
            tV();
            if (this.Af != null) {
                synchronized (Jw) {
                    this.Aj = "";
                    if ((i & 4) != 0) {
                        uc(Jw);
                    } else if ((i & 8) != 0) {
                        ud(Jw);
                    } else if ((i & 16) != 0) {
                        zk();
                    } else if ((i & 32) != 0) {
                        zi();
                    } else if ((i & 64) != 0) {
                        zj();
                    }
                    if (z) {
                        Jw.IQ(tD());
                    } else {
                        Jw.Jo(tD());
                    }
                    C0090a.bvo("BaseParametersSetter", this.Aj);
                    this.Aj = null;
                }
                yL();
            }
        }
    }

    protected C0109m yv() {
        return this.Af;
    }

    private SharedPreferences yF() {
        return this.Ad.SS();
    }

    protected void xT() {
        String ww = yv().ww();
        int parseInt = ww == null ? 0 : Integer.parseInt(ww);
        yx("ColorFilter: " + parseInt);
        tD().GZ(parseInt, this.Ad.To());
        this.Ad.Ut(parseInt);
    }

    protected void yu() {
        tD().Il(yv().wP());
    }

    private void yN() {
        tD().Hq(0);
    }

    public boolean ty() {
        if (this.Af != null) {
            return this.Af.vX();
        }
        return true;
    }

    public boolean tN() {
        if (this.Af != null) {
            return this.Af.xr();
        }
        return false;
    }

    public boolean tK() {
        if (this.Af != null) {
            Size Gr = tD().Gr();
            String str = Gr.width + "x" + Gr.height;
            String vQ = yv().vQ();
            if (!(vQ == null || vQ.equals(str))) {
                return true;
            }
        }
        return false;
    }

    public C0417I tM() {
        if (this.Af == null) {
            return null;
        }
        String vQ = this.Af.vQ();
        int indexOf = vQ.indexOf(120);
        if (indexOf == -1) {
            return null;
        }
        return new C0417I(Integer.parseInt(vQ.substring(0, indexOf)), Integer.parseInt(vQ.substring(indexOf + 1)));
    }

    private boolean yI() {
        return C0421M.dC().dD().bD();
    }

    protected void xG() {
        if (yI()) {
            if (!this.Ad.Te().OY() || this.Ad.Te().OZ()) {
                tD().GV(0);
            } else {
                tD().GV(1);
            }
        }
    }

    protected void xI() {
        if (this.Ad.Td().NE()) {
            tD().Ho(1);
        } else {
            tD().Ho(0);
        }
    }

    protected void yf() {
        int wr = yv().wr();
        yx("BestPhotoMode: " + wr);
        tD().GS("best_photo", wr);
    }

    protected void yg() {
        int xc = yv().xc();
        tD().GS("snapshot-burst-num", xc);
        yx("burst-num: " + xc);
    }

    protected void yx(String str) {
        this.Aj += str + "; ";
    }

    public String tL() {
        String str = "auto";
        if (this.Af != null) {
            return yv().vM() != -1 ? "manual" : yv().wh();
        } else {
            if (tD() != null) {
                return tD().Ge();
            }
            return str;
        }
    }

    public boolean tS() {
        if (this.Af != null) {
            return this.Af.xv();
        }
        return false;
    }

    public void yi() {
    }

    protected C0109m tY() {
        C0109m abB = this.Aa.abB(yw(), this.zZ, null);
        abB.wi(this.zZ, this.Ab);
        return abB;
    }

    protected C0329e yw() {
        return this.Ad;
    }

    protected void yL() {
        int size = this.Ai.size();
        if (size >= 1) {
            this.Ak.Ao = size;
            for (int i = 0; i < size; i++) {
                this.Ak.An[i] = (String) this.Ai.get(i);
            }
            this.Ai.clear();
            if (this.Ad.SN() != null) {
                this.Ad.SN().runOnUiThread(new C0717u(this));
            }
        }
    }

    public void tO(C0115d c0115d) {
        if (!this.Al.contains(c0115d)) {
            this.Al.add(c0115d);
        }
    }

    public void tT(C0115d c0115d) {
        this.Al.remove(c0115d);
    }

    protected void yh() {
        int wt = yv().wt();
        yx("cameraMode = " + wt);
        tD().GY(wt);
    }

    protected void xX() {
        int Im = tD().Im();
        int wT = yv().wT();
        tD().In(wT);
        C0090a.bvo("MonoCameraConnector", "old rawMode: " + Im + "; new rawMode: " + wT);
        if (Im != wT) {
            yZ(true);
        }
    }

    public CamcorderProfile tP() {
        if (this.Af != null) {
            return this.Af.xh();
        }
        return null;
    }

    protected void xK() {
        int wS = yv().wS();
        if (wS == -1) {
            Collection GH = tD().GH();
            if (GH != null) {
                tD().Hx(((Integer) Collections.max(GH)).intValue());
                return;
            }
            return;
        }
        tD().Hx(wS);
    }

    protected void xP() {
        String xj = yv().xj();
        tD().Io(xj);
        yx("hfr: " + xj);
    }

    protected void xQ() {
        String xk = yv().xk();
        tD().Ip(xk);
        yx("hsr: " + xk);
    }

    protected void xL() {
        boolean wU = yv().wU();
        yx("RecordingHint " + wU);
        tD().Hy(wU);
    }

    protected void xN() {
        int[] xl = yv().xl();
        tD().Iq(xl[0], xl[1]);
    }

    protected void xR() {
        tD().Hv(yv().wQ());
    }

    protected void xO() {
        tD().GS(Ac, yv().xi());
    }

    private void yS() {
        C0405a dD = C0421M.dC().dD();
        if (dD.cc() || dD.bF() || this.Ad.SP() == CameraMember.DUALCAMERACALIBRATION) {
            int wH = yv().wH();
            int wW = yv().wW();
            String ws = yv().ws();
            String wn = yv().wn();
            C0090a.bvo("MonoCameraConnector", "cameraId: " + this.zZ + "; cm_fusion mode: " + wH + " AL3200_SCID: " + wW + "; altek-boken-enalbe:" + ws + "; altek-3D-type:" + wn);
            if (wn != null) {
                tD().Ir(wn);
            }
            tD().Is(wH);
            tD().HM(wW);
            tD().It(ws);
        }
    }

    private void yX() {
        C0090a.bvo("BaseParametersSetter", "nubia optical zoom value " + yv().wN());
        tD().GS("nubia_optics_zoom", yv().wN());
    }

    public void tW() {
        C0382m Jw = C0384o.Jr().Jw(this.zZ);
        if (Jw != null) {
            if (this.Ab == null) {
                this.Ab = new C0707g(Jw.IP(), this.zZ);
            } else {
                this.Ab.uH(Jw.IP());
            }
        } else if (this.Ab != null) {
            this.Ab.uH(null);
        }
    }

    public C0086j tD() {
        if (this.Ab == null || this.Ab.ux() == null) {
            tW();
        }
        if (this.Ab == null) {
            return null;
        }
        return this.Ab.ux();
    }

    private void yH(SharedPreferences sharedPreferences, Context context, C0086j c0086j, boolean z) {
        Object<Size> GG = c0086j.GG();
        if (GG != null) {
            double d = 0.0d;
            C0405a dD = C0421M.dC().dD();
            if (dD.dj() || (z && dD.di())) {
                Display defaultDisplay = ((Activity) context).getWindowManager().getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                d = ((double) Math.max(point.x, point.y)) / ((double) Math.min(point.x, point.y));
            }
            String[] strArr = new String[]{null};
            for (Size size : GG) {
                String str = size.width + "x" + size.height;
                C0090a.bvo("BaseParametersSetter", "initialCameraPictureSize candidate =" + str);
                if (yQ(str, GG, c0086j, d, strArr)) {
                    Editor edit = sharedPreferences.edit();
                    String str2 = "pref_camera_picturesize_key";
                    if (strArr[0] != null) {
                        str = strArr[0];
                    }
                    edit.putString(str2, str);
                    edit.apply();
                    return;
                }
            }
            C0090a.m1e("BaseParametersSetter", "No supported picture size found");
        }
    }

    private boolean yQ(String str, List list, C0086j c0086j, double d, String[] strArr) {
        int indexOf = str.indexOf(120);
        if (indexOf == -1) {
            return false;
        }
        int parseInt = Integer.parseInt(str.substring(0, indexOf));
        int parseInt2 = Integer.parseInt(str.substring(indexOf + 1));
        if (d != 0.0d && Math.abs((((double) parseInt) / ((double) parseInt2)) - d) > 0.10000000149011612d) {
            return false;
        }
        for (Size size : list) {
            if (C0616j.apS(size, parseInt, parseInt2)) {
                c0086j.Ht(size.width, size.height);
                if (strArr != null && strArr.length >= 1) {
                    strArr[0] = size.width + "x" + size.height;
                }
                return true;
            }
        }
        return false;
    }

    public String tI() {
        if (this.Af != null) {
            return this.Af.xg();
        }
        return null;
    }

    private void zb() {
        if (C0421M.dC().dD().cT()) {
            String xg = yv().xg();
            if (!xg.equals(tD().FX("third_arith_hdr"))) {
                this.Ai.add("pref_camera_ae_bracket_hdr_key");
            }
            yx("thirdArithHdr: " + xg);
            if (xg.equals("on")) {
                tD().GS("third_arith_hdr", 1);
                return;
            } else if (xg.equals("auto")) {
                tD().GS("third_arith_hdr", 2);
                return;
            } else {
                tD().GS("third_arith_hdr", 0);
                return;
            }
        }
        yx("thirdArithHdr: off");
        tD().GS("third_arith_hdr", 0);
    }

    private IDualCameraControl$DualCameraMode yE() {
        return this.Ad.SM().arD().Sz();
    }

    private void zc() {
        this.Ad.WG();
    }

    private void zh() {
        int xq = yv().xq();
        if (xq != -1) {
            tD().HG(xq);
        }
    }

    private void zf() {
        String str = "-1";
        if (this.Af != null) {
            str = this.Af.xo();
        }
        C0091b.bvr("setZoomBlurType", "type " + str);
        tD().GR("zoom-blur-type", str);
    }

    private void yT() {
        if (ty()) {
            tD().GR("continue-shot", "off");
        } else {
            tD().GR("continue-shot", "on");
        }
    }

    private void za() {
        tD().GS("nubia_exif_rotation", this.Af.xd());
    }

    protected void yY() {
        String str;
        if (yv().xu()) {
            str = "on";
        } else {
            str = "off";
        }
        tD().GR("nubia_bokeh_gallery", str);
        yx("refocusInGallery: " + str);
    }
}
