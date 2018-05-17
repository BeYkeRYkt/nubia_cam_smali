package com.android.camera;

import android.app.Fragment;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.preference.PreferenceManager;
import android.provider.Settings.System;
import android.view.KeyEvent;
import android.view.MotionEvent;
import cn.nubia.p000a.C0001a;
import cn.nubia.p002b.C0021a;
import com.android.camera.cameraFamily.C0179f;
import com.android.camera.p019a.C0158a;
import com.android.captureCamera.CaptureCameraService;
import com.android.common.ActivityBase;
import com.android.common.C0261C;
import com.android.common.C0616j;
import com.android.common.appService.C0105L;
import com.android.common.appService.C0170a;
import com.android.common.appService.C0346u;
import com.android.common.appService.CameraMember;
import com.android.common.appService.CameraStartUpThread$CameraOpenState;
import com.android.common.cameradevice.C0378d;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.custom.C0405a;
import com.android.common.custom.C0421M;
import com.android.common.independentutil.IndependenceUtil;
import com.android.common.p012e.C0458b;
import com.android.common.p014n.C0111p;
import com.android.common.p028h.C0562f;
import com.android.common.p033p.C0690a;
import com.android.common.setting.C0157n;
import com.android.common.setting.C0703a;
import com.android.common.ui.VerticalSeekBarForEv;
import com.android.gallery3d.p021b.C0205b;
import com.android.gallery3d.p021b.C0889a;
import com.p010a.C0090a;
import java.util.List;

public class Camera extends ActivityBase {
    private C0021a aIA = null;
    Fragment aIB;
    private boolean aIC = false;
    private boolean aID = false;
    private boolean aIE = false;
    private C0199e aIF;
    private boolean aIG = true;
    C0205b aIH = new C0206j();
    private int aII = 0;
    private int aIJ = 0;
    private int aIK = 0;
    private int aIL = 0;
    private int aIM = 0;
    private int aIN = 8;
    private VerticalSeekBarForEv aIO = null;
    private C0179f aIw = null;
    private boolean aIx = false;
    C0346u aIy;
    C0204i aIz;

    public boolean onSearchRequested() {
        return false;
    }

    public boolean asw(MotionEvent motionEvent) {
        if (arE()) {
            Fragment findFragmentByTag = getFragmentManager().findFragmentByTag("gallery");
            if (findFragmentByTag != null && (findFragmentByTag instanceof C0111p)) {
                return ((C0111p) findFragmentByTag).dispatchTouchEvent(motionEvent);
            }
        }
        if (this.aIw != null && this.aIw.dispatchTouchEvent(motionEvent)) {
            return true;
        }
        boolean asx;
        if (asJ() != DeviceState.PREVIEW_STOPPED) {
            if (arB().SU().RK()) {
                asx = asx(motionEvent);
            } else {
                asx = false;
            }
            if (!asx) {
                asx |= asv(motionEvent);
            }
        } else {
            asx = false;
        }
        if (!asx && this.aIw != null && this.aIw.aUS() && this.aIF.aXF() == 0) {
            aYG(motionEvent);
        }
        return asx;
    }

    protected void asf() {
        if (this.aIw != null) {
            this.aIw.aUM();
        }
    }

    protected void atR() {
        super.atR();
        if (asP() == UIState.CAMERA_FAMILY) {
            this.aIF.aXX(true);
        }
    }

    protected void atS(Bundle bundle) {
        aYS();
        aZc();
        new C0162a(this, this.aiG).aXp();
        aYY();
    }

    private void aYY() {
        C0261C.avI(getResources(), this);
    }

    protected void onDestroy() {
        super.onDestroy();
        aZd();
    }

    private void aYS() {
        this.aIw = new C0179f(this, this.aiG);
        this.aIF = new C0199e(findViewById(R.id.member_scroller_view), this.aiG, this.ajB, this.aIw);
        this.aIF.aXW(new C0207k());
        this.aIw.aUN(this.aIF);
        if (this.ajj) {
            arZ(8);
        }
    }

