package com.android.common.p014n;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import android.widget.RelativeLayout;
import com.android.camera.R;
import com.android.common.ActivityBase;
import com.android.common.C0116o;
import com.android.common.C0616j;
import com.android.common.C0636m;
import com.android.common.appService.C0310N;
import com.android.common.appService.CameraMember;
import com.android.common.appService.IDualCameraControl$DualCameraMode;
import com.android.common.appService.PhysicalShutterButtonManager$ButtonState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.custom.C0421M;
import com.android.common.p015f.C0112h;
import com.android.common.p023b.C0356f;
import com.android.common.p023b.C0364m;
import com.android.common.p028h.C0557a;
import com.android.common.ui.C0114F;
import com.android.common.ui.C0366P;
import com.android.common.ui.C0474A;
import com.android.common.ui.C0675u;
import com.android.common.ui.C0730q;
import com.android.common.ui.C0731C;
import com.android.common.ui.C0749Z;
import com.android.common.ui.HighSettingLayout;
import com.android.common.ui.MultiFunctionImageView;
import com.android.common.ui.MultiFunctionImageView.Function;
import com.android.common.ui.NubiaProgressWheel;
import com.android.common.ui.RotateImageView;
import com.android.common.ui.ZtemtShutterButton;
import com.p010a.C0090a;
import java.util.List;

public class C0659a extends C0111p implements C0116o, C0112h, C0364m, C0114F {
    private static boolean aaY = Log.isLoggable("BaseBottomBarFragment", 3);
    private static final /* synthetic */ int[] abw = null;
    private C0660b aaZ;
    private C0663e aba;
    private RelativeLayout abb;
    protected boolean abc;
    private C0310N abd;
    protected List abe;
    protected C0114F abf;
    protected RelativeLayout abg;
    protected HighSettingLayout abh;
    private ListView abi;
    protected C0636m abj;
    protected List abk;
    private NubiaProgressWheel abl;
    protected ZtemtShutterButton abm;
    protected MultiFunctionImageView abn;
    protected C0366P abo;
    protected ZtemtShutterButton abp;
    private MultiFunctionImageView abq;
    protected RelativeLayout abr;
    private C0661c abs;
    protected RotateImageView abt;
    C0675u abu;
    private C0660b abv;

