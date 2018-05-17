package com.android.normal;

import android.app.Activity;
import android.hardware.Camera.Size;
import android.media.MediaScannerConnection;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.nubia.videogenerator.p006a.C0052a;
import cn.nubia.videogenerator.p006a.C0053b;
import com.android.camera.R;
import com.android.common.C0116o;
import com.android.common.C0616j;
import com.android.common.C0627l;
import com.android.common.C0701s;
import com.android.common.C0726t;
import com.android.common.C0727u;
import com.android.common.C0772y;
import com.android.common.appService.C0333h;
import com.android.common.appService.C0341p;
import com.android.common.appService.CameraMember;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.custom.C0421M;
import com.android.common.p014n.C0111p;
import com.android.common.p023b.C0358g;
import com.android.common.setting.ListPreference;
import com.android.common.ui.BigApertureSettingUI;
import com.android.common.ui.MultiFunctionImageView;
import com.android.common.ui.MultiFunctionImageView.Function;
import com.android.normal.p040a.C0991a;
import com.p010a.C0090a;
import java.io.File;

public class C1005b extends C0111p implements C0116o, C0727u {
    BigApertureSettingUI aBX = null;
    private RelativeLayout aBY = null;
    private C0341p aBZ = null;
    private C0333h aCa = new C0333h();
    private TextView aCb = null;
    private RelativeLayout aCc = null;
    private C1010g aCd = null;
    private C0772y aCe = null;
    private C0627l aCf = null;
    private C0726t aCg = null;
    private boolean aCh = false;
    private C0991a aCi = null;
    private RelativeLayout aCj = null;
    private TextView aCk = null;
    private RelativeLayout aCl = null;
    private boolean aCm = false;
    private Size aCn = null;
    private C1007d aCo;
    private MultiFunctionImageView aCp;
    private RelativeLayout aCq = null;
    private C1006c aCr = new C1006c(this);