    private void aZc() {
        if (C0616j.apN(this) && this.aIG && C0616j.apP(this)) {
            try {
                aYE();
            } catch (Throwable e) {
                C0090a.bvi("nubiaCamera", "checkVersion failed", e);
            }
            this.aIG = false;
        }
    }

    private void aZd() {
        C0690a.amG().release();
    }

    private void aYE() {
        C0690a.amG().amH(this, true).amI();
    }

    private CameraMember aYI() {
        CameraMember cameraMember = CameraMember.NORMAL;
        if (this.aiG.Vw()) {
            return CameraMember.BUSINESSCARD;
        }
        if (aYT()) {
            return CameraMember.VIDEO_RECORD;
        }
        if (this.aiG.VA()) {
            return CameraMember.FACTORYTEST;
        }
        if (getIntent().getBooleanExtra("dualcameracalibration", false)) {
            return CameraMember.DUALCAMERACALIBRATION;
        }
        if (this.aiG.VC()) {
            return CameraMember.THIRDPARTY_CAMERA;
        }
        String action = getIntent().getAction();
        int intExtra = getIntent().getIntExtra("nubia.camera.family", -1);
        if (intExtra != -1) {
            cameraMember = CameraMember.aap(intExtra);
        } else if ("com.android.camera.action.FORCE_TOUCH_ACTION_SELFIE".equals(action)) {
            cameraMember = CameraMember.PRETTYCAMERA;
        } else if ("com.android.camera.action.FORCE_TOUCH_ACTION_VIDEO".equals(action)) {
            cameraMember = CameraMember.VIDEO_RECORD;
        } else if ("com.android.camera.action.subcamtest".equals(action)) {
            if (C0384o.Jr().Jv() >= 3) {
                cameraMember = CameraMember.MONO;
                C0090a.bvo("nubiaCamera", "open in SUB_CAM_TEST state");
            } else {
                C0090a.bvo("nubiaCamera", "open in SUB_CAM_TEST state, but fail");
            }
        }
        if (cameraMember == CameraMember.FRONT && C0421M.dC().dD().cF()) {
            cameraMember = CameraMember.PRETTYCAMERA;
        }
        if (intExtra == CameraMember.VR_CAMERA.aan()) {
            asU();
            cameraMember = CameraMember.NORMAL;
        }
        if (intExtra != CameraMember.WLAN_CAMERA.aan()) {
            return cameraMember;
        }
        asV();
        return CameraMember.NORMAL;
    }

    protected void atg() {
        CameraMember aYI = aYI();
        atf(aYJ(aYI), aYI);
    }

    private C0378d aYJ(CameraMember cameraMember) {
        List ZM = this.aiw.ZM(cameraMember);
        if (ZM == null || ZM.size() == 0) {
            throw new IllegalArgumentException("No suituable camera id found!!!");
        } else if (ZM.size() == 1) {
            return (C0378d) ZM.get(0);
        } else {
            return aYL(ZM);
        }
    }

    private C0378d aYL(List list) {
        String action = getIntent().getAction();
        int Jt = "com.android.camera.action.FORCE_TOUCH_ACTION_SELFIE".equals(action) ? C0384o.Jr().Jt() : ("com.android.camera.action.FORCE_TOUCH_ACTION_VIDEO".equals(action) || getIntent().getIntExtra("nubia.camera.family", -1) != -1) ? C0384o.Jr().Js() : -1;
        if (Jt != -1) {
            for (C0378d c0378d : list) {
                if (c0378d.FA(Jt)) {
                    return c0378d;
                }
            }
        }
        return null;
    }

    protected void auc() {
        C0090a.bvo("nubiaCamera", "onResumeAfterSuper");
        if (C0421M.dC().dD().bI() && !getIntent().getBooleanExtra("cameraswitch", false)) {
            aYQ();
        }
        aYZ();
        aYR();
        this.aIF.aXT();
    }