    private static /* synthetic */ int[] aiC() {
        if (abw != null) {
            return abw;
        }
        int[] iArr = new int[CameraMember.values().length];
        try {
            iArr[CameraMember.BIG_APERTURE.ordinal()] = 4;
        } catch (NoSuchFieldError e) {
        }
        try {
            iArr[CameraMember.BUSINESSCARD.ordinal()] = 5;
        } catch (NoSuchFieldError e2) {
        }
        try {
            iArr[CameraMember.CLONE.ordinal()] = 6;
        } catch (NoSuchFieldError e3) {
        }
        try {
            iArr[CameraMember.CRYSTAL.ordinal()] = 7;
        } catch (NoSuchFieldError e4) {
        }
        try {
            iArr[CameraMember.DEMISTER.ordinal()] = 8;
        } catch (NoSuchFieldError e5) {
        }
        try {
            iArr[CameraMember.DNG.ordinal()] = 9;
        } catch (NoSuchFieldError e6) {
        }
        try {
            iArr[CameraMember.DUALCAMERACALIBRATION.ordinal()] = 10;
        } catch (NoSuchFieldError e7) {
        }
        try {
            iArr[CameraMember.ELETRONIC.ordinal()] = 11;
        } catch (NoSuchFieldError e8) {
        }
        try {
            iArr[CameraMember.FACTORYTEST.ordinal()] = 12;
        } catch (NoSuchFieldError e9) {
        }
        try {
            iArr[CameraMember.FRONT.ordinal()] = 13;
        } catch (NoSuchFieldError e10) {
        }
        try {
            iArr[CameraMember.FUNEFFECT.ordinal()] = 14;
        } catch (NoSuchFieldError e11) {
        }
        try {
            iArr[CameraMember.INTERVALOMETER.ordinal()] = 1;
        } catch (NoSuchFieldError e12) {
        }
        try {
            iArr[CameraMember.LIGHTDRAW.ordinal()] = 15;
        } catch (NoSuchFieldError e13) {
        }
        try {
            iArr[CameraMember.MICROSPUR.ordinal()] = 16;
        } catch (NoSuchFieldError e14) {
        }
        try {
            iArr[CameraMember.MONO.ordinal()] = 17;
        } catch (NoSuchFieldError e15) {
        }
        try {
            iArr[CameraMember.MULTIEXPOSURE.ordinal()] = 18;
        } catch (NoSuchFieldError e16) {
        }
        try {
            iArr[CameraMember.NONE.ordinal()] = 19;
        } catch (NoSuchFieldError e17) {
        }
        try {
            iArr[CameraMember.NORMAL.ordinal()] = 20;
        } catch (NoSuchFieldError e18) {
        }
        try {
            iArr[CameraMember.OBJECTCLEAR.ordinal()] = 21;
        } catch (NoSuchFieldError e19) {
        }
        try {
            iArr[CameraMember.PANORAMA.ordinal()] = 22;
        } catch (NoSuchFieldError e20) {
        }
        try {
            iArr[CameraMember.PHOTO3D.ordinal()] = 23;
        } catch (NoSuchFieldError e21) {
        }
        try {
            iArr[CameraMember.PINTU.ordinal()] = 24;
        } catch (NoSuchFieldError e22) {
        }
        try {
            iArr[CameraMember.PIP.ordinal()] = 25;
        } catch (NoSuchFieldError e23) {
        }
        try {
            iArr[CameraMember.PRAGUE.ordinal()] = 26;
        } catch (NoSuchFieldError e24) {
        }
        try {
            iArr[CameraMember.PRETTYCAMERA.ordinal()] = 27;
        } catch (NoSuchFieldError e25) {
        }
        try {
            iArr[CameraMember.PRO.ordinal()] = 28;
        } catch (NoSuchFieldError e26) {
        }
        try {
            iArr[CameraMember.SLOWSHUTTER.ordinal()] = 29;
        } catch (NoSuchFieldError e27) {
        }
        try {
            iArr[CameraMember.STARCLOUD.ordinal()] = 30;
        } catch (NoSuchFieldError e28) {
        }
        try {
            iArr[CameraMember.STARTRACK.ordinal()] = 31;
        } catch (NoSuchFieldError e29) {
        }
        try {
            iArr[CameraMember.SUPERNIGHT.ordinal()] = 32;
        } catch (NoSuchFieldError e30) {
        }
        try {
            iArr[CameraMember.THIRDPARTY_CAMERA.ordinal()] = 33;
        } catch (NoSuchFieldError e31) {
        }
        try {
            iArr[CameraMember.TRAJECTORY.ordinal()] = 34;
        } catch (NoSuchFieldError e32) {
        }
        try {
            iArr[CameraMember.TRIAXIAL.ordinal()] = 35;
        } catch (NoSuchFieldError e33) {
        }
        try {
            iArr[CameraMember.VIDEOMAKER.ordinal()] = 36;
        } catch (NoSuchFieldError e34) {
        }
        try {
            iArr[CameraMember.VIDEO_RECORD.ordinal()] = 2;
        } catch (NoSuchFieldError e35) {
        }
        try {
            iArr[CameraMember.VIDEO_SLOMO.ordinal()] = 3;
        } catch (NoSuchFieldError e36) {
        }
        try {
            iArr[CameraMember.VR_CAMERA.ordinal()] = 37;
        } catch (NoSuchFieldError e37) {
        }
        try {
            iArr[CameraMember.WLAN_CAMERA.ordinal()] = 38;
        } catch (NoSuchFieldError e38) {
        }
        try {
            iArr[CameraMember.ZOOMBLUR.ordinal()] = 39;
        } catch (NoSuchFieldError e39) {
        }
        abw = iArr;
        return iArr;
    }

