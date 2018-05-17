package com.android.common.appService;

import android.app.Activity;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.AssetFileDescriptor;
import android.hardware.Camera.Face;
import android.hardware.Camera.PictureCallback;
import android.hardware.Camera.ShutterCallback;
import android.location.Location;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Handler;
import android.widget.Toast;
import com.android.camera.R;
import com.android.common.ActivityBase;
import com.android.common.C0261C;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.C0771x;
import com.android.common.cameradevice.C0086j;
import com.android.common.cameradevice.C0378d;
import com.android.common.cameradevice.C0382m;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.C0404b;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.custom.C0421M;
import com.android.common.independentFocusExposure.C0584a;
import com.android.common.independentFocusExposure.C0586b;
import com.android.common.independentFocusExposure.C0592h;
import com.android.common.independentFocusExposure.C0598n;
import com.android.common.independentFocusExposure.CameraFocusService$FocusModeState;
import com.android.common.p012e.C0458b;
import com.android.common.p012e.C0467m;
import com.android.common.p015f.C0526a;
import com.android.common.p015f.C0527b;
import com.android.common.p015f.C0528c;
import com.android.common.p015f.C0529d;
import com.android.common.p015f.C0530e;
import com.android.common.p015f.C0531f;
import com.android.common.p016a.C0126g;
import com.android.common.p016a.C0287a;
import com.android.common.p023b.C0358g;
import com.android.common.p023b.C0363l;
import com.android.common.p024d.C0445a;
import com.android.common.p024d.C0448l;
import com.android.common.p024d.C0449d;
import com.android.common.p024d.C0454j;
import com.android.common.p028h.C0557a;
import com.android.common.p029i.C0564c;
import com.android.common.setting.C0157n;
import com.android.common.setting.C0159c;
import com.android.common.setting.C0706f;
import com.android.common.setting.C0708h;
import com.android.common.setting.C0710j;
import com.android.common.setting.C0712l;
import com.android.common.setting.IconListPreference;
import com.android.common.setting.ListPreference;
import com.android.common.setting.PreferenceGroup;
import com.android.common.storagemanager.C0722e;
import com.android.common.ui.FaceView;
import com.android.common.ui.aa;
import com.android.common.ui.am;
import com.p010a.C0090a;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Collection;

public class C0329e {
    public static int[] Qu = new int[257];
    private static String TAG = "AppService";
    private boolean OO;
    private boolean OP = false;
    public boolean OQ;
    private boolean OR = false;
    private Activity OS = null;
    private int OT;
    private final C0528c OU = new C0528c(this);
    private long OV = 0;
    private boolean OW;
    private String OX;
    private int OY = 1;
    private C0592h OZ = null;
    private boolean PA = false;
    private boolean PB = false;
    private boolean PC = false;
    private boolean PD = false;
    private byte[] PE = null;
    private int PF = 0;
    private C0363l PG = null;
    private C0564c PH = null;
    private MediaPlayer PI;
    private ContentProviderClient PJ = null;
    public C0378d PK = null;
    private C0105L PL = null;
    private int PM = 0;
    private C0445a PN = null;
    private C0358g PO = null;
    private C0598n PP = null;
    private C0335j PQ = null;
    private Thread PR;
    private C0328d PS = null;
    private boolean PT = false;
    private C0378d PU = null;
    private C0306I PV = null;
    private final C0529d PW = new C0529d(this);
    private long PX = 0;
    private PreferenceGroup PY = null;
    private C0309M PZ;
    private C0170a Pa;
    private C0586b Pb = null;
    private CameraMember Pc = CameraMember.NORMAL;
    private aa Pd = null;
    private C0771x Pe = null;
    private C0350z Pf = null;
    private boolean Pg = true;
    private long Ph = 0;
    private C0448l Pi;
    private int Pj;
    private int Pk = -1;
    private int Pl = -1;
    private boolean Pm = false;
    private Face[] Pn;
    private boolean Po = false;
    private boolean Pp = false;
    private boolean Pq = false;
    private C0584a Pr = null;
    private long Ps = 0;
    private C0310N Pt = new C0310N();
    private Handler Pu = null;
    private boolean Pv = true;
    private boolean Pw = false;
    private boolean Px = false;
    private boolean Py = false;
    private boolean Pz = false;
    private C0332g Qa = null;
    private boolean Qb = true;
    private boolean Qc = false;
    private final C0526a Qd = new C0526a(this);
    private long Qe = 0;
    private int Qf = 0;
    private int Qg;
    private boolean Qh = false;
    private C0706f Qi = null;
    private final C0527b Qj = new C0527b(this);
    private long Qk = 0;
    private PictureCallback Ql;
    private am Qm = null;
    private C0722e Qn = new C0722e();
    private int Qo;
    private Toast Qp = null;
    private int Qq = -1;
    private int[] Qr;
    private C0316U Qs = null;
    private int Qt;

    public C0329e() {
        this.Pi = C0616j.ahq ? new C0449d(this) : new C0454j(this);
        this.PR = null;
        this.OO = false;
        this.Qg = 0;
        this.OQ = false;
        this.Ql = null;
        this.OW = false;
        this.OX = "";
        this.Pa = null;
        this.Pj = -1;
        this.Qt = 0;
        this.OT = 0;
        this.PZ = null;
        this.Qr = new int[4];
    }

    public void Tx(C0358g c0358g) {
        this.PO = c0358g;
    }