    protected void aud() {
        if (this.aji) {
            if (arE()) {
                this.aiG.UV().up();
                atg();
                this.aiG.UV().uo(this, this.aiG.SQ(), this.aiG.SP(), arE());
            } else {
                auz(false);
                this.aiG.Ti().amg(false);
            }
            this.aIw.aVc();
            this.aIF.aYb();
            aYK().RN();
        }
    }

    private boolean aYT() {
        return this.aiG.VN();
    }

    protected void onPause() {
        C0090a.bvo("nubiaCamera", "onPause begin");
        if (this.aiI.JZ() == FunctionState.QUALITY_MULTISHOOTING) {
            this.aiG.Xg();
        }
        this.aIF.release();
        super.onPause();
        if (arE()) {
            aYH();
        }
        aZg();
        aYF();
        this.aIF.aXP();
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0090a.bvo("nubiaCamera", "onConfigurationChanged" + configuration.toString());
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        switch (i) {
            case 1000:
                Intent intent2 = new Intent();
                if (intent != null) {
                    Bundle extras = intent.getExtras();
                    if (extras != null) {
                        intent2.putExtras(extras);
                    }
                }
                arM(i2, intent2);
                finish();
                getFileStreamPath("crop-temp").delete();
                break;
        }
        aYK().onActivityResult(i, i2, intent);
    }

    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        boolean z = false;
        if (this.aiG.Tc().Mi() || this.aiG.Td().NM() || this.aiG.Te().Pl()) {
            return false;
        }
        if (!ato()) {
            z = true;
        }
        return z;
    }

    public void onBackPressed() {
        C0090a.bvm("nubiaCamera", "onBackPressed");
        if (asP() != UIState.CAMERA_FAMILY || !this.aIw.onBackPressed()) {
            if (!arE() || !aYH()) {
                super.onBackPressed();
            }
        }
    }

    public boolean atN(int i, KeyEvent keyEvent) {
        if (this.aIB != null && ((C0889a) this.aIB).onKeyDown(i, keyEvent)) {
            return true;
        }
        switch (i) {
            case 24:
            case 25:
            case 27:
            case 66:
            case 79:
            case 82:
            case 85:
            case 126:
            case 127:
            case 10000:
            case 10004:
                if (this.aIw != null && this.aIw.aUR()) {
                    return true;
                }
            case 80:
                if (aty()) {
                    return true;
                }
                break;
        }
        return super.atN(i, keyEvent);
    }

    protected boolean atP(int i, KeyEvent keyEvent) {
        switch (i) {
            case 24:
            case 25:
            case 27:
            case 66:
            case 79:
            case 82:
            case 85:
            case 126:
            case 127:
            case 10000:
            case 10004:
                if (this.aIw != null && this.aIw.aUR()) {
                    return true;
                }
            case 80:
                if (aty()) {
                    return true;
                }
                break;
        }
        return super.atP(i, keyEvent);
    }

    protected boolean atO(int i, KeyEvent keyEvent) {
        switch (i) {
            case 24:
            case 25:
            case 27:
            case 66:
            case 79:
            case 82:
            case 85:
            case 126:
            case 127:
            case 10000:
            case 10004:
                if (this.aIw != null && this.aIw.aUR()) {
                    return true;
                }
        }
        return super.atO(i, keyEvent);
    }

    protected void auQ() {
        if (this.aiG.SP() != CameraMember.PIP) {
            super.auQ();
        }
    }

    public void arP(int i) {
        if (!this.aiG.SO()) {
            C0090a.bvo("nubiaCamera", "switchCamera, cameraId: " + this.aiG.UN());
            this.aiG.WA(false);
            this.aiG.UV().uk(this, this.aiG.UN().Fz(), this.aiG.SP(), arE());
            this.aiG.WY(this.aiG.UN().FF(), new C0226y(this, i));
        }
    }

    private void aYD(int i) {
        this.ajB.m36n();
        this.ajB.m39q(false);
        this.ajB.m41s(i);
        this.ajB.m29e().m48K(new C0145A(this));
        asF();
    }

    private void aZf(C0378d c0378d, CameraMember cameraMember, CameraMember cameraMember2) {
        if (!this.aiG.SO()) {
            C0090a.bvo("nubiaCamera", "switchCameraByMember, cameraId: " + this.aiG.UN());
            aux(FunctionState.SWITCHING_CAMERA);
            this.aiG.UV().uk(this, c0378d.Fz(), this.aiG.SP(), arE());
            this.aiG.WA(false);
            arD().Sw();
            this.aiG.WY(c0378d.FF(), new C0148C(this, c0378d, cameraMember2));
        }
    }

    private void aZb() {
        this.ajb.removeMessages(60);
        this.ajb.removeMessages(4);
    }

    private void aYP() {
        C0090a.bvo("nubiaCamera", "Start to switch camera. id=" + this.aiG.UN());
        this.aiG.Xh(this.aiG.UN());
        if (this.aiG.UA() != null) {
            this.aiG.UA().rC(asH());
        }
    }

    public void auB(boolean z) {
        this.aiG.WE(z);
    }

    private boolean aYU() {
        if (this.aiG.SP() == CameraMember.VIDEO_RECORD || this.aiG.SP() == CameraMember.VIDEO_SLOMO) {
            return true;
        }
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!((this.aIF.aXF() != 0 && !aYU()) || atw() || att() || atA())) {
            aYG(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    private void aYG(MotionEvent motionEvent) {
        if (aYW()) {
            this.aIF.aXQ(motionEvent);
        }
        switch (motionEvent.getAction()) {
            case 0:
                this.aIL = (int) motionEvent.getX();
                this.aIM = (int) motionEvent.getY();
                this.aIJ = 0;
                this.aIK = 0;
                this.aIx = false;
                this.aIO = this.aiG.Td().NR();
                if (this.aIO != null) {
                    this.aII = this.aIO.getProgress();
                    return;
                }
                return;
            case 1:
            case 3:
                this.aIx = false;
                if (aYV()) {
                    aZi();
                }
                this.aID = false;
                return;
            case 2:
                this.aIJ = ((int) motionEvent.getX()) - this.aIL;
                this.aIK = ((int) motionEvent.getY()) - this.aIM;
                if (aYV()) {
                    aYC();
                    aZh();
                    return;
                }
                return;
            default:
                return;
        }
    }

    private boolean aYW() {
        boolean z = false;
        if (this.aiG.SQ() == C0384o.Jr().Jt() || this.aiG.SP() == CameraMember.LIGHTDRAW || this.aiG.SP() == CameraMember.STARTRACK) {
            return true;
        }
        boolean z2;
        switch (this.aiG.To()) {
            case 0:
            case 180:
                z2 = true;
                break;
            case 90:
            case 270:
                z2 = this.aiG.Td().NF();
                break;
            default:
                z2 = false;
                break;
        }
        if (z2 && !this.aID) {
            z = true;
        }
        return z;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean aYV() {
        /*
        r4 = this;
        r3 = 1;
        r2 = 0;
        r0 = com.android.common.custom.C0421M.dC();
        r0 = r0.dD();
        r0 = r0.bU();
        if (r0 != 0) goto L_0x001d;
    L_0x0010:
        r0 = r4.aiG;
        r0 = r0.SY();
        r0 = r0.tx();
        if (r0 == 0) goto L_0x001d;
    L_0x001c:
        return r2;
    L_0x001d:
        r0 = r4.aIO;
        if (r0 == 0) goto L_0x0041;
    L_0x0021:
        r0 = r4.aiG;
        r0 = r0.Td();
        r0 = r0.NF();
        if (r0 != 0) goto L_0x0041;
    L_0x002d:
        r0 = r4.aiG;
        r0 = r0.TE();
        r0 = r0.Ll();
        if (r0 == 0) goto L_0x0041;
    L_0x0039:
        r0 = r4.asP();
        r1 = com.android.common.camerastate.UIState.CAMERA_FAMILY;
        if (r0 != r1) goto L_0x0042;
    L_0x0041:
        return r2;
    L_0x0042:
        r0 = r4.aiG;
        r0 = r0.Td();
        r0 = r0.NP();
        if (r0 != 0) goto L_0x0041;
    L_0x004e:
        r0 = r4.asJ();
        r1 = com.android.common.camerastate.DeviceState.SNAPSHOT_IN_PROGRESS;
        if (r0 == r1) goto L_0x0041;
    L_0x0056:
        r0 = r4.aiG;
        r0 = r0.SQ();
        r1 = com.android.common.cameradevice.C0384o.Jr();
        r1 = r1.Jt();
        if (r0 != r1) goto L_0x0067;
    L_0x0066:
        return r2;
    L_0x0067:
        r0 = r4.aiG;
        r0 = r0.To();
        switch(r0) {
            case 0: goto L_0x0073;
            case 90: goto L_0x0084;
            case 180: goto L_0x0073;
            case 270: goto L_0x0084;
            default: goto L_0x0070;
        };
    L_0x0070:
        r0 = r4.aID;
        return r0;
    L_0x0073:
        r0 = r4.aIK;
        r0 = java.lang.Math.abs(r0);
        r1 = r4.aIJ;
        r1 = java.lang.Math.abs(r1);
        if (r0 <= r1) goto L_0x0070;
    L_0x0081:
        r4.aID = r3;
        goto L_0x0070;
    L_0x0084:
        r0 = r4.aIJ;
        r0 = java.lang.Math.abs(r0);
        r1 = r4.aIK;
        r1 = java.lang.Math.abs(r1);
        if (r0 <= r1) goto L_0x0070;
    L_0x0092:
        r4.aID = r3;
        goto L_0x0070;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.camera.Camera.aYV():boolean");
    }

    private void aYC() {
        int height = (getWindowManager().getDefaultDisplay().getHeight() - getResources().getDimensionPixelSize(R.dimen.topbar_height)) - getResources().getDimensionPixelSize(R.dimen.bottombar_height);
        int max = (this.aIO.getMax() * 4) / 10;
        this.aiG.Td().NR().setVisibility(0);
        switch (this.aiG.To()) {
            case 0:
                this.aIO.setProgress(this.aII - ((max * this.aIK) / height));
                break;
            case 90:
                this.aIO.setProgress(this.aII - ((max * this.aIJ) / height));
                break;
            case 180:
                this.aIO.setProgress(((max * this.aIK) / height) + this.aII);
                break;
            case 270:
                this.aIO.setProgress(((max * this.aIJ) / height) + this.aII);
                break;
        }
        this.aIO.setProgressDrawable(getResources().getDrawable(R.drawable.ev_seek_bar_bg_rotate));
        this.aIO.gG();
    }

    private void aZh() {
        int progress = this.aIO.getProgress();
        int max = this.aIO.getMax();
        if (progress >= 0 && progress <= max && progress % (max / 24) == 0) {
            Editor edit = asN().edit();
            edit.putString("pref_camera_exposure_key", Integer.toString((progress / (max / 24)) - 12));
            edit.apply();
            this.aiG.SZ(8);
        }
    }

    private void aZi() {
        int progress = this.aIO.getProgress();
        int max = this.aIO.getMax();
        if (progress >= 0 && progress <= max) {
            Editor edit = asN().edit();
            edit.putString("pref_camera_exposure_key", Integer.toString((progress / (max / 24)) - 12));
            edit.apply();
            this.aiG.SZ(8);
        }
    }

    private void aYZ() {
        if (C0421M.dC().dD().bQ()) {
            if (this.aIy == null) {
                this.aIy = new C0346u(getApplicationContext());
            }
            if (this.aIz == null) {
                this.aIz = new C0204i();
            }
            this.aIy.ZE(this.aIz);
        }
    }

    private void aYR() {
        int i = 0;
        if (C0421M.dC().dD().bV()) {
            if (this.aIA == null) {
                this.aIA = new C0021a();
            }
            int i2 = System.getInt(getContentResolver(), "nubia_fingerprint_photo_switch", 0);
            String str = i2 == 1 ? "on" : "off";
            if (str.equals(asN().getString("pref_camrea_fingerprint_shutter_key", this.aiG.Tb(R.string.pref_camrea_fingerprint_shutter_priority_key_default)))) {
                i = i2;
            } else {
                Editor edit = asN().edit();
                edit.putString("pref_camrea_fingerprint_shutter_key", str);
                edit.commit();
                i = i2;
            }
        }
        if (this.aIA != null && r0 == 1) {
            aYX();
        }
    }

    public void aYX() {
        int i = System.getInt(this.aiG.TF(), "nubia_fingerprint_calibration_state", 0);
        if (this.aIA == null || (C0421M.dC().dD().cs() && i == 0)) {
            C0090a.m1e("nubiaCamera", "openFingerprint failed, mFingerprint is null, or state = " + i);
        } else {
            this.aIA.bMe(this, this.ajb);
        }
    }

    public void aYF() {
        if (this.aIA != null) {
            this.aIA.bMd(this);
        } else {
            C0090a.m1e("nubiaCamera", "closeFingerprint failed, mFingerprint is null.");
        }
    }

    private void aYO(int i) {
        Object obj = null;
        int To = this.aiG.To();
        if (To == 0) {
            if (i == this.aIy.Rq || i == this.aIy.Rs) {
                obj = 1;
            }
        } else if (To == 180) {
            if (i == this.aIy.Rp || i == this.aIy.Rr) {
                r0 = 1;
            }
        } else if (To == 90) {
            if (i == this.aIy.Rq || i == this.aIy.Rp) {
                r0 = 1;
            }
        } else if (To == 270 && (i == this.aIy.Rs || i == this.aIy.Rr)) {
            r0 = 1;
        }
        if (obj != null && atG()) {
            this.aiG.SU().Sf();
        }
    }

    private void aZg() {
        if (this.aIy != null) {
            this.aIy.ZG(this.aIz);
        }
    }

    protected boolean atx() {
        return arE() && this.aIB != null;
    }

    public void aus() {
        if (!this.aiG.SO()) {
            super.aus();
            aYQ();
        }
    }

    private void aYQ() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        if (defaultSharedPreferences == null) {
            return;
        }
        if (defaultSharedPreferences.getString("pref_key_capture_camera", "off").equals("off")) {
            arS();
        } else {
            arT();
        }
    }

    public void arS() {
        try {
            if (!stopService(new Intent(this, CaptureCameraService.class))) {
                C0616j.aqc(getContentResolver(), "capture_service_camera_on", 0);
            }
        } catch (Throwable e) {
            C0090a.bvi("nubiaCamera", "stop service failed!", e);
        }
    }

    public void arT() {
        try {
            startService(new Intent(this, CaptureCameraService.class));
        } catch (Throwable e) {
            C0090a.bvi("nubiaCamera", "start service failed!", e);
        }
    }

    public void asb() {
        if (arE()) {
            aYN();
        } else {
            super.asb();
        }
    }

    private void aYN() {
        if (this.aIB == null) {
            aYB();
            this.aiG.SU().Sb(true);
            arZ(8);
            auW();
            C0458b.adi().adl();
        }
    }

    private void aYB() {
        C0090a.m0d("nubiaCamera", "add gallery fragment");
        this.aIB = C0889a.aFm(this.aIH);
        FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
        beginTransaction.setCustomAnimations(R.animator.fragment_slide_left_enter, R.animator.fragment_slide_left_exit);
        beginTransaction.add(R.id.gallery_fragment, this.aIB, "gallery");
        beginTransaction.commitAllowingStateLoss();
    }

    private void aZa() {
        C0090a.m0d("nubiaCamera", "remove gallery fragment");
        FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
        beginTransaction.setCustomAnimations(R.animator.fragment_slide_left_enter, R.animator.fragment_slide_left_exit);
        beginTransaction.remove(this.aIB).commitAllowingStateLoss();
        this.aIB = null;
    }

    private C0171b aYK() {
        return (C0171b) this.aiG.SU();
    }

    protected C0170a asZ() {
        if (this.aiV == null) {
            this.aiV = new C0171b(this, atd());
        }
        return this.aiV;
    }

    protected C0157n ate() {
        if (IndependenceUtil.afZ) {
            if (this.ajw == null) {
                this.ajw = new C0158a();
            }
        } else if (this.ajw == null) {
            this.ajw = new C0703a();
        }
        return this.ajw;
    }

    protected C0105L atd() {
        if (this.aiw == null) {
            this.aiw = new C0202h();
        }
        return this.aiw;
    }

    private boolean aYH() {
        if (this.aIB == null) {
            return false;
        }
        ((C0889a) this.aIB).aFb();
        C0090a.m0d("nubiaCamera", "remove gallery fragment");
        return true;
    }

    public void arZ(int i) {
        this.aIF.aXY(i, true, false, -1, -1);
    }

    public void auG(int i, boolean z, long j, long j2) {
        this.aIF.aXY(i, true, z, j, j2);
    }

    public void auF(int i, boolean z) {
        this.aIF.aXY(i, z, false, -1, -1);
    }

    public void asA(boolean z) {
        super.asA(z);
        if (z) {
            this.aIN = this.aIF.aIq;
            if (this.aIN != 8) {
                arZ(8);
            }
            C0090a.bvo("enableCloseCameraBlackBoard", "mSwitcherVisibility = " + this.aIN);
            return;
        }
        if (this.aIN == 0) {
            arZ(0);
        }
        C0090a.bvo("enableCloseCameraBlackBoard", "mSwitcherVisibility = " + this.aIN);
        this.aIN = 8;
    }

    public void auR() {
        this.aIF.aXZ();
    }

    public void auX() {
        this.aIF.aYa();
    }

    protected void aul() {
        super.aul();
        this.aIF.aXR();
    }

    protected void ast() {
        super.ast();
        ConditionVariable conditionVariable = new ConditionVariable(true);
        aYM(conditionVariable);
        this.aix.afw(conditionVariable);
    }

    private void aYM(ConditionVariable conditionVariable) {
        if (C0562f.Yv.equals("")) {
            String str = "cn.nubia.gallery3d.commonservice";
            Intent intent = new Intent("cn.nubia.gallery3d.commonservice");
            intent.setPackage("cn.nubia.gallery3d");
            boolean bindService = bindService(intent, new C0152F(this, conditionVariable), 1);
            C0090a.bvo("nubiaCamera", "bindService cn.nubia.gallery3d.commonservice " + bindService);
            if (bindService) {
                conditionVariable.close();
            }
        }
    }

    protected void asX() {
        C0405a dD = C0421M.dC().dD();
        if (dD.cc() || dD.bF() || (getIntent().getBooleanExtra("dualcameracalibration", false) && dD.bO())) {
            this.aiU = new C0001a(this.aiG);
        } else {
            super.asX();
        }
    }

    private void aZe(CameraMember cameraMember, CameraStartUpThread$CameraOpenState cameraStartUpThread$CameraOpenState) {
        if (cameraStartUpThread$CameraOpenState == CameraStartUpThread$CameraOpenState.FAIL_CAMERA_DISABLED) {
            this.aiH = true;
        } else if (cameraStartUpThread$CameraOpenState == CameraStartUpThread$CameraOpenState.FAIL_CAMERA_ERROR) {
            this.aju = true;
        }
        if (aso()) {
            this.aiG.UV().ul(this, asH(), this.aiG.SP());
            this.aiG.TE().Lx();
            this.aiG.Tc().ML();
            asd();
            this.aiG.UQ().XL();
            aYK().aXu(asH(), this.aiG.SP(), cameraMember, this.aiG);
            return;
        }
        this.aiI.JW(FunctionState.SWITCHING_CAMERA);
    }

    public void asc(long j) {
        if (this.aIF != null) {
            this.aIF.aXB(j);
        }
    }
}