    public C0659a() {
        this.abb = null;
        this.abr = null;
        this.abt = null;
        this.abm = null;
        this.abn = null;
        this.abp = null;
        this.abq = null;
        this.abl = null;
        this.abo = null;
        this.abc = false;
        this.abs = new C0661c();
        this.abj = null;
        this.abd = null;
        this.abe = null;
        this.abk = null;
        this.abi = null;
        this.aba = null;
        this.aaZ = null;
        this.abv = null;
        this.abu = new C0676r(this);
    }

    public C0659a(int i, C0366P c0366p) {
        super(i);
        this.abb = null;
        this.abr = null;
        this.abt = null;
        this.abm = null;
        this.abn = null;
        this.abp = null;
        this.abq = null;
        this.abl = null;
        this.abo = null;
        this.abc = false;
        this.abs = new C0661c();
        this.abj = null;
        this.abd = null;
        this.abe = null;
        this.abk = null;
        this.abi = null;
        this.aba = null;
        this.aaZ = null;
        this.abv = null;
        this.abu = new C0676r(this);
        this.abo = c0366p;
    }

    public C0659a(int i, C0366P c0366p, List list, List list2) {
        this(i, c0366p);
        this.abe = list;
        this.abk = list2;
    }

    public static C0659a ahB(C0366P c0366p, List list, List list2) {
        return new C0659a(1, c0366p, list, list2);
    }