    public C1005b(int i, C1010g c1010g) {
        super(i);
        this.aCd = c1010g;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return null;
        }
        View inflate = layoutInflater.inflate(R.layout.normal_fragment, viewGroup, false);
        aSf(inflate);
        return inflate;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!this.adB) {
        }
    }

    public void onResume() {
        super.onResume();
        this.aCm = false;
        aRS();
        if (!this.adB) {
            aSa();
            this.aBZ.YC(false);
            if (this.adA.Tu()) {
                aSn();
            }
            if (alq() != UIState.CAMERA_FAMILY) {
                alr();
            }
            ail(true);
            aSj(als().getString("pref_big_aperature_key", "off"));
            this.adA.Tc().LQ(new C1013j(this));
            if (this.adA.Tv()) {
                aSt();
            } else {
                aRW();
            }
        }
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
            this.aCm = true;
            aRS();
            this.adA.Tw().Qv(null);
            this.aBZ.YD();
            aSm();
            this.aBX.mW(false);
            this.adA.Tc().LR();
        }
    }

    private void aSa() {
        this.adA.Tw().Qv(new C0358g(getActivity(), this.aCk, this.aCl));
        this.adA.Tx(new C0358g(getActivity(), this.aCk, this.aCl));
    }

    private void aSf(View view) {
        this.aCg = new C0726t(view, als(), this);
        aSb(view);
        aSc(view);
        aSe(view);
        aRZ(view);
        aRX(view);
        aRY(view);
        aSd(view);
    }

    private void aSd(View view) {
        this.aCq = (RelativeLayout) view.findViewById(R.id.stopBottombarLayout);
        this.aCq.setVisibility(8);
        this.aBY = (RelativeLayout) view.findViewById(R.id.btn_cancel);
        this.aBY.setVisibility(8);
        this.aCp = (MultiFunctionImageView) view.findViewById(R.id.stopButtonView);
    }

    public void aSt() {
        this.aCc.setVisibility(0);
        aSo();
    }

    public void aRW() {
        this.aCc.setVisibility(8);
    }

    private void aRY(View view) {
        this.aCc = (RelativeLayout) view.findViewById(R.id.fushion_tip_layout);
        this.aCb = (TextView) view.findViewById(R.id.fusion_tip_switch);
        this.aCb.setOnClickListener(new C1014k(this));
    }

    private void aRZ(View view) {
        if (C0421M.dC().dD().cS()) {
            this.aCe = new C0772y(view, this.adA);
        }
    }

    private void aSe(View view) {
        this.aCj = (RelativeLayout) view.findViewById(R.id.livephoto_shortcut_layout);
    }

    private void aRX(View view) {
        this.aBX = (BigApertureSettingUI) view.findViewById(R.id.bigApertureSetting);
        this.aBX.mX(2.0f, 2.0f, 8.0f);
        this.aBX.mY(new C1015l(this));
    }

    private void aSb(View view) {
        this.aCk = (TextView) view.findViewById(R.id.multishoot_num);
        this.aCl = (RelativeLayout) view.findViewById(R.id.multishoot_num_layout);
    }

    private void aSc(View view) {
        this.aBZ = new C0341p(this.adA, alv().tp("pref_camera_ztemt_fun_effect"), view, R.id.effect_page, R.id.effect_grid_switch);
        this.aBZ.YE(new C1016m(this));
        this.aBZ.YF(new C1017n(this));
        this.aCa.Ye(this.aBZ);
    }

    public static C1005b aSi(C1010g c1010g) {
        return new C1005b(1, c1010g);
    }

    public void ahE() {
        if (!this.adC) {
            if (this.aBZ != null) {
                this.aBZ.YG(8);
            }
            if (this.aCg != null) {
                this.aCg.aro();
            }
        }
    }

    public void ahF() {
        if (this.aBZ != null) {
            this.aBZ.YG(0);
        }
        if (this.aCg != null) {
            this.aCg.show();
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.adC) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (this.aBZ == null || !this.aBZ.YH()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        C0090a.bvo("NormalFragment", "Grid effect anim is Running, just consume the dipatch event");
        return true;
    }

    public boolean onBackPressed() {
        if (this.adC) {
            return super.onBackPressed();
        }
        if (this.aBZ != null) {
            return this.aBZ.onBackPressed();
        }
        return super.onBackPressed();
    }

    protected void ajH(int i, int i2, int i3, int i4) {
        C0090a.m0d("NormalFragment", "onPreviewAreaUpdate ");
        if (this.aBZ != null) {
            this.aBZ.YI(aly());
        }
        aSq();
    }

    public void onDestroy() {
        this.aCn = null;
        super.onDestroy();
    }

    public void alp(String str) {
        C0090a.bvo("NormalFragment", "path = " + str);
        if (!str.contains(this.adA.Tb(R.string.contents_livephoto))) {
            C0090a.m1e("NormalFragment", "invalid path");
        } else if (!this.aCh) {
            C0090a.m1e("NormalFragment", "LivePhoto is not On when ShutterClicked");
        } else if (this.aCi == null || this.aCi.aQD()) {
            File file = new File(str);
            if (file.exists()) {
                if (file.delete()) {
                    MediaScannerConnection.scanFile(this.adA.SN(), new String[]{str}, null, null);
                } else {
                    C0090a.bvo("NormalFragment", "del:" + str + " failed");
                }
            }
            C0090a.bvo("NormalFragment", "del:" + str);
        } else {
            if (this.aCi != null) {
                this.adA.SU().St(true);
            }
            aRT(str);
        }
    }

    private void aRT(String str) {
        if (this.aCi != null && !this.aCi.aQD()) {
            this.aCi.aQE(new C1018o(this));
            this.aCi.aQF(new C1019p(this));
            this.aCi.aQG(str);
            aSs();
            aSr();
            this.aCi.aQH();
        }
    }

    public void aSu() {
        Activity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new C1020q(this));
        }
    }

    public boolean Sc() {
        C0090a.bvo("NormalFragment", "onShutterBottonClicked");
        float parseFloat = Float.parseFloat(this.adA.SY().tB());
        if (parseFloat >= 1.0f) {
            aSv(parseFloat, this.adA.Ty());
            return false;
        }
        this.aCh = this.adA.Tu();
        return super.Sc();
    }

    private void aSv(float f, int i) {
        this.aCq.setVisibility(0);
        this.aCp.setVisibility(0);
        this.aCp.lw(Function.PROGRESS);
        alz();
        if (this.aBZ != null) {
            this.aBZ.YG(8);
        }
        this.aCo = new C1007d(this, f, i);
        this.aCo.start();
    }

    public boolean RU(byte[] bArr) {
        aRS();
        return super.RU(bArr);
    }

    private void aRS() {
        if (!this.aCm && alq() != UIState.CAMERA_FAMILY) {
            aSw();
            this.aCq.setVisibility(8);
            this.aCp.setVisibility(8);
            this.aCp.lx(0, false);
            if (this.aBZ != null) {
                this.aBZ.YG(0);
            }
            alr();
        }
    }

    private void aSw() {
        if (this.aCo != null) {
            this.aCo.aSP();
            try {
                this.aCo.join();
            } catch (InterruptedException e) {
                C0090a.m1e("NormalFragment", "InterruptedException when mProgressThread.join() " + e.getMessage());
            }
            this.aCr.removeMessages(1);
            this.aCo = null;
        }
    }

    private void aSr() {
        this.aCi.setOrientation((alA().To() + C0616j.aoU(alA().SQ())) % 360);
    }

    public void aSl() {
        if (C0421M.dC().dD().ck()) {
            boolean Tu = this.adA.Tu();
            if (Tu) {
                aSp();
                aSo();
            }
            aSk();
            aSh();
            if (Tu) {
                aSn();
            } else {
                aSm();
            }
        }
    }

    private void aSk() {
        this.adA.Tz().sendEmptyMessage(60);
        this.adA.TA();
        this.adA.TB();
        this.adA.SU().Sa();
        this.adA.SU().RZ();
    }

    private void aSn() {
        C0090a.bvo("NormalFragment", "onLivephotoSwitchOn");
        aSy();
    }

    private void aSy() {
        if (this.adA.Tr() == null) {
            aSx();
            C0090a.m1e("NormalFragment", "get proxy failed,turnOff Live");
            return;
        }
        if (this.aCi == null) {
            this.aCi = new C0991a(this.adA.SN());
        }
        C0052a c0052a = new C0052a();
        c0052a.bMQ(12);
        c0052a.bMU(2);
        c0052a.bMO(48000);
        c0052a.bMR(96000);
        c0052a.bMP(2);
        c0052a.bMN("audio/mp4a-latm");
        C0053b c0053b = new C0053b();
        c0053b.bNd(10000000);
        c0053b.bNl(2135033992);
        c0053b.bNb(15);
        c0053b.bNe(1);
        c0053b.bNj(this.adA.Tn().Gv().width, this.adA.Tn().Gv().height);
        C0090a.bvo("NormalFragment", "h/w : " + c0053b.bNi() + "/" + c0053b.bNh());
        c0053b.bNf("video/avc");
        this.aCi.aQI(this.adA.Tr(), 1);
        this.aCi.aQJ(c0052a);
        this.aCi.aQK(c0053b);
        this.aCi.aQL(3000);
        this.aCi.aQM();
    }

    private void aSp() {
        if (!this.adA.TC()) {
            this.adA.SU().Rq();
        }
    }

    private void aSm() {
        C0090a.bvo("NormalFragment", "onLivephotoSwitchOff");
        aSx();
    }

    private void aSx() {
        if (this.aCi != null) {
            this.aCi.aQN();
            this.aCi = null;
        }
    }

    private void aSs() {
        this.aCi.aQO(aRR());
    }

    private String aRR() {
        String aqX = C0701s.aqX();
        File file = new File(aqX);
        if (!file.exists()) {
            file.mkdirs();
        }
        return aqX + "/.temp7846891345.tmp";
    }

    public void aRV() {
        if (!this.adA.SY().ty() || !"-1".equals(this.adA.SY().tB())) {
            this.adA.TD();
        }
    }

    public void aSq() {
        if (this.adA != null && this.adA.Tu()) {
            aSx();
            aSy();
        }
    }

    public void aSg() {
        Object obj = 1;
        if (!(this.adA.SX().JZ() == FunctionState.SPEED_MULTISHOOTING || this.adA.SX().JZ() == FunctionState.QUALITY_MULTISHOOTING)) {
            obj = null;
        }
        if (this.adA.SY().ty() || r0 != null) {
            this.aCg.aro();
        } else {
            this.aCg.show();
        }
    }

    public void aSh() {
        if (this.aCj != null) {
            if (this.adA.Tu()) {
                this.aCj.setVisibility(0);
            } else {
                this.aCj.setVisibility(8);
            }
        }
    }

    protected void ain(int i, boolean z) {
        super.ain(i, z);
        if (this.aBZ != null) {
            this.aBZ.YJ(i, z);
        }
        if (this.aBX != null) {
            this.aBX.mZ(i, z);
        }
    }

    private void aSo() {
        ListPreference tp = alv().tp("pref_camera_ztemt_fun_effect");
        boolean z = !tp.tw().equalsIgnoreCase("none");
        C0090a.bvo("NormalFragment", "isEffectOpen " + z);
        if (z) {
            tp.va("none");
            this.aBZ.YK();
        }
    }

    public void arx() {
        this.adA.SU().Rr();
    }

    public void aiV(CameraMember cameraMember, CameraMember cameraMember2, CameraMember cameraMember3) {
        this.aCa.Yf(cameraMember, cameraMember2, cameraMember3);
        this.aCa.Ye(this.aBZ);
    }

    public void aib() {
        if (this.aBZ != null) {
            this.aBZ.YL(false);
        }
    }

    public void ahS(boolean z, boolean z2) {
        if (this.aBZ != null) {
            if (z || alu() != FunctionState.SWITCHING_CAMERA) {
                this.aBZ.YL(!z);
            } else {
                this.aBZ.YG(8);
            }
        }
    }

    public void aRU(boolean z) {
        if (this.aCe != null) {
            this.aCe.avx(z);
        }
    }

    public void aSj(String str) {
        if ("off".equals(str)) {
            this.aBX.mW(false);
            this.adA.TE().Lz(0);
            return;
        }
        this.adA.TE().Lz(8);
        aRW();
        aSz();
    }

    private void aSz() {
        ListPreference tp = alv().tp("pref_camera_ztemt_fun_effect");
        if ((tp.tw().equalsIgnoreCase("none") ? null : 1) != null) {
            tp.va("none");
            this.aBZ.YK();
        }
    }

    public void ail(boolean z) {
        if (this.aBZ != null) {
            this.aBZ.YL(z);
        }
    }

    public boolean Sd(int i, int i2) {
        if (this.aBX == null || !"on".equals(als().getString("pref_big_aperature_key", "off"))) {
            return false;
        }
        this.aBX.setVisibility(0);
        return this.aBX.na((float) i, (float) i2);
    }
}