    public void Vj(ActivityBase activityBase, Handler handler, C0170a c0170a, C0105L c0105l, C0157n c0157n) {
        this.OS = activityBase;
        this.Pu = handler;
        this.Pa = c0170a;
        this.PL = c0105l;
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(R.xml.camera_preferences));
        Collection ZL = this.PL.ZL();
        if (ZL != null) {
            arrayList.addAll(ZL);
        }
        this.Qi = new C0706f(this, c0105l, c0157n, arrayList);
        this.Qa = new C0332g(this);
        this.PZ = new C0309M();
        this.PQ = new C0335j(this.OS);
        Vr(activityBase);
        Vp(this.OS);
    }

    public void release() {
        this.OS = null;
        this.Pu = null;
        this.Pa = null;
        this.PL = null;
        this.Pd = null;
        this.Qi = null;
        this.PQ = null;
        Vr(null);
    }

    private void Vr(ActivityBase activityBase) {
        if (activityBase != null) {
            this.Qn.amc(new C0331f(this));
            return;
        }
        this.Qn.alV();
        this.Qn.amc(null);
    }

    private void Vp(Activity activity) {
        boolean z = false;
        if (activity != null) {
            boolean equals;
            Intent intent = SN().getIntent();
            if (intent.getStringExtra("RQR") != null) {
                equals = intent.getStringExtra("RQR").equals("launcherCamera");
            } else {
                equals = false;
            }
            this.Pw = equals;
            String action = intent.getAction();
            if ("android.media.action.VIDEO_CAMERA".equals(action) || "android.media.action.VIDEO_CAPTURE".equals(action) || "android.media.action.START_CAMCORDER".equals(action)) {
                this.PC = true;
            }
            this.Py = intent.getBooleanExtra("factory", false);
            this.Pz = "android.media.action.IMAGE_CAPTURE".equals(action);
            this.OR = intent.getBooleanExtra("wlancamera", false);
            if ("com.android.camera.action.subcamtest".equals(action) && C0384o.Jr().Jv() >= 3) {
                z = true;
            }
            this.PB = z;
        }
    }

    public C0722e Ti() {
        return this.Qn;
    }

    public boolean VC() {
        return this.Pz;
    }

    public boolean Vw() {
        return this.Pw;
    }

    public boolean VN() {
        return this.PC;
    }

    public boolean VA() {
        return this.Py;
    }

    public boolean VP() {
        return this.OR;
    }

    public boolean VM() {
        return this.PB;
    }

    public void WI(boolean z) {
        this.OR = z;
    }

    public boolean VJ() {
        Intent intent = this.OS.getIntent();
        if (!"android.media.action.STILL_IMAGE_CAMERA".equals(intent.getAction()) || intent.getStringExtra("MODE") == null) {
            return false;
        }
        return true;
    }

    public C0287a UR() {
        return SM().arK();
    }

    public boolean TU() {
        ShutterCallback shutterCallback = null;
        C0090a.bvo(TAG, "capture");
        if (this.PT || !SX().JX(DeviceState.SNAPSHOT_IN_PROGRESS)) {
            return false;
        }
        Location location;
        int i;
        SU().RT();
        WM(System.currentTimeMillis());
        this.PX = 0;
        this.PE = null;
        WH(UW());
        this.PF = C0616j.aoQ(SQ(), Tp());
        C0090a.bvo(TAG, "orientation: " + Tp() + "; jpegRotation: " + this.PF);
        if (SP() == CameraMember.CLONE) {
            this.PF = C0616j.aoQ(SQ(), 0);
        }
        String Gq = Tn().Gq();
        String str = "jpeg";
        if (Gq == null || !"jpeg".equalsIgnoreCase(Gq) || Tq() == null) {
            location = null;
        } else {
            location = Tq().age();
        }
        if ("-1".equals(SY().tB())) {
            i = 0;
        } else {
            i = 1;
        }
        Wu(DeviceState.SNAPSHOT_IN_PROGRESS);
        synchronized (Tr()) {
            C0616j.apf(SN(), Tn(), location);
            Tn().Hz(this.PF);
            Tn().HC(i);
            Tn().HI(SY().tC(), TW());
            Wm();
            WC();
            if (this.OQ && C0421M.dC().dD().du()) {
                Tn().HJ("on");
            }
            Tr().IQ(Tn());
        }
        C0090a.m1e(TAG, "takePicture");
        Wd();
        Ub(UL());
        Uc();
        Tr().IM(null, null);
        if (UI() == FunctionState.QUALITY_MULTISHOOTING) {
            this.Pi.QK();
        } else if (SU().Rv() == null) {
            if (!this.OQ) {
                if (SS().getString("pref_camera_shutter_sound_key", Tb(R.string.pref_camera_shutter_sound_default)).equals("off") || Tu()) {
                    Tr().IN(false);
                    shutterCallback = this.Qj;
                } else {
                    Tr().IN(true);
                    shutterCallback = this.Qj;
                }
            }
            PictureCallback Ry = SU().Ry();
            PictureCallback Rx = SU().Rx();
            synchronized (Tr()) {
                C0382m Tr = Tr();
                if (Ry == null) {
                    Ry = this.Qd;
                }
                PictureCallback pictureCallback = this.PW;
                if (Rx == null) {
                    Rx = Uq();
                }
                Tr.IO(shutterCallback, Ry, pictureCallback, Rx);
            }
        } else if (!SU().Rv().QK()) {
            C0458b.adi().adk();
        }
        this.Pu.sendEmptyMessage(18);
        return true;
    }

    private void Wd() {
        Object obj = 1;
        Object obj2 = null;
        String tw;
        if (SP() == CameraMember.NORMAL || SP() == CameraMember.PRO) {
            if (VH() || VQ()) {
                C0616j.apa(SN(), "normal_2", "hdr");
                obj = null;
            }
            if (!(this.PY == null || this.PY.tp("pref_camera_colorfilter_key") == null)) {
                tw = this.PY.tp("pref_camera_colorfilter_key").tw();
                if (!tw.equals("0")) {
                    C0616j.apa(SN(), "normal_7", tw);
                    obj = null;
                }
            }
            if (this.PY != null) {
                tw = Tn().Gf();
                if ((tw + "").equals("none")) {
                    obj2 = obj;
                } else {
                    String replace = tw.replace("-", "_");
                    C0616j.apa(SN(), "c_effect_" + replace, replace);
                }
                C0616j.apa(SN(), "C_GRID", this.PY.tp("pref_camera_grid_key").tw());
                C0616j.apa(SN(), "C_FACE", this.PY.tp("pref_camera_facedetection_key").tw());
                C0616j.apa(SN(), "C_SOUND", this.PY.tp("pref_camera_shutter_sound_key").tw());
                C0616j.apa(SN(), "C_GRADIENTER", this.PY.tp("pref_camera_gradienter_key").tw());
                C0616j.apa(SN(), "C_RATIO", this.PY.tp("pref_camera_picture_ratio_key").tw());
            } else {
                obj2 = obj;
            }
            if (obj2 != null && UI() != FunctionState.INTERVAL) {
                if (SP() == CameraMember.PRO) {
                    C0616j.apa(SN(), "pro", "pro");
                } else {
                    C0616j.apa(SN(), "normal_1", "normal");
                }
            }
        } else if (SP() == CameraMember.PRETTYCAMERA || SP() == CameraMember.FRONT) {
            if (SS().getString("pref_camera_doc_pretty", Tb(R.string.pref_camera_pretty_default)).equals(Tb(R.string.setting_on_value))) {
                C0616j.apa(SN(), "front_1", "DOC");
                obj = null;
            }
            if (this.PY != null) {
                ListPreference tp = this.PY.tp("pref_camera_pretty_effect_key");
                tw = "";
                if (tp != null) {
                    tw = tp.tw();
                }
                if (!(tw + "").equals("none")) {
                    C0616j.apa(SN(), "c_effect_" + tw, tw);
                    obj = null;
                }
            }
            if (obj != null) {
                C0616j.apa(SN(), "front", "front");
            }
        }
    }

    private PictureCallback Uq() {
        if ((VC() && !VF()) || SP() == CameraMember.BUSINESSCARD || SP() == CameraMember.FACTORYTEST || SP() == CameraMember.THIRDPARTY_CAMERA) {
            return new C0530e(this);
        }
        if (this.OQ) {
            return this.Ql;
        }
        return new C0531f(this);
    }

    public void Uo() {
        if (!C0616j.apg(this.OS) && Tf() != null && C0384o.Jr().Ju()[SQ()].facing != 0 && !VC() && UX() == UIState.NORMAL && UI() != FunctionState.DELAY_SHOOT && UI() != FunctionState.INTERVAL && UI() != FunctionState.QUALITY_MULTISHOOTING) {
            C0090a.bvo(TAG, "captureForSmilePhoto");
            if (SM() != null) {
                SM().arL(false);
            }
            VX(false);
            C0616j.apa(SN(), "front_2", "smile");
        }
    }

    public void TS() {
        if (Tr() != null) {
            WO(System.currentTimeMillis());
            Tr().IS(this.OU);
        }
    }

    public void TR() {
        if (!SO() && Tr() != null) {
            Tr().IT();
            Tc().MR(0);
            SZ(8);
        }
    }

    public void Um() {
        if (!SO() && Tr() != null) {
            if (C0421M.dC().dD().df()) {
                Tr().IT();
            }
            if (!(Tc().Me() || Tc().Mk() == "manual")) {
                Tc().MX(CameraFocusService$FocusModeState.CAF);
            }
            Tc().MR(0);
            SZ(8);
        }
    }

    public C0382m Tr() {
        return C0384o.Jr().Jw(SQ());
    }

    public void Vq(ActivityBase activityBase) {
        if (this.PG == null) {
            this.PG = new C0363l(this);
            this.PG.KO(activityBase);
        }
    }

    public C0363l UK() {
        return this.PG;
    }

    public PreferenceGroup SR() {
        if (SP() != CameraMember.DNG) {
            return UO(SQ());
        }
        PreferenceGroup UO = UO(C0384o.Jr().Js());
        if (UO == null) {
            UO = UO(SQ());
        }
        return UO;
    }

    public PreferenceGroup UO(int i) {
        return UV().ue(i);
    }

    public int SQ() {
        return this.PK.Fz();
    }

    public C0378d ST() {
        return this.PK;
    }

    private boolean VG(Intent intent) {
        boolean z;
        if (Build.PRODUCT.equals("NX513J")) {
            z = true;
        } else {
            z = Build.PRODUCT.equals("NX513H");
        }
        if (!z) {
            return false;
        }
        if (C0616j.aph(intent)) {
            return true;
        }
        return false;
    }

    public void Vm(C0378d c0378d, CameraMember cameraMember) {
        this.PK = Vl(c0378d, cameraMember);
        this.Pc = Xl(SQ(), cameraMember);
    }

    private C0378d Vl(C0378d c0378d, CameraMember cameraMember) {
        boolean z = true;
        if (c0378d != null) {
            return c0378d;
        }
        int i;
        int i2;
        String action = SN().getIntent().getAction();
        Intent intent = SN().getIntent();
        int api = C0616j.api(SN());
        if (!"android.media.action.STILL_IMAGE_CAMERA".equals(action) || intent.getStringExtra("MODE") == null) {
            i = 0;
        } else if (intent.getStringExtra("MODE").equals("front")) {
            i = 0;
        } else {
            boolean z2 = true;
        }
        if (!("android.media.action.STILL_IMAGE_CAMERA".equals(action) && intent.getStringExtra("MODE") != null && intent.getStringExtra("MODE").equals("front"))) {
            z = VG(intent);
        }
        if (api != -1) {
            i2 = api;
        } else if (i != 0) {
            i2 = C0384o.Jr().Js();
        } else if (z) {
            i2 = C0384o.Jr().Jt();
        } else {
            i2 = UP().uI();
        }
        for (C0378d c0378d2 : this.PL.ZM(cameraMember)) {
            if (c0378d2.FA(i2)) {
                return c0378d2;
            }
        }
        return (C0378d) this.PL.ZM(cameraMember).get(0);
    }

    public void Xi(CameraMember cameraMember) {
        this.Pc = Xl(SQ(), cameraMember);
        Editor edit = SS().edit();
        edit.putInt("pref_camera_member", this.Pc.aan());
        edit.apply();
    }

    private CameraMember Xl(int i, CameraMember cameraMember) {
        if (C0421M.dC().dD().cd() && C0421M.dC().dD().cF()) {
            return cameraMember;
        }
        if (i == C0384o.Jr().Jt()) {
            if (cameraMember != CameraMember.NORMAL) {
                return cameraMember;
            }
            if (C0421M.dC().dD().cF()) {
                return CameraMember.PRETTYCAMERA;
            }
            return CameraMember.FRONT;
        } else if ((cameraMember == CameraMember.PRETTYCAMERA || cameraMember == CameraMember.FRONT) && i == C0384o.Jr().Js()) {
            return CameraMember.NORMAL;
        } else {
            return cameraMember;
        }
    }

    public CameraMember SP() {
        return this.Pc;
    }

    public void Xh(C0378d c0378d) {
        if (SQ() != c0378d.Fz()) {
            this.Qi.uf(SQ());
        }
        this.PK = c0378d;
        this.Pc = Xl(SQ(), this.Pc);
    }

    public C0086j Tn() {
        return SY().tD();
    }

    public C0086j Ud(int i) {
        return UM(i).tD();
    }

    public C0159c UM(int i) {
        if (this.Qi != null) {
            return this.Qi.ug(i);
        }
        return null;
    }

    public C0159c SY() {
        return UM(SQ());
    }

    public C0105L TJ() {
        return this.PL;
    }

    public C0710j SS() {
        if (SP() != CameraMember.DNG) {
            return SW(SQ());
        }
        C0710j SW = SW(C0384o.Jr().Js());
        if (SW == null) {
            SW = SW(SQ());
        }
        return SW;
    }

    public C0710j SW(int i) {
        return this.Qi.uh(i);
    }

    public C0708h UP() {
        return this.Qi.ui();
    }

    public C0706f UV() {
        return this.Qi;
    }

    public C0712l UB() {
        return UV().uj();
    }

    public void SZ(int i) {
        if (SY() != null) {
            SY().tE(i);
        }
    }

    private IconListPreference Uv(String str) {
        return (IconListPreference) SR().tp(str);
    }

    public void Vo() {
        this.Pl = C0616j.apj(this.OS);
    }

    public int UG() {
        if (this.Pk == -1) {
            Vo();
        }
        return this.Pl;
    }

    public void Wv() {
        Vo();
        Vn();
        Wx();
    }

    public void Ww(boolean z) {
        this.Pm = z;
    }

    public boolean UH() {
        return this.Pm;
    }

    public void Wx() {
        FaceView Tf = Tf();
        if (Tf != null) {
            Tf.sT(TN());
        }
    }

    public void TA() {
        this.Qa.Xr();
    }

    public void Up() {
        C0090a.m1e(TAG, "in closeCamera");
        if (Tr() != null) {
            Tr().IU(null);
            Tr().IV(null);
            Ts().abG(SQ());
            Tr().IW(null);
            Tr().IX(null);
            Tr().IM(null, null);
            Tr().IY(null);
            UK().KP().Kz();
            C0090a.m1e(TAG, "in release");
            C0384o.Jr().release();
            Ww(false);
            Wu(DeviceState.NOT_INITIALIZED);
            SM().arD().SF();
            Wh();
            if (ST().FB()) {
                Ts().abH(ST().Fz());
            }
            if (ST().Fy()) {
                Ts().abH(ST().FC());
                return;
            }
            return;
        }
        C0384o.Jr().release();
    }

    public void Xm() {
        try {
            if (this.Pf != null) {
                this.Pf.cancel();
                this.Pf.join();
                this.Pf = null;
                if (SX().JV() != DeviceState.PREVIEW_STOPPED && SX().JV() != DeviceState.NOT_INITIALIZED) {
                    SX().Kd(DeviceState.IDLE);
                }
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public void WY(int[] iArr, C0147A c0147a) {
        Xm();
        this.Pf = new C0350z(SN(), this, c0147a, iArr);
        this.Pf.start();
    }

    public void Wj(int[] iArr, C0300B c0300b) {
        if (!SO() && UI() != FunctionState.RESTART_CAMERA) {
            WB(FunctionState.RESTART_CAMERA);
            WY(iArr, new ab(this, c0300b));
        }
    }

    public void TB() {
        this.Qa.Xs();
    }

    public void Vn() {
        this.Pk = C0616j.aoS(UG(), SQ());
    }

    public int TN() {
        if (this.Pk == -1) {
            Vn();
        }
        return this.Pk;
    }

    public void Wl(byte[] bArr) {
        String str = C0701s.aie + "/RQR.jpg";
        String str2 = C0701s.aie;
        try {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
            file = new File(str2);
            if (!file.exists()) {
                file.mkdirs();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(new File(str));
            fileOutputStream.write(bArr);
            fileOutputStream.close();
            Intent intent = new Intent();
            intent.putExtra("path", str);
            C0090a.bvo(TAG, "sendToContactApp path = " + str);
            SM().arM(-1, intent);
            C0090a.bvo(TAG, "sendToContactApp Success");
        } catch (Throwable e) {
            SM().arN(0);
            C0090a.bvi(TAG, "sendToContactApp Failed", e);
        }
    }

    public ContentResolver TF() {
        return this.OS.getContentResolver();
    }

    public void WE(boolean z) {
        this.Qh = z;
    }

    public boolean UT() {
        return this.Qh;
    }

    public void Ub(int i) {
        this.OY = i;
    }

    public int Uz() {
        return this.OY;
    }

    public int UL() {
        return Tn().Go();
    }

    public void Uc() {
        this.Qf = 0;
    }

    public void Vi(int i) {
        this.Qf += i;
        if (UI() == FunctionState.QUALITY_MULTISHOOTING && i >= 0) {
            this.PO.Kq(this.Qf);
        }
    }

    public int US() {
        return this.Qf;
    }

    public void WK(C0771x c0771x) {
        this.Pe = c0771x;
    }

    public C0771x Va() {
        return this.Pe;
    }

    public void WH(int i) {
        this.Qq = i;
    }

    public int TH() {
        return this.Qq;
    }

    public int TW() {
        return this.PF;
    }

    public void WR(C0564c c0564c) {
        this.PH = c0564c;
    }

    public C0564c Tq() {
        return this.PH;
    }

    public void WO(long j) {
        this.Ps = j;
    }

    public long Ue() {
        return this.Ps;
    }

    public void Ua(long j) {
        this.Qk = j;
    }

    public long TM() {
        return this.Qk;
    }

    public void WT(long j) {
        this.PX = j;
    }

    public long Vd() {
        return this.PX;
    }

    public void TK(long j) {
        this.Qe = j;
    }

    public long TL() {
        return this.Qe;
    }

    public long Vf() {
        return this.Qn.amd();
    }

    public void WQ(byte[] bArr) {
        this.PE = bArr;
    }

    public byte[] Vc() {
        return this.PE;
    }

    public void Ug(long j) {
        this.OV = j;
    }

    public long Uf() {
        return this.OV;
    }

    public void WM(long j) {
        this.Ph = j;
    }

    public long TI() {
        return this.Ph;
    }

    public C0350z UC() {
        return this.Pf;
    }

    public void WP(Boolean bool) {
        this.Px = bool.booleanValue();
    }

    public Boolean Vb() {
        return Boolean.valueOf(this.Px);
    }

    public void WS(boolean z) {
        this.PT = z;
    }

    public boolean SO() {
        return this.PT;
    }

    public void WN(boolean z) {
        this.Pq = z;
    }

    public boolean VS() {
        return this.Pq;
    }

    public void WA(boolean z) {
        this.Pp = z;
    }

    public Activity SN() {
        return this.OS;
    }

    public ActivityBase SM() {
        if (this.OS instanceof ActivityBase) {
            return (ActivityBase) this.OS;
        }
        return null;
    }

    public void Wi() {
        if (this.OS != null) {
            ((ActivityBase) this.OS).arO();
        }
    }

    public Handler Tz() {
        return this.Pu;
    }

    public String Tb(int i) {
        return SN().getString(i);
    }

    public void Xk(long j) {
        String Tb = j == -1 ? Tb(R.string.no_storage) : j == -2 ? Tb(R.string.preparing_sd) : j == -3 ? (C0616j.apk(this.OS) && C0616j.apg(this.OS)) ? Tb(R.string.no_storage_available_usb) : Tb(R.string.access_sd_fail) : j <= 104857600 ? Tb(R.string.spaceIsLow_content) : null;
        if (Tb != null) {
            if (this.Qn != null) {
                this.Qn.alY(null);
            }
            if (UI() == FunctionState.QUALITY_MULTISHOOTING) {
                Xg();
            }
            if (this.OS != null) {
                this.OS.runOnUiThread(new ac(this, Tb));
            }
        } else if (Ve() == null) {
        }
    }

    public void WX(CharSequence charSequence, int i, int i2, int i3, int i4) {
        if (this.Qp == null) {
            this.Qp = Toast.makeText(this.OS, charSequence, i);
        } else {
            this.Qp.setText(charSequence);
            this.Qp.setDuration(i);
        }
        this.Qp.setGravity(i2, i3, i4);
        this.Qp.show();
    }

    public void Tm() {
        this.Qn.amb();
        Xk(Vf());
    }

    private boolean Xb() {
        if (!this.Pi.QM()) {
            return false;
        }
        this.PO.Kr();
        SU().RG();
        Tc().Mb();
        return true;
    }

    public boolean VK() {
        return this.Qc;
    }

    public void Xc() {
        if (this.Pi.QM()) {
            this.Qc = true;
            Wb(2);
            this.PO.Kr();
            SU().RG();
            Tc().Mb();
        }
    }

    public void Xg() {
        if (UI() == FunctionState.QUALITY_MULTISHOOTING) {
            this.Pi.QN();
            this.PO.Ks();
            SU().RG();
            if (this.Qc) {
                Wb(3);
            } else {
                Tg();
            }
            this.Qc = false;
        }
    }

    public void WV(int i) {
        this.Qo = i;
    }

    public int Vg() {
        return this.Qo;
    }

    public void WU(am amVar) {
        this.Qm = amVar;
    }

    public am Ve() {
        return this.Qm;
    }

    public void Uj() {
        if (this.PJ == null) {
            this.PJ = TF().acquireContentProviderClient("media");
        }
    }

    public void We() {
        if (this.PJ != null) {
            this.PJ.release();
            this.PJ = null;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void WZ() {
        /*
        r5 = this;
        r1 = 0;
        r0 = 1;
        r2 = r5.UH();
        if (r2 != 0) goto L_0x0010;
    L_0x0008:
        r2 = r5.UF();
        r3 = com.android.common.camerastate.DeviceState.IDLE;
        if (r2 == r3) goto L_0x0011;
    L_0x0010:
        return;
    L_0x0011:
        r2 = r5.Tr();
        if (r2 == 0) goto L_0x0010;
    L_0x0017:
        r2 = r5.SY();
        r2 = r2.tF();
        if (r2 == 0) goto L_0x002a;
    L_0x0021:
        r3 = "off";
        r2 = r3.equals(r2);
        if (r2 == 0) goto L_0x002b;
    L_0x002a:
        return;
    L_0x002b:
        r2 = r5.Tn();
        r2 = r2.Gj();
        if (r2 <= 0) goto L_0x007d;
    L_0x0035:
        r5.Ww(r0);
        r2 = r5.SN();
        r3 = new com.android.common.appService.ad;
        r3.<init>(r5);
        r2.runOnUiThread(r3);
        r2 = r5.Tf();
        if (r2 == 0) goto L_0x0069;
    L_0x004a:
        r3 = r5.TN();
        r2.sT(r3);
        r3 = com.android.common.cameradevice.C0384o.Jr();
        r3 = r3.Ju();
        r4 = r5.SQ();
        r3 = r3[r4];
        r3 = r3.facing;
        if (r3 != r0) goto L_0x007e;
    L_0x0063:
        r2.sU(r0);
        r2.sV();
    L_0x0069:
        r0 = r5.Tr();
        r1 = r5.PG;
        r1 = r1.KP();
        r0.IV(r1);
        r0 = r5.Tr();
        r0.IZ();
    L_0x007d:
        return;
    L_0x007e:
        r0 = r1;
        goto L_0x0063;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.appService.e.WZ():void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void Xd() {
        /*
        r3 = this;
        r2 = 0;
        r0 = r3.UH();
        if (r0 == 0) goto L_0x000f;
    L_0x0007:
        r0 = r3.UF();
        r1 = com.android.common.camerastate.DeviceState.PREVIEW_STOPPED;
        if (r0 != r1) goto L_0x0010;
    L_0x000f:
        return;
    L_0x0010:
        r0 = r3.Tn();
        r0 = r0.Gj();
        if (r0 <= 0) goto L_0x0040;
    L_0x001a:
        r3.Ww(r2);
        r0 = r3.Tr();
        r1 = 0;
        r0.IV(r1);
        r0 = r3.Tr();
        r0.Ja();
        r0 = new com.android.common.appService.ae;
        r0.<init>(r3);
        r1 = android.os.Looper.myLooper();
        r2 = android.os.Looper.getMainLooper();
        if (r1 == r2) goto L_0x0041;
    L_0x003b:
        r1 = r3.Pu;
        r1.post(r0);
    L_0x0040:
        return;
    L_0x0041:
        r0.run();
        goto L_0x0040;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.appService.e.Xd():void");
    }

    public void VW(C0378d c0378d, int i) {
        if (!this.PT && UN() == null && SX().JX(FunctionState.SWITCHING_CAMERA)) {
            WD(c0378d);
            WB(FunctionState.SWITCHING_CAMERA);
            SM().arP(i);
            return;
        }
        C0458b.adi().adk();
        C0090a.bvo(TAG, "onCameraPickerClicked, paused: " + this.PT + "; pendingswitchid: " + UN());
    }

    public void VV(C0378d c0378d) {
        VW(c0378d, 0);
    }

    public void Un(C0300B c0300b) {
        if (!this.PT) {
            if (C0421M.dC().dD().mo576do()) {
                Wj(new int[]{SQ()}, new af(this, c0300b));
            } else {
                TA();
                TB();
                if (c0300b != null) {
                    c0300b.aaa();
                }
                C0458b.adi().adk();
            }
        }
    }

    public boolean TV() {
        ActivityBase SM = SM();
        if (SM == null || !SM.arE() || this.Qn.ame().amr() <= 0) {
            return false;
        }
        return true;
    }

    public FaceView Tf() {
        if (SU() == null) {
            return null;
        }
        return SU().Rw();
    }

    public void WD(C0378d c0378d) {
        this.PU = c0378d;
    }

    public C0378d UN() {
        return this.PU;
    }

    public void Ws(aa aaVar) {
        this.Pd = aaVar;
    }

    public aa UA() {
        return this.Pd;
    }

    public void Ur() {
        SM().arQ();
    }

    public C0557a Th() {
        return SM().aix;
    }

    public void Xa(boolean z) {
        if (this.PQ == null) {
            C0090a.bvo(TAG, "OrientationThread is not created");
            return;
        }
        if (z) {
            this.PR = new ag(this);
            this.PR.start();
        } else {
            this.PQ.Yi();
            C0090a.bvo(TAG, "syn eable orientaion");
        }
        this.Pt.abO(this.OS);
    }

    public void Xe() {
        if (this.PQ != null) {
            if (this.PR != null) {
                try {
                    this.PR.join();
                } catch (InterruptedException e) {
                }
            }
            C0090a.bvo(TAG, "disable orientaion");
            this.PQ.Yj();
        }
        this.Pt.release();
    }

    public int Tp() {
        if (this.PQ != null) {
            return this.PQ.Yk();
        }
        return -1;
    }

    public int To() {
        if (this.PQ != null) {
            return this.PQ.Yl();
        }
        return 0;
    }

    public void TP(C0336k c0336k) {
        if (this.PQ != null) {
            this.PQ.Ym(c0336k);
        }
    }

    public void TQ(C0336k c0336k) {
        if (this.PQ != null) {
            this.PQ.Yn(c0336k);
        }
    }

    public boolean TO() {
        return UF() == DeviceState.SNAPSHOT_IN_PROGRESS;
    }

    public boolean Vy() {
        if (UF() != DeviceState.IDLE) {
            return Tc().Mw() && UI() != FunctionState.SWITCHING_CAMERA;
        } else {
            return true;
        }
    }

    public boolean Vz() {
        if (UF() == DeviceState.IDLE || UI() != FunctionState.SWITCHING_CAMERA) {
            return true;
        }
        return false;
    }

    public boolean Tl() {
        if (Vf() > 104857600) {
            return true;
        }
        Xk(Vf());
        return false;
    }

    public void VY(boolean z) {
        if (SO()) {
            C0090a.m1e(TAG, "Activity is Paused ignore this Focus " + z);
            return;
        }
        if (!z && UI() == FunctionState.SPEED_MULTISHOOTING) {
            Tw().Qz();
        } else if (!(z || UI() != FunctionState.QUALITY_MULTISHOOTING || this.Qc)) {
            Xg();
        }
    }

    public long UE() {
        IconListPreference Uv = Uv("pref_camera_delay_shoot_key");
        if (VD()) {
            return -1;
        }
        String tw = Uv.tw();
        if (tw.equals("delay_on_3")) {
            return 3000;
        }
        if (tw.equals("delay_on_5")) {
            return 5000;
        }
        if (tw.equals("delay_on_10")) {
            return 10000;
        }
        if (tw.equals("delay_on_20")) {
            return 20000;
        }
        return -1;
    }

    private boolean Vx() {
        if (Tc().Mg() && C0421M.dC().dD().bG() && !VB() && SP() == CameraMember.NORMAL && SQ() == C0384o.Jr().Js() && UI() != FunctionState.INTERVAL) {
            return TE().Lp();
        }
        return false;
    }

    private boolean Vt() {
        if (Tc().Mh() == 1 && "on".equals(SY().tG()) && !Tc().Me() && UI() != FunctionState.INTERVAL && SP() == CameraMember.NORMAL && SQ() == C0384o.Jr().Js()) {
            return TE().Lp();
        }
        return false;
    }

    public void Tt() {
        VX(true);
    }

    private void VX(boolean z) {
        C0090a.m1e(TAG, "onShutterButtonClick");
        Wc();
        if (this.PT || !Tl() || !C0458b.adi().adm()) {
            C0090a.bvo(TAG, "paused: " + this.PT + "; storageLeftEnough: " + Tl() + "; commandEnable: " + C0458b.adi().adm());
        } else if (SX().JX(DeviceState.SNAPSHOT_IN_PROGRESS)) {
            if (z) {
                long UE = UE();
                if (UE > 0 && Ta().acl(UE)) {
                    return;
                }
            }
            if (SU().Sc()) {
                C0090a.bvo(TAG, "camera member handle onshutterbuttonclicked");
            } else if (Vt()) {
                Tc().Na(true);
                C0090a.bvo(TAG, "autofocus is still running. Wait. Return from shutter click");
            } else if (Vx()) {
                C0090a.m1e(TAG, "CAF focus is still canning. Wait. Return from shutter click");
                Tc().Nb(true);
            } else {
                C0458b.adi().adj(C0467m.adv(this));
            }
        }
    }

    private void Wc() {
        C0261C.avI(SN().getResources(), SM());
    }

    public void VZ() {
        if (this.PT || !Tl() || UI() != FunctionState.NORMAL || UX() != UIState.NORMAL || UF() != DeviceState.IDLE) {
            C0090a.bvo(TAG, "camera paused: " + this.PT + "; storageEnough: " + Tl() + "; FunctionState: " + UI() + "; UIState: " + UX() + "; DeviceState: " + UF());
        } else if (VC() || UI() == FunctionState.DELAY_SHOOT) {
            Tt();
        } else {
            boolean z = !Tn().Gf().equals("none");
            if (C0616j.ahq) {
                z = !z ? VO() : true;
            }
            if (z) {
                Tw().Qw(1);
                if (Tw().Qx()) {
                }
            } else if (Xb()) {
                C0616j.apa(this.OS, "normal_6", "quality-priority");
            }
        }
    }

    private boolean VO() {
        return !"on".equals(SS().getString("pref_water_mark_key", "off")) ? "on".equals(SS().getString("pref_water_mark_time_key", "off")) : true;
    }

    public void Uu() {
        C0090a.bvo(TAG, "executeOnShutterButtonClick");
        if (this.PT || Tc().Mx()) {
            C0090a.bvo(TAG, "executeOnShutterButtonClick fail. paused: " + this.PT + "; FocussnapOnFinish = " + Tc().Mx());
            C0458b.adi().adk();
            return;
        }
        if (TX()) {
            Us();
        } else if (!Tc().Mb()) {
            C0458b.adi().adk();
        }
    }

    private void Us() {
        C0090a.bvo("backlight-flash", "set backlight-flash-mode 1 & lock awb");
        synchronized (Tr()) {
            Tn().Hq(1);
            Tn().GX(true);
            Tr().IQ(Tn());
        }
        SM().arJ(true);
        this.Pu.sendEmptyMessageDelayed(107, 100);
    }

    public void Tk(boolean z) {
        Wg(z, 0);
    }

    public void Wg(boolean z, int i) {
    }

    public boolean VR() {
        return this.Pg;
    }

    public void WL(boolean z) {
        this.Pg = z;
    }

    public boolean VL() {
        return (SQ() == C0384o.Jr().Jt() || this.PT || UF() == DeviceState.SNAPSHOT_IN_PROGRESS || UF() == DeviceState.PREVIEW_STOPPED) ? false : true;
    }

    public boolean Vu() {
        if (SS().getString("pref_camera_best_photo_key", Tb(R.string.pref_camera_best_photo_key_default)).equals("on") && SP() == CameraMember.PRETTYCAMERA) {
            return C0421M.dC().dD().bE();
        }
        return false;
    }

    public boolean VT() {
        if (VH()) {
            return true;
        }
        return VF();
    }

    public boolean TY() {
        return (VH() || VF() || Vu() || VE()) ? false : true;
    }

    public boolean VH() {
        boolean z = false;
        if (Tn() == null) {
            return false;
        }
        if (SY().tx()) {
            z = "off".equals(SY().tG());
        }
        return z;
    }

    public boolean VQ() {
        boolean z = false;
        if (Tn() == null) {
            return false;
        }
        if (SY().tx()) {
            z = "on".equals(SY().tG());
        }
        return z;
    }

    public boolean VD() {
        return !SY().ty();
    }

    public boolean VE() {
        int i;
        int i2 = 0;
        if (SP() == CameraMember.MICROSPUR) {
        }
        if (UI() == FunctionState.INTERVAL) {
            i = 1;
        } else {
            i = 0;
        }
        i &= VD();
        if (!SS().getString("pref_camera_interval_pro", "-1").equals("-1")) {
            i2 = 1;
        }
        return i & i2;
    }

    public boolean VF() {
        return SP() == CameraMember.MULTIEXPOSURE;
    }

    public C0445a Tw() {
        if (this.PN == null) {
            this.PN = new C0445a(this);
        }
        return this.PN;
    }

    public C0306I TT() {
        if (this.PV == null) {
            this.PV = new C0306I(this);
        }
        return this.PV;
    }

    public C0598n Te() {
        return this.PP;
    }

    public C0592h Td() {
        return this.OZ;
    }

    public C0586b Tc() {
        return this.Pb;
    }

    public void Vk() {
        this.Pr = new C0584a(this);
        this.Pb = new C0586b(this);
        this.OZ = new C0592h(this);
        this.PP = new C0598n(this);
    }

    public C0584a TE() {
        return this.Pr;
    }

    public C0316U Ta() {
        if (this.Qs == null) {
            this.Qs = new C0316U(this);
        }
        return this.Qs;
    }

    public void WF(PictureCallback pictureCallback) {
        this.Ql = pictureCallback;
    }

    private void Wh() {
        if (SS() != null) {
            Editor edit = SS().edit();
            if (SS().getInt("maf_key", -1) != -1) {
                edit.putInt("maf_key", -1);
            }
            edit.apply();
        }
    }

    public void Wb(int i) {
        if (!this.PT && SS().getString("pref_camera_shutter_sound_key", SN().getString(R.string.pref_camera_shutter_sound_default)).equals("on")) {
            Va().avs(this.OS, i);
        }
    }

    public void SV() {
        if (!this.PT && SS().getString("pref_camera_shutter_sound_key", SN().getString(R.string.pref_camera_shutter_sound_default)).equals("on")) {
            Va().avt(this.OS);
        }
    }

    public void Wr(boolean z) {
        if (this.OW != z) {
            if (z) {
                SU().Rr();
            } else {
                SU().Sa();
            }
            this.OW = z;
        }
    }

    public boolean Vv() {
        return this.OW && SP() == CameraMember.ELETRONIC;
    }

    public void Wp(String str) {
        this.OX = str;
    }

    public String Ux() {
        return this.OX;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean Uk(android.net.Uri r3) {
        /*
        r2 = this;
        r1 = 0;
        r0 = r2.SM();
        if (r3 == 0) goto L_0x0009;
    L_0x0007:
        if (r0 != 0) goto L_0x000a;
    L_0x0009:
        return r1;
    L_0x000a:
        r0 = r0.arE();
        if (r0 == 0) goto L_0x001b;
    L_0x0010:
        r0 = r2.Qn;
        r0 = r0.ame();
        r0 = r0.ams(r3);
        return r0;
    L_0x001b:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.appService.e.Uk(android.net.Uri):boolean");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean Ul(android.net.Uri r3) {
        /*
        r2 = this;
        r1 = 0;
        r0 = r2.SM();
        if (r3 == 0) goto L_0x0009;
    L_0x0007:
        if (r0 != 0) goto L_0x000a;
    L_0x0009:
        return r1;
    L_0x000a:
        r0 = r0.arE();
        if (r0 == 0) goto L_0x001b;
    L_0x0010:
        r0 = r2.Qn;
        r0 = r0.ame();
        r0 = r0.amt(r3);
        return r0;
    L_0x001b:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.appService.e.Ul(android.net.Uri):boolean");
    }

    public void Tg() {
        C0616j.apl(this.OS, 100);
    }

    public void Wa() {
        if (!this.Qc) {
            try {
                if (SS().getString("pref_camera_shutter_sound_key", SM().getString(R.string.pref_camera_shutter_sound_default)).equals("on")) {
                    this.PI = new MediaPlayer();
                    AssetFileDescriptor openRawResourceFd = SN().getResources().openRawResourceFd(R.raw.ztemt_multi_shoot_fast);
                    this.PI.setDataSource(openRawResourceFd.getFileDescriptor(), openRawResourceFd.getStartOffset(), openRawResourceFd.getLength());
                    this.PI.setAudioStreamType(1);
                    this.PI.setLooping(true);
                    this.PI.prepare();
                    this.PI.start();
                }
            } catch (Throwable e) {
                C0090a.bvi(TAG, "playFastSound failed", e);
                if (this.PI != null) {
                    this.PI.release();
                    this.PI = null;
                }
            }
        }
    }

    public void Xf() {
        if (this.PI != null) {
            this.PI.stop();
            this.PI.release();
            this.PI = null;
        }
    }

    public void Wf() {
        if (Vs()) {
            SM().arH(SM().arR());
            Te().Pb();
        }
    }

    private boolean Vs() {
        return C0421M.dC().dD().bD();
    }

    private void WC() {
        if (Vs()) {
            float[] fArr = new float[4];
            fArr = Te().Pa();
            Tn().GU(fArr[0], fArr[1], fArr[2]);
        }
    }

    private void Wm() {
        if (Vs()) {
            if (SQ() == C0384o.Jr().Js() && Te().OY() && !Te().OZ()) {
                Tn().GV(1);
            } else {
                Tn().GV(0);
            }
        }
    }

    private boolean VB() {
        return C0421M.dC().dD().bX();
    }

    public float UU() {
        float bg = C0421M.dC().dD().bg();
        try {
            bg = Float.parseFloat(Tn().FX("len_aperture"));
        } catch (NullPointerException e) {
            C0090a.bvo(TAG, "FNumber is null from hardware!");
        }
        return bg;
    }

    public C0170a SU() {
        return this.Pa;
    }

    public void Wt(int i) {
        this.Pj = i;
    }

    public int UD() {
        return this.Pj;
    }

    public void Xj() {
        if (SS() == null || !(this.OS instanceof ActivityBase)) {
            C0090a.m1e(TAG, "updateCaptureCameraService failed!");
        } else if (SS().getString("pref_key_capture_camera", "off").equals("off")) {
            ((ActivityBase) this.OS).arS();
        } else {
            ((ActivityBase) this.OS).arT();
        }
    }

    public void Wq(boolean z) {
        this.Pv = z;
    }

    public boolean Uy() {
        return this.Pv;
    }

    public String TG() {
        try {
            return SN().getPackageManager().getPackageInfo(SN().getPackageName(), 0).versionName;
        } catch (NameNotFoundException e) {
            return null;
        }
    }

    public void Wk(String str) {
        Editor edit = SS().edit();
        edit.putString("VersionName", str);
        edit.apply();
    }

    public String UY() {
        return SS().getString("VersionName", null);
    }

    public void Ui(C0328d c0328d) {
        this.PS = c0328d;
    }

    public C0328d Uh() {
        return this.PS;
    }

    public void Ut(int i) {
        ActivityBase SM = SM();
        if (SM != null) {
            C0126g arU = SM.arU();
            if (arU != null) {
                if (i == 0) {
                    SM.arH(arU);
                } else {
                    C0090a.m0d(TAG, "add ColorFilterRenderer with colorValue " + i);
                    arU.afg(i);
                    SM.arG(arU);
                }
            }
        }
    }

    public int UW() {
        if (UI() == FunctionState.INTERVAL) {
            return -1;
        }
        return SP().aan();
    }

    public int Vh() {
        return this.Qt;
    }

    public void WW(int i) {
        this.Qt = i;
    }

    public int Ty() {
        return this.OT;
    }

    public void Wn(int i) {
        this.OT = i;
    }

    public boolean TZ() {
        return SS().getInt("pretty_expandable_item", 5) != 0 ? false : false;
    }

    public C0404b SX() {
        return SM().arV();
    }

    public boolean VU() {
        if (VA()) {
            return this.Po;
        }
        return false;
    }

    public void Wz() {
        this.Po = true;
    }

    private void Wu(DeviceState deviceState) {
        SX().Kd(deviceState);
    }

    private DeviceState UF() {
        return SX().JV();
    }

    private void WB(FunctionState functionState) {
        SX().JY(functionState);
    }

    private FunctionState UI() {
        return SX().JZ();
    }

    private UIState UX() {
        return SX().Kc();
    }

    public boolean Tu() {
        if (C0421M.dC().dD().ck() && SP() == CameraMember.NORMAL) {
            return "on".equals(SS().getString("pref_live_photo_key", "off"));
        }
        return false;
    }

    public boolean Tv() {
        if (C0421M.dC().dD().cc() && SP() == CameraMember.NORMAL && "on".equals(SS().getString("pref_fusion_key", "off")) && SQ() == C0384o.Jr().Js()) {
            return true;
        }
        return false;
    }

    public boolean TX() {
        if ("on".equals(SS().getString("pref_camera_backlight_flashmode_key", Tb(R.string.pref_camera_flashmode_default)))) {
            return TC();
        }
        return false;
    }

    public void Tj(boolean z) {
        if (SM() != null) {
            SM().arL(z);
        }
    }

    public C0310N UJ() {
        return this.Pt;
    }

    public boolean TC() {
        boolean z;
        String str = TAG;
        StringBuilder append = new StringBuilder().append("isHdrOff = ");
        if (SY().tx()) {
            z = false;
        } else {
            z = true;
        }
        C0090a.bvo(str, append.append(z).toString());
        return !SY().tx();
    }

    public void TD() {
        if (C0421M.dC().dD().cT()) {
            String str;
            PreferenceGroup SR = SR();
            if (SP() == CameraMember.NORMAL) {
                str = "pref_third_arith_hdr_key";
            } else {
                str = "pref_video_sensor_hdr_key";
            }
            SR.tp(str).va("off");
            return;
        }
        SR().tp("pref_camera_ae_bracket_hdr_key").va("Off");
    }

    public void Wo(boolean z) {
        this.OP = z;
    }

    public boolean Uw() {
        return this.OP;
    }

    public void WG() {
        if (C0616j.apm()) {
            String str = SS().getString("pref_thirdparty_vid_pretty_switch_key", Tb(R.string.pref_thirdparty_vid_pretty_switch_default)).equals("on") ? "1" : "0";
            Tn().GR("pref_video_pretty_mode", str);
            C0090a.bvo(TAG, "setThirdPartyVdBeauty value = " + str);
            return;
        }
        C0090a.bvo(TAG, "setThirdPartyVdBeauty unsupported");
    }

    public C0332g UQ() {
        return this.Qa;
    }

    public C0309M Ts() {
        return this.PZ;
    }

    public void WJ(int[] iArr) {
        this.Qr = iArr;
    }

    public int[] UZ() {
        return this.Qr;
    }

    public boolean VI() {
        return SY().tH() == 1;
    }

    public void Wy(Face[] faceArr) {
        this.Pn = faceArr;
    }
}