    public void ahD(C0636m c0636m) {
        this.abj = c0636m;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return null;
        }
        View inflate = layoutInflater.inflate(R.layout.bottom_bar, viewGroup, false);
        ahY();
        ahN(inflate);
        return inflate;
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            if (!(this.adA.VC() || this.adA.VN())) {
                ahK().afi(this.abs);
            }
            ahR();
            ahQ();
            aih();
            this.abh.nA();
            ahM();
            aiy();
        }
    }

    protected void ahM() {
        super.ahM();
        if (alB()) {
            ahH();
        }
    }

    private void aih() {
        if (this.abe != null) {
            for (C0730q c0730q : this.abe) {
                if (c0730q instanceof C0731C) {
                    c0730q.kE();
                    return;
                }
            }
        }
    }

    public void aio() {
        if (this.adA != null && this.adA.SY() != null && this.abm != null) {
            if (!CameraMember.aao(this.adA.SP(), this.adA.SQ()) || this.adA.Tu() || this.adA.SX().Kc() == UIState.CAMERA_FAMILY) {
                this.abm.setLongClickable(false);
                this.abm.setClickable(true);
            } else {
                this.abm.setLongClickable(true);
                this.abm.setClickable(true);
            }
            this.abp.setLongClickable(false);
            this.abp.setClickable(true);
        }
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        ahK().aft(this.abs);
        this.abh.nB(true);
        if (alq() == UIState.HIGH_SETTING_POPUP) {
            this.abh.nC(false, false);
        }
        this.abq.lC();
        this.adA.Tw().Qz();
        C0310N UJ = this.adA.UJ();
        UJ.abP(this.abn);
        UJ.abQ(this.abn);
        aix();
        if (this.adA != null && this.adA.VK() && alu() == FunctionState.QUALITY_MULTISHOOTING) {
            this.adA.Xg();
        }
        super.onPause();
    }

    public void onDestroyView() {
        if (this.adB) {
            super.onDestroyView();
            return;
        }
        ahW();
        super.onDestroyView();
    }

    private void ahN(View view) {
        this.abb = (RelativeLayout) view.findViewById(R.id.camera_control_layout);
        this.abr = (RelativeLayout) view.findViewById(R.id.thumbnail_layout);
        this.abt = (RotateImageView) view.findViewById(R.id.thumbnail);
        this.abm = (ZtemtShutterButton) view.findViewById(R.id.shutter_button);
        this.abn = (MultiFunctionImageView) view.findViewById(R.id.shutter_button_icon);
        this.abp = (ZtemtShutterButton) view.findViewById(R.id.stop_button);
        this.abq = (MultiFunctionImageView) view.findViewById(R.id.stopButton_center_icon);
        this.abl = (NubiaProgressWheel) view.findViewById(R.id.shutter_button_progress_wheel);
        air(this.abt.getLayoutParams().width);
        int ahJ = ahJ();
        this.abn.setImageResource(ahJ);
        this.abn.lD(ahJ == R.drawable.shutter_camera);
        this.abm.addOnLayoutChangeListener(new C0677s(this));
        ahO(view);
        this.adE = new C0474A[]{this.abt, this.abh};
    }

    private int ahJ() {
        switch (C0659a.aiC()[this.adA.SP().ordinal()]) {
            case 1:
            case 2:
            case 3:
                return R.drawable.shutter_video;
            default:
                return R.drawable.shutter_camera;
        }
    }

    private void ahO(View view) {
        this.abg = (RelativeLayout) view.findViewById(R.id.high_setting_layout);
        this.abg.setVisibility(0);
        C0090a.bvo("1", "initHighSettingLayout");
        this.abh = (HighSettingLayout) view.findViewById(R.id.high_setting_pref_layout);
        this.abh.nD(this.adD);
        this.abh.nE(this);
        this.abh.nE(this.abf);
        ahX();
        this.abh.nF(this.abk, false);
        ahW();
        this.abh.nF(this.abe, false);
        ahP(view);
    }

    private void ahP(View view) {
        if (this.abe != null && this.abe.size() != 0) {
            this.abi = (ListView) view.findViewById(R.id.highSettingStatus);
            this.abi.setSelector(R.drawable.more_setting_bottom_expanding_without_corner);
            ais(true);
            this.aba = new C0663e(this, this.abe);
            this.abi.setAdapter(this.aba);
            this.abi.setOnItemClickListener(new C0665g());
        }
    }

    public void Lb(String str) {
        if (isAdded()) {
            this.adA.Wp(str);
            aig();
            aiy();
        }
    }

    protected void ahR() {
        aiq(0);
        this.abt.setOnClickListener(new C0356f(alA()));
        this.abt.sk(true);
        this.abt.setVisibility(0);
        this.abt.setAlpha(1.0f);
        ahK().afy();
    }

    protected void ahQ() {
        if (this.abo != null) {
            this.abm.pZ(this.abo);
            return;
        }
        C0366P c0662d = new C0662d();
        this.abm.pZ(c0662d);
        this.abp.pZ(c0662d);
        this.abm.setVisibility(0);
    }

    protected void aim(int i) {
        boolean z = false;
        if (this.abi == null) {
            return;
        }
        if (this.abe == null && this.abk == null) {
            ais(false);
            return;
        }
        if (i == 0) {
            z = true;
        }
        ais(z);
    }

    private void aiq(int i) {
        if (this.abr == null) {
            return;
        }
        if (this.adA.VC() || this.adA.VN()) {
            this.abr.setVisibility(8);
        } else {
            this.abr.setVisibility(i);
        }
    }

    private void ahY() {
        this.aaZ = new C0660b(this, this.abe);
        this.abv = new C0660b(this, this.abk);
        this.aaZ.start();
        this.abv.start();
    }

    private void ahW() {
        if (this.aaZ != null) {
            try {
                this.aaZ.join();
            } catch (Exception e) {
            }
            this.aaZ = null;
        }
    }

    private void ahX() {
        if (this.abv != null) {
            try {
                this.abv.join();
            } catch (Exception e) {
            }
            this.abv = null;
        }
    }

    private C0557a ahK() {
        return alA().Th();
    }

    private void air(int i) {
        alA().WV(i);
    }

    public void ahE() {
        if (!this.adC) {
            this.adA.Tj(true);
            this.abq.lA();
            this.abq.setVisibility(0);
            this.abq.lE();
            this.abm.setVisibility(8);
            this.abp.setVisibility(0);
            this.abl.setVisibility(0);
            this.abl.start();
            this.abt.setClickable(false);
            this.abr.setAlpha(0.4f);
            this.abg.setVisibility(8);
            ((ActivityBase) getActivity()).arZ(8);
            this.abb.setBackgroundDrawable(getResources().getDrawable(R.color.bar_background));
        }
    }

    public void ahF() {
        this.adA.Tj(false);
        if (this.adC) {
            aiu();
            return;
        }
        this.abq.lz(this.abu);
        this.abl.stop();
    }

    private void aiu() {
        this.abq.setVisibility(8);
        this.abl.setVisibility(8);
        this.abm.setVisibility(0);
        this.abp.setVisibility(8);
        this.abt.setClickable(true);
        this.abr.setAlpha(1.0f);
        this.abg.setVisibility(0);
        this.abb.setBackgroundColor(0);
        ((ActivityBase) getActivity()).arZ(0);
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (alq() == UIState.HIGH_SETTING_POPUP) {
            this.abh.dispatchTouchEvent(motionEvent);
            return true;
        }
        if (alq() == UIState.CAMERA_FAMILY) {
            if (C0616j.aqb(motionEvent, this.abt) && this.abt.isClickable() && motionEvent.getAction() == 1) {
                this.abt.performClick();
                return true;
            }
        }
        if (!ahT()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        ahG("dispatch, stopbutton anim is running.");
        return true;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 82 || !ahT()) {
            return super.onKeyDown(i, keyEvent);
        }
        ahG("onkeyDown, stopbutton anim is running.");
        return true;
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 82 || !ahT()) {
            return super.onKeyUp(i, keyEvent);
        }
        ahG("onkeyUp, stopbutton anim is running.");
        return true;
    }

    public boolean ahL() {
        if (alq() != UIState.HIGH_SETTING_POPUP) {
            return false;
        }
        if (!this.abh.nG()) {
            this.abh.nz(false);
        }
        return true;
    }

    public boolean onBackPressed() {
        if (alu() == FunctionState.INTERVAL) {
            aix();
            return true;
        } else if (this.adA != null && this.adA.VK() && alu() == FunctionState.QUALITY_MULTISHOOTING) {
            this.adA.Xg();
            return true;
        } else if (ahL()) {
            return true;
        } else {
            return super.onBackPressed();
        }
    }

    public void aif(String str) {
        if (this.abm == null || this.abm.getVisibility() != 0) {
            if (this.abp != null && this.abp.getVisibility() == 0 && "stop".equals(str)) {
                this.abp.performClick();
            }
        } else if ("takepicture".equals(str)) {
            this.abm.performClick();
        }
    }

    public void aic() {
        if (this.abm != null && this.abm.getVisibility() == 0) {
            this.abm.performClick();
        } else if (this.abp != null && this.abp.getVisibility() == 0) {
            this.abp.performClick();
        }
    }

    public void aie() {
        if (this.abm == null || this.abm.getVisibility() != 0) {
            if (this.abp != null && this.abp.getVisibility() == 0) {
                if (this.abp.isLongClickable()) {
                    this.abp.performLongClick();
                } else {
                    this.abp.performClick();
                }
            }
        } else if (this.abm.isLongClickable()) {
            this.abm.performLongClick();
        } else {
            this.abm.performClick();
        }
    }

    public void aid(boolean z) {
        if (this.abm != null && this.abm.getVisibility() == 0) {
            this.abm.qa(z);
        }
    }

    private void ahH() {
        aio();
        aip(true);
    }

    private void aip(boolean z) {
        if (this.abt != null) {
            this.abt.setClickable(z);
            this.abt.setEnabled(z);
        }
    }

    public void ail(boolean z) {
        this.abt.setClickable(z);
    }

    public void aer(boolean z, long j, long j2) {
        if (getView() != null) {
            if (!z || j < 0) {
                alC();
                getView().setVisibility(0);
            } else {
                alD();
                if (!this.adF.isRunning()) {
                    if (this.adG != null) {
                        this.adG.cancel();
                    }
                    this.adF.cancel();
                    if (j2 > 0) {
                        this.adF.setStartDelay(j2);
                    }
                    this.adF.setDuration(j);
                    this.adF.start();
                }
            }
        }
    }

    public void aes(boolean z, long j, long j2) {
        if (getView() != null) {
            if (!z || j < 0) {
                alC();
                getView().setVisibility(4);
            } else {
                alE();
                if (!this.adG.isRunning()) {
                    if (this.adF != null) {
                        this.adF.cancel();
                    }
                    this.adG.cancel();
                    if (j2 > 0) {
                        this.adG.setStartDelay(j2);
                    }
                    this.adG.setDuration(j);
                    this.adG.start();
                }
            }
        }
    }

    public void aet() {
        aip(true);
    }

    public void aeu() {
        aip(false);
    }

    public void ahC(C0114F c0114f) {
        C0090a.bvo("1", "base bottom bar setHighSetPopupShowListen");
        this.abf = c0114f;
    }

    public void aig() {
        if (this.abh != null) {
            this.abh.nH();
            aik();
            aiy();
        }
    }

    protected void ain(int i, boolean z) {
        super.ain(i, z);
        this.abm.setOrientation(i);
    }

    private void aix() {
        if (this.abj != null) {
            this.abj.stop();
        }
    }

    private void aiw() {
        long parseInt = (long) (Integer.parseInt(als().getString("pref_camera_interval_pro", "0")) * 1000);
        if (C0421M.dC().dD().cH() && parseInt == 0 && this.adA.SP() == CameraMember.PRO && this.adA.SY().tB().equals("-1") && "none".equals(this.adA.Tn().Gf())) {
            this.adA.Xc();
        } else {
            this.abj.aqr(parseInt);
            this.abj.start();
        }
        C0616j.apa(getActivity(), "normal_5", "BaseBottomBarFragment");
    }

    private void aia() {
        int i = 0;
        if (this.abi != null) {
            this.abi.setFocusable(false);
        }
        if (!this.adA.Tl()) {
            C0090a.bvo("BaseBottomBarFragment", "Storage is not enough");
        } else if (this.adA.SM().arD().SC()) {
            boolean VD = this.adA.VD();
            CameraMember SP = this.adA.SP();
            if (SP == CameraMember.MICROSPUR || SP == CameraMember.DNG) {
                if (!this.adA.SS().getString("pref_camera_interval_pro", "-1").equals("-1")) {
                    i = 1;
                }
                i &= VD;
            } else {
                boolean z = VD;
            }
            String string = als().getString("pref_camera_delay_shoot_key", "off");
            if (i == 0 || this.abj == null || !"off".equals(string) || this.adA.Vv()) {
                this.adA.Tt();
            } else if (C0421M.dC().dD().cH() && alu() == FunctionState.QUALITY_MULTISHOOTING) {
                this.adA.Xg();
            } else if (alu() != FunctionState.INTERVAL) {
                aiw();
            } else {
                aix();
            }
        } else {
            C0090a.bvo("BaseBottomBarFragment", "Disable capture when bigaperture initializing.");
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean ahZ() {
        /*
        r3 = this;
        r2 = 0;
        r0 = r3.adA;
        if (r0 == 0) goto L_0x000d;
    L_0x0005:
        r0 = r3.adA;
        r0 = r0.SO();
        if (r0 == 0) goto L_0x000e;
    L_0x000d:
        return r2;
    L_0x000e:
        r0 = r3.ahV();
        if (r0 == 0) goto L_0x0034;
    L_0x0014:
        r0 = r3.alu();
        r1 = com.android.common.camerastate.FunctionState.INTERVAL;
        if (r0 == r1) goto L_0x0034;
    L_0x001c:
        r0 = r3.ahU();
        if (r0 == 0) goto L_0x0034;
    L_0x0022:
        r0 = r3.getActivity();
        r1 = "touch";
        r2 = "touch";
        com.android.common.C0616j.apa(r0, r1, r2);
        r3.aia();
        r0 = 1;
        return r0;
    L_0x0034:
        return r2;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.n.a.ahZ():boolean");
    }

    private boolean ahV() {
        if (C0421M.dC().dD().cU() && this.adA.SM().arD().Sz() != IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE && (this.adA.SP() == CameraMember.NORMAL || this.adA.SP() == CameraMember.PRO || this.adA.SP() == CameraMember.FRONT || this.adA.SP() == CameraMember.PRETTYCAMERA || this.adA.SP() == CameraMember.DNG || this.adA.SP() == CameraMember.MICROSPUR || this.adA.SP() == CameraMember.MONO)) {
            return als().getString("pref_capture_focus_key", alA().SN().getString(R.string.pref_capture_focus_default)).equals("on");
        }
        return false;
    }

    private boolean ahU() {
        return this.adA.TT().abl() == PhysicalShutterButtonManager$ButtonState.HALFPRESSUP;
    }

    public void ov(boolean z, boolean z2) {
        C0090a.bvo("111", "bottom bar show highsetting " + z);
        if (z) {
            ait(false, z2);
            aiq(8);
            return;
        }
        aiy();
        ait(true, z2);
        aiq(0);
    }

    private void aiy() {
        if (this.aba != null) {
            this.aba.notifyDataSetChanged();
        }
    }

    private void aik() {
        if (this.abe != null) {
            for (C0730q c0730q : this.abe) {
                if (c0730q instanceof C0731C) {
                    aii((C0731C) c0730q);
                } else if (c0730q instanceof C0749Z) {
                    aij((C0749Z) c0730q);
                }
            }
        }
    }

    private void aii(C0731C c0731c) {
        if (als().getInt("maf_key", -1) == -1 && !TextUtils.equals(c0731c.kn(), getResources().getString(R.string.auto))) {
            c0731c.kH(false);
        }
    }

    private void aij(C0749Z c0749z) {
        if (TextUtils.equals("auto", als().getString("pref_camera_iso_key", "auto")) && !TextUtils.equals(c0749z.kn(), getResources().getString(R.string.pref_camera_iso_entry_auto))) {
            c0749z.kH(false);
        }
    }

    private void ais(boolean z) {
        ait(z, true);
    }

    private void ait(boolean z, boolean z2) {
        int i = 8;
        C0090a.bvo("1111", "showhighsetting status list");
        if (this.abi != null) {
            this.abi.clearAnimation();
            if (!z2) {
                ListView listView = this.abi;
                if (z) {
                    i = 0;
                }
                listView.setVisibility(i);
            } else if (z) {
                this.abi.setVisibility(0);
                this.abi.startAnimation(AnimationUtils.loadAnimation(getActivity(), R.anim.list_status_bar_fade_in));
            } else {
                this.abi.setVisibility(8);
            }
            C0090a.bvo("1111", "mHighSettingStatusList.isFocusable=" + this.abi.isFocusable());
            this.abi.setFocusable(false);
        }
    }

    public void ahS(boolean z, boolean z2) {
        if (z) {
            aim(8);
            this.abn.setEnabled(false);
            return;
        }
        aim(0);
        this.abn.setEnabled(true);
    }

    void aiv(boolean z) {
        if (this.abn == null) {
            return;
        }
        if (z) {
            this.abn.lw(Function.WAIT);
        } else {
            this.abn.lB(Function.WAIT);
        }
    }

    public void ahI(boolean z) {
        String tw = z ? aln("pref_camera_gradienter_key").tw() : "off";
        if (tw.equals("on")) {
            this.abn.lw(Function.GRADIENTER);
        } else {
            this.abn.lB(Function.GRADIENTER);
        }
        boolean tN = this.adA.SY().tN();
        if (tN) {
            this.abn.lw(Function.COMPASS);
        } else {
            this.abn.lB(Function.COMPASS);
        }
        C0310N UJ = this.adA.UJ();
        if (tN) {
            this.abn.lF(UJ.abR(), false);
            UJ.abS(this.abn);
        } else {
            UJ.abQ(this.abn);
        }
        if (tw.equals("on") || tN) {
            this.abn.lG(UJ.abT());
            this.abn.lH(UJ.abU(), false);
            UJ.abV(this.abn);
            return;
        }
        UJ.abP(this.abn);
    }

    private boolean ahT() {
        if (this.abq != null) {
            return this.abq.lI();
        }
        return false;
    }

    public void aib() {
        if (this.abt != null) {
            this.abt.setClickable(false);
        }
        if (this.abm != null) {
            this.abm.setClickable(false);
        }
    }

    private void ahG(String str) {
        if (aaY) {
            C0090a.m0d("BaseBottomBarFragment", str);
        }
    }
}
