package com.android.common;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.FragmentTransaction;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Size;
import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings.System;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AlphaAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.android.camera.R;
import com.android.common.appService.C0000c;
import com.android.common.appService.C0105L;
import com.android.common.appService.C0170a;
import com.android.common.appService.C0305G;
import com.android.common.appService.C0319Y;
import com.android.common.appService.C0329e;
import com.android.common.appService.C0347w;
import com.android.common.appService.C0350z;
import com.android.common.appService.CameraMember;
import com.android.common.appService.IDualCameraControl$DualCameraMode;
import com.android.common.cameradevice.C0086j;
import com.android.common.cameradevice.C0378d;
import com.android.common.cameradevice.C0382m;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.C0404b;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.custom.C0421M;
import com.android.common.independentFocusExposure.CameraExposureService$ExposureIndicatorState;
import com.android.common.independentFocusExposure.CameraFocusService$FocusIndicatorState;
import com.android.common.independentFocusExposure.MwbService$WbIndicatorState;
import com.android.common.independentutil.IndependenceUtil;
import com.android.common.p012e.C0458b;
import com.android.common.p014n.C0672n;
import com.android.common.p016a.C0126g;
import com.android.common.p016a.C0278b;
import com.android.common.p016a.C0287a;
import com.android.common.p016a.C0291h;
import com.android.common.p018k.C0149b;
import com.android.common.p018k.C0618c;
import com.android.common.p022r.C0699a;
import com.android.common.p027g.C0537c;
import com.android.common.p027g.C0539e;
import com.android.common.p027g.C0540f;
import com.android.common.p027g.C0542h;
import com.android.common.p028h.C0557a;
import com.android.common.p029i.C0564c;
import com.android.common.p029i.C0565a;
import com.android.common.p029i.C0567d;
import com.android.common.p031m.C0630c;
import com.android.common.p031m.C0635h;
import com.android.common.setting.C0157n;
import com.android.common.setting.C0159c;
import com.android.common.setting.C0703a;
import com.android.common.setting.C0709i;
import com.android.common.setting.C0710j;
import com.android.common.setting.ListPreference;
import com.android.common.setting.RecordLocationPreference;
import com.android.common.ui.C0730q;
import com.p010a.C0090a;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.MobclickAgent;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

public abstract class ActivityBase extends Activity implements C0149b {
    private boolean aiA = false;
    private boolean aiB = false;
    private boolean aiC = false;
    private boolean aiD = true;
    private boolean aiE = false;
    private AlertDialog aiF = null;
    protected C0329e aiG = new C0329e();
    protected boolean aiH;
    protected C0404b aiI = null;
    private SurfaceView aiJ;
    private AlphaAnimation aiK;
    protected LinearLayout aiL = null;
    protected BroadcastReceiver aiM = new C0272N(this);
    private BroadcastReceiver aiN = null;
    private boolean aiO = false;
    protected C0542h aiP = null;
    private String aiQ;
    protected IntentFilter aiR = new IntentFilter("com.android.gallery3d.action.DELETE_PICTURE");
    protected BroadcastReceiver aiS = new C0270L(this);
    protected boolean aiT = false;
    protected C0000c aiU;
    protected C0170a aiV = null;
    protected C0539e aiW = null;
    private boolean aiX = false;
    protected ImageView aiY = null;
    protected C0635h aiZ;
    protected C0105L aiw = null;
    public C0557a aix = null;
    private Intent aiy = null;
    private ServiceConnection aiz = new C0277S(this);
    private int[] ajA = new int[2];
    protected C0287a ajB;
    protected boolean ajC = false;
    private int ajD;
    private Intent ajE;
    private Uri ajF;
    protected ValueAnimator ajG;
    protected boolean ajH = false;
    protected final BroadcastReceiver ajI = new C0271M(this);
    protected final BroadcastReceiver ajJ = new C0276R(this);
    private Object ajK = new Object();
    private C0278b ajL = new C0279T(this);
    private int ajM = 0;
    private String ajN = null;
    private C0618c ajO = null;
    protected View ajP = null;
    protected C0319Y ajQ;
    private int ajR = 0;
    protected C0630c aja;
    protected final Handler ajb = new C0770w(this);
    private boolean ajc = true;
    protected C0540f ajd = null;
    private boolean aje = false;
    public boolean ajf = false;
    protected boolean ajg = false;
    protected boolean ajh = false;
    protected boolean aji = false;
    protected boolean ajj = false;
    public boolean ajk = false;
    protected boolean ajl = false;
    private boolean ajm = false;
    KeyguardManager ajn = null;
    private int ajo = -1;
    private long ajp = 0;
    protected final BroadcastReceiver ajq = new C0273O(this);
    protected boolean ajr = true;
    private boolean ajs = false;
    private long ajt = 0;
    protected boolean aju;
    private AlertDialog ajv = null;
    protected C0157n ajw = null;
    private C0369b ajx = null;
    private PowerManager ajy = null;
    protected C0305G ajz;

    protected abstract C0105L atd();

    private boolean auC() {
        ListPreference tp = this.aiG.SR().tp("pref_camera_storage_path");
        atL(tp);
        if (!C0700r.aqU()) {
            return false;
        }
        tp.uY(1);
        C0701s.arn(true);
        return true;
    }

    private void auN() {
        boolean aqU;
        C0090a.bvo("1", "showpathdialog");
        if (C0700r.aqR()) {
            aqU = C0700r.aqU();
        } else {
            aqU = false;
        }
        if (aqU && !this.aiG.VC() && !this.aiG.VN()) {
            if (this.aiF == null) {
                this.aiF = new Builder(this).setTitle(R.string.stroage_select).setMessage(R.string.stroage_path_detail).setNegativeButton(R.string.cancel, null).setPositiveButton(R.string.dialog_ok, new C0280U(this)).create();
            }
            if (this.aiF.isShowing()) {
                C0090a.bvo("ActivityBase", "isShowing");
            } else {
                this.aiF.show();
            }
        }
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C0090a.bvo("ActivityBase", "onCreate");
        this.aiI = new C0404b();
        asq();
        this.aiG.Vj(this, this.ajb, asZ(), atd(), ate());
        this.ajj = getIntent().getBooleanExtra("camera_more_setting", false);
        this.ajx = new C0369b(this);
        this.ajx.aod();
        auV();
        C0616j.aqh(true);
        if (!this.aiC) {
            registerReceiver(this.aiS, this.aiR);
            this.aiC = true;
        }
        asy();
        asu();
        asW();
        setContentView(R.layout.camera);
        if (C0421M.dC().dD().bu() == 1) {
            auK(new C0567d(this));
        } else {
            auK(new C0565a(this));
        }
        atg();
        if (getIntent().getIntExtra("nubia.camera.family", -1) != CameraMember.WLAN_CAMERA.aan()) {
            ath();
            this.aiG.Vk();
            auO();
            this.aiG.WA(false);
            atb();
            this.ajC = getIntent().getBooleanExtra("android.intent.extra.quickCapture", false);
            atl();
            asX();
            arD().Sw();
            atS(bundle);
            C0616j.ahp = atC();
            C0730q.kL(C0616j.ahp);
            if (this.ajj) {
                auM();
            }
            aun();
        }
    }

    public void asU() {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(new ComponentName("com.nubia.nubia360", "com.nubia.nubia360.NubiaVRCameraActivity"));
        intent.addFlags(335544320);
        startActivity(intent);
    }

    public void asV() {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(new ComponentName("cn.nubia.wlancamera", "cn.nubia.wlancamera.WlanCameraMainActivity"));
        intent.addFlags(335544320);
        intent.addFlags(536870912);
        startActivity(intent);
        finish();
    }

    private boolean atC() {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }

    private void asy() {
        if (C0421M.dC().dD().bI() || atq()) {
            if (!getIntent().getBooleanExtra("cameraswitch", false) && atq()) {
                arS();
            }
            if (!this.aiB) {
                registerReceiver(this.aiM, new IntentFilter("stop_camera_activity"));
                this.aiB = true;
            }
        }
    }

    private void auh() {
        if (asR() == null) {
            auO();
        }
    }

    protected void onNewIntent(Intent intent) {
        C0090a.bvo("ActivityBase", "onNewIntent intent : " + intent);
        setIntent(intent);
        super.onNewIntent(intent);
        asq();
        this.aiG.WI(intent.getBooleanExtra("wlancamera", false));
    }

    protected final void onResume() {
        C0090a.bvo("ActivityBase", "in onResume");
        super.onResume();
        if (arE()) {
            asC();
        }
        this.aiG.Ti().amg(arE());
        this.aiG.WS(false);
        if (!this.ajx.aog()) {
            C0090a.m0d("ActivityBase", "isPermissionDialogShow=====" + this.ajx.aoh());
            if (!(this.ajx.aoh() || this.ajx.aoc() || this.aiD)) {
                this.ajx.aof();
            }
            this.aiD = false;
            if (!this.ajx.aog()) {
                C0090a.m0d("ActivityBase", "!mHasCriticalPermissions return");
                return;
            }
        }
        aud();
        auh();
        asn();
        C0616j.aqh(true);
        sendBroadcast(new Intent("com.nubia.stopPIP"));
        if (atG()) {
            atm();
            arD().Sw();
            this.aiG.WA(false);
        } else {
            this.ajb.sendEmptyMessage(2);
        }
        aut();
        this.ajB.m29e().m48K(new C0281V(this));
        atI();
        atc();
        asd();
        this.aix.afo();
        asY(true);
        avc();
        this.aiU.Sv();
        auc();
        ask();
    }

    private void ask() {
        if (!this.aiA) {
            this.aiA = true;
            C0090a.m0d("WlanCamera:Camera", "bindWlamCameraService ");
            this.aiy = new Intent();
            this.aiy.setComponent(new ComponentName("cn.nubia.wlancamera", "cn.nubia.wlancamera.filming.WlanCameraRemoteService"));
            bindService(this.aiy, this.aiz, 4);
        }
    }

    private void avc() {
        this.aiI.JW(null);
    }

    private void asn() {
        if (C0421M.dC().dD().dg()) {
            C0699a.ang().ani(this, new C0283W(this));
        }
    }

    protected void onPause() {
        super.onPause();
        C0090a.bvo("ActivityBase", "in onPause");
        this.aiG.WS(true);
        if (this.aiG.Uh() != null) {
            this.aiG.Uh().SJ();
            this.aiG.Ui(null);
        }
        if (!(this.aiG == null || this.aiG.Uy())) {
            C0616j.aqg(this.aiG);
            this.aiG.Wq(true);
        }
        if (this.ajv != null) {
            this.ajv.dismiss();
            this.ajv = null;
        }
        arO();
        arJ(false);
        this.aiG.Xm();
        if (this.aiG.Tf() != null) {
            this.aiG.Tf().setVisibility(8);
        }
        if (this.aiF != null) {
            this.aiF.dismiss();
            this.aiF = null;
        }
        auo();
        try {
            auW();
            ass();
        } catch (Exception e) {
            e.printStackTrace();
            auv(DeviceState.NOT_INITIALIZED);
            C0384o.Jr().release();
        }
        this.aiG.SU().Sm();
        asE();
        if (asQ() != null) {
            asQ().release();
            auH(null);
        }
        auq();
        if (atG()) {
            this.aiG.Xe();
        }
        if (this.aiT) {
            unregisterReceiver(this.ajq);
            unregisterReceiver(this.ajJ);
            this.aiT = false;
        }
        if (asT() != null) {
            asT().agf(false);
        }
        this.ajb.removeCallbacksAndMessages(null);
        this.aiG.TE().Lv();
        asY(false);
        asj();
        if (this.ajh && !C0616j.apQ(this)) {
            getWindow().clearFlags(4194304);
            this.ajh = false;
        }
        this.aiG.Wg(false, 1);
        this.aiI.JW(FunctionState.SWITCHING_CAMERA);
        asB();
        this.aiU.Sx();
        if (this.aiG.UN() != null && this.aiG.UN().equals(this.aiG.ST())) {
            C0090a.bvo("ActivityBase", "SwitchCamera when exit camera, clear state");
            this.aiG.SU().Rt();
        }
        this.aiG.WD(null);
        if (arE()) {
            if (!C0616j.apR(this)) {
                asD();
            } else if (!C0616j.apV(getPackageName(), this)) {
                asD();
            }
        }
        asA(false);
        C0090a.bvo("ActivityBase", "onPause end");
        if (this.aiA) {
            unbindService(this.aiz);
            this.aiA = false;
            this.aiG.WI(false);
        }
    }

    public void onStop() {
        C0090a.bvo("ActivityBase", "in onStop");
        this.aiG.We();
        super.onStop();
    }

    protected void onDestroy() {
        C0090a.bvo("ActivityBase", "onDestroy");
        if (this.ajH) {
            unregisterReceiver(this.ajI);
            this.ajH = false;
        }
        if (asT() != null) {
            asT().release();
            auK(null);
        }
        if (this.aiB) {
            unregisterReceiver(this.aiM);
        }
        if (this.aiC) {
            unregisterReceiver(this.aiS);
        }
        ava();
        this.aiU.SD();
        this.aiG.release();
        super.onDestroy();
        if (this.ajj) {
            overridePendingTransition(R.anim.nubia_task_close_enter, R.anim.nubia_task_close_exit);
        }
    }

    protected final void atf(C0378d c0378d, CameraMember cameraMember) {
        this.aiG.Vm(c0378d, cameraMember);
        this.aiG.UV().uk(this, asH(), this.aiG.SP(), arE());
        this.aiG.UV().un(this, asH(), this.aiG.SP(), arE(), this.aiG.VM());
        C0090a.bvo("ActivityBase", "init, Camera Id: " + asH() + ", Member: " + this.aiG.SP());
    }

    protected void ass() {
        this.aiG.Up();
        this.ajk = false;
    }

    protected final void asj() {
        super.onPause();
        C0616j.aqh(false);
        this.ajf = false;
        this.ajk = false;
        if (this.aix != null) {
            this.aix.afu();
            this.aix.afk();
        }
        if (this.aiG.Ve() != null) {
            this.aiG.Ve().cancel();
            this.aiG.WU(null);
        }
        C0458b.adi().quit();
        aui();
    }

    private void asY(boolean z) {
        if (atu()) {
            try {
                Object invoke = Class.forName("android.os.ServiceManager").getMethod("getService", new Class[]{String.class}).invoke(null, new Object[]{"system_access"});
                invoke = Class.forName("nubia.os.ISystemAccess$Stub").getMethod("asInterface", new Class[]{IBinder.class}).invoke(null, new Object[]{invoke});
                invoke.getClass().getMethod("setFactoryFlag", new Class[]{Boolean.TYPE, Boolean.TYPE}).invoke(invoke, new Object[]{Boolean.valueOf(z), Boolean.valueOf(z)});
            } catch (Throwable e) {
                C0090a.bvn("ActivityBase", e.toString(), e);
            }
        }
    }

    protected C0771x asQ() {
        return this.aiG.Va();
    }

    protected void auH(C0771x c0771x) {
        this.aiG.WK(c0771x);
    }

    private void atc() {
        if (asQ() == null) {
            int i = 1;
            if (getResources().getBoolean(R.bool.config_camera_sound_enforced)) {
                i = 7;
            }
            auH(new C0771x(i));
        }
    }

    protected C0350z asR() {
        return this.aiG.UC();
    }

    private void atm() {
        this.aiG.Xa(true);
        if (asT() != null) {
            asT().agf(RecordLocationPreference.tv(asN(), getContentResolver()));
        }
        atn();
        atH();
        aup();
        this.ajb.sendEmptyMessageDelayed(113, 1000);
    }

    private void atl() {
        this.aiL = (LinearLayout) findViewById(R.id.captureanim_layout);
        this.aiY = (ImageView) findViewById(R.id.flashwhiteboard);
        this.ajP = findViewById(R.id.wake_up_view);
        this.ajP.setOnClickListener(new C0284X(this));
    }

    protected C0382m asG() {
        return this.aiG.Tr();
    }

    private void atb() {
        this.aiG.Vq(this);
    }

    protected void auO() {
        C0421M.dC().dD();
        this.aiG.WY(this.aiG.ST().FF(), new C0285Y(this));
    }

    private void auE() {
        this.ajb.post(new C0286Z(this));
    }

    protected void atg() {
        C0378d c0378d = null;
        CameraMember abC = this.aiw.abC(null);
        List ZM = this.aiw.ZM(abC);
        if (ZM == null || ZM.size() == 0) {
            throw new IllegalArgumentException("No suituable camera id found!!!");
        }
        if (ZM.size() == 1) {
            c0378d = (C0378d) ZM.get(0);
        }
        atf(c0378d, abC);
    }

    private void auK(C0564c c0564c) {
        this.aiG.WR(c0564c);
    }

    public void arS() {
    }

    public void arT() {
    }

    private void ath() {
        C0090a.m1e("ActivityBase", "initPreviewResources");
        this.aiJ = (SurfaceView) findViewById(R.id.camera_preview_surface);
        this.ajz = new C0305G(getResources(), this.ajb);
        this.ajz.abb(new aa(this));
        this.ajB = new C0287a(this.aiG, this.ajL, this.aiJ, new C0537c(this.aiG.SN()));
        this.ajz.abb(this.ajB.m28d());
    }

    public C0287a arK() {
        return this.ajB;
    }

    private void auV() {
        if (C0616j.apO()) {
            AnalyticsConfig.setAppkey(this, "54f3c83bfd98c58a46000325");
            AnalyticsConfig.setChannel("nubia");
            AnalyticsConfig.enableEncrypt(true);
            MobclickAgent.openActivityDurationTrack(false);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void auZ() {
        /*
        r3 = this;
        r1 = r3.ajK;
        monitor-enter(r1);
        r0 = r3.ajj;	 Catch:{ all -> 0x003d }
        if (r0 == 0) goto L_0x0009;
    L_0x0007:
        monitor-exit(r1);
        return;
    L_0x0009:
        r0 = r3.ajf;	 Catch:{ all -> 0x003d }
        if (r0 == 0) goto L_0x0021;
    L_0x000d:
        r0 = r3.ajB;	 Catch:{ all -> 0x003d }
        r0 = r0.m30g();	 Catch:{ all -> 0x003d }
        if (r0 == 0) goto L_0x0021;
    L_0x0015:
        r0 = r3.asJ();	 Catch:{ all -> 0x003d }
        r2 = com.android.common.camerastate.DeviceState.PREVIEW_STOPPED;	 Catch:{ all -> 0x003d }
        if (r0 != r2) goto L_0x0021;
    L_0x001d:
        r0 = r3.ajk;	 Catch:{ all -> 0x003d }
        if (r0 == 0) goto L_0x0023;
    L_0x0021:
        monitor-exit(r1);
        return;
    L_0x0023:
        r3.asF();	 Catch:{ all -> 0x003d }
        r0 = r3.aiG;	 Catch:{ all -> 0x003d }
        r0 = r0.UQ();	 Catch:{ all -> 0x003d }
        r0.XL();	 Catch:{ all -> 0x003d }
        r0 = 1;
        r3.ajk = r0;	 Catch:{ all -> 0x003d }
        r0 = r3.ajb;	 Catch:{ all -> 0x003d }
        r2 = new com.android.common.ab;	 Catch:{ all -> 0x003d }
        r2.<init>(r3);	 Catch:{ all -> 0x003d }
        r0.post(r2);	 Catch:{ all -> 0x003d }
        goto L_0x0021;
    L_0x003d:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.ActivityBase.auZ():void");
    }

    protected boolean atB() {
        return this.aiG.SO();
    }

    protected void atM() {
        this.ajb.post(new ac(this));
    }

    protected void aua() {
        this.ajb.post(new ad(this));
    }

    protected void atR() {
        aut();
        this.ajt = SystemClock.uptimeMillis();
        asp();
    }

    protected boolean atr() {
        if (asG() == null && C0616j.apL(getApplicationContext())) {
            return true;
        }
        return false;
    }

    protected boolean aso() {
        if (atr()) {
            this.ajv = C0616j.aqj(this, R.string.cannot_conflic_close_light);
            return false;
        } else if (this.aju) {
            if (Camera.getNumberOfCameras() == 0) {
                C0090a.bvo("ActivityBase", "can not detect any cameras. Number of cameras: " + Camera.getNumberOfCameras());
                this.ajv = C0616j.aqj(this, R.string.nubia_has_no_camera);
            } else {
                this.ajv = C0616j.aqj(this, R.string.ztemt_cannot_connect_camera);
            }
            return false;
        } else if (!this.aiH) {
            return true;
        } else {
            this.ajv = C0616j.aqj(this, R.string.camera_disabled);
            return false;
        }
    }

    protected void atQ() {
        if (asJ() == DeviceState.NOT_INITIALIZED) {
            C0090a.bvo("ActivityBase", "Camera not initialize.");
            return;
        }
        this.aiH = false;
        this.aju = false;
        ati();
        if (this.ajj) {
            runOnUiThread(new ae(this));
        }
    }

    private void auM() {
        C0090a.m0d("ActivityBase", "add more settings fragment");
        C0672n c0672n = (C0672n) getFragmentManager().findFragmentByTag("more_settings");
        FragmentTransaction beginTransaction;
        if (c0672n == null) {
            c0672n = C0672n.akI();
            c0672n.akJ(this.aiG);
            c0672n.akK(this.ajj);
            beginTransaction = getFragmentManager().beginTransaction();
            beginTransaction.setCustomAnimations(0, 0);
            beginTransaction.add(R.id.more_settings_fragment, c0672n, "more_settings");
            beginTransaction.commitAllowingStateLoss();
        } else {
            beginTransaction = getFragmentManager().beginTransaction();
            beginTransaction.show(c0672n);
            beginTransaction.commitAllowingStateLoss();
        }
        c0672n.akL(true);
    }

    public C0086j asM() {
        return this.aiG.Tn();
    }

    public void arN(int i) {
        this.ajD = i;
        setResult(i);
    }

    public void arM(int i, Intent intent) {
        this.ajD = i;
        this.ajE = intent;
        setResult(i, intent);
    }

    public int getResultCode() {
        return this.ajD;
    }

    public Intent getResultData() {
        return this.ajE;
    }

    public void arP(int i) {
    }

    public final boolean ase(int i, int i2) {
        if (!this.ajz.abc((float) i, (float) i2)) {
            return false;
        }
        this.ajz.aaZ(this.ajA);
        if (ats()) {
            auf(i - this.ajA[0], i2 - this.ajA[1]);
            this.aiG.SU().Sd(i, i2);
        } else {
            C0090a.bvo("ActivityBase", "consume onSingleTapUp; device state: " + asJ() + "; function state: " + asL() + "; ui state: " + asP());
        }
        return true;
    }

    public final void atX(int i, int i2) {
        if (this.ajz.abc((float) i, (float) i2)) {
            this.ajz.aaZ(this.ajA);
            atY(i - this.ajA[0], i2 - this.ajA[1]);
        }
    }

    private void auf(int i, int i2) {
        if (this.aiG.SQ() == C0384o.Jr().Jt() && atD()) {
            if (!(this.aiG.SP() == CameraMember.FRONT || this.aiG.SP() == CameraMember.PRETTYCAMERA)) {
                if (this.aiG.SP() == CameraMember.NORMAL) {
                }
            }
            this.aiG.SU().Sf();
        }
        this.aiG.TE().Lu(i, i2);
    }

    private boolean ats() {
        return (this.aiG.SO() || !atG() || asG() == null || !this.ajf || asJ() == DeviceState.NOT_INITIALIZED || asJ() == DeviceState.SNAPSHOT_IN_PROGRESS || asJ() == DeviceState.PREVIEW_STOPPED || asL() == FunctionState.SWITCHING_CAMERA || asL() == FunctionState.QUALITY_MULTISHOOTING || asL() == FunctionState.SPEED_MULTISHOOTING || asP() != UIState.NORMAL) ? false : true;
    }

    private void atY(int i, int i2) {
        if (!this.aiG.SO() && asG() != null && atG() && asJ() != DeviceState.SNAPSHOT_IN_PROGRESS && asL() != FunctionState.SWITCHING_CAMERA && asJ() != DeviceState.PREVIEW_STOPPED) {
            this.aiG.TE().Lt();
        }
    }

    private boolean atD() {
        if (C0421M.dC().dD().cU()) {
            return asN().getString("pref_capture_focus_key", arB().SN().getString(R.string.pref_capture_focus_default)).equals("on");
        }
        return false;
    }

    protected int asH() {
        return this.aiG.SQ();
    }

    public boolean aue(float f, float f2, float f3, float f4) {
        return false;
    }

    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    public C0305G arW() {
        return this.ajz;
    }

    public boolean arE() {
        return this.aji ? C0616j.apQ(this) : false;
    }

    public void auz(boolean z) {
        this.aji = z;
    }

    public void arG(C0126g c0126g) {
        if (this.ajB != null) {
            this.ajB.m26a(c0126g);
        }
    }

    public void arH(C0126g c0126g) {
        if (this.ajB != null) {
            this.ajB.m32i(c0126g);
        }
    }

    protected void asF() {
        if (C0421M.dC().dD().bZ() && asH() == C0384o.Jr().Jt() && this.aiG.SP() == CameraMember.LIGHTDRAW) {
            this.ajB.m38p(-1);
        } else if (C0384o.Jr().Ju()[asH()].facing == 0) {
            this.ajB.m38p(1);
        }
    }

    public boolean atJ() {
        if (this.ajB == null || this.ajB.m27c() != -1) {
            return false;
        }
        return true;
    }

    public void aui() {
        if (this.ajB != null) {
            this.ajB.m31h();
        }
    }

    public void aut() {
        if (this.ajB != null) {
            this.ajB.m36n();
        }
    }

    public void arz(C0291h c0291h) {
        if (this.ajB != null) {
            this.ajB.m34k(c0291h);
        }
    }

    public boolean arA(C0291h c0291h) {
        if (this.ajB != null) {
            return this.ajB.m33j(c0291h);
        }
        return false;
    }

    public boolean asa() {
        if (this.ajG == null || !this.ajG.isStarted()) {
            return false;
        }
        return true;
    }

    private void asq() {
        boolean z = true;
        if (!(getIntent().getBooleanExtra("keyguard_locked", false) || getIntent().getAction() == "android.media.action.STILL_IMAGE_CAMERA_SECURE")) {
            z = false;
        }
        auz(z);
    }

    private void asC() {
        Window window = getWindow();
        LayoutParams attributes = window.getAttributes();
        attributes.flags |= 524288;
        window.setAttributes(attributes);
        this.aiG.Ti().ame().amu();
    }

    public void asD() {
        finish();
    }

    protected boolean atu() {
        return this.aiG.VA();
    }

    private void auI(boolean z) {
        this.aiG.WN(z);
    }

    protected boolean atG() {
        return this.aiG.VS();
    }

    protected C0710j asN() {
        return this.aiG.SS();
    }

    protected C0564c asT() {
        return this.aiG.Tq();
    }

    protected void atH() {
        this.aiG.Uj();
    }

    protected void atn() {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.MEDIA_MOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_SCANNER_FINISHED");
        intentFilter.addAction("android.intent.action.MEDIA_CHECKING");
        intentFilter.addAction("android.intent.action.MEDIA_EJECT");
        intentFilter.addDataScheme("file");
        registerReceiver(this.ajq, intentFilter);
        intentFilter = new IntentFilter();
        intentFilter.addAction("com.nubia_bt.capture");
        registerReceiver(this.ajJ, intentFilter);
        this.aiT = true;
    }

    private void asg() {
        Looper.myQueue().addIdleHandler(new af(this));
    }

    private void atj() {
        if (!atG()) {
            this.aiG.Xa(false);
            asT().agf(RecordLocationPreference.tv(asN(), getContentResolver()));
            atH();
            atn();
            auI(true);
            asg();
        }
    }

    protected int asK() {
        return this.aiG.UG();
    }

    public void auw() {
        this.aiG.Wv();
    }

    protected void asp() {
        if (C0616j.apj(this) != asK()) {
            auw();
        }
        if (SystemClock.uptimeMillis() - this.ajt < 5000) {
            this.ajb.sendEmptyMessageDelayed(5, 100);
        }
    }

    protected void atk() {
        this.aiG.SU().RE(asH(), this.aiG.SP(), this.aiG);
    }

    void auA() {
        boolean z = false;
        CameraInfo cameraInfo = C0384o.Jr().Ju()[asH()];
        auw();
        if (cameraInfo.orientation % 180 == 0) {
            z = true;
        }
        this.ajz.abd(z);
    }

    public void arC() {
        auA();
        if (asM() != null) {
            double d;
            Size Gv = asM().Gv();
            if (Gv.width == 1920 && Gv.height == 1088) {
                d = 1.7777777777777777d;
            } else {
                d = ((double) Gv.width) / ((double) Gv.height);
            }
            C0090a.bvo("ActivityBase", "target preview ratio: " + d);
            this.ajz.abe(d);
        }
    }

    protected void ati() {
        C0090a.bvo("ActivityBase", "in initializeAfterCameraOpen");
        if (!this.ajj) {
            atk();
        }
        if (this.aiG.VC()) {
            auL();
        }
        if (this.ajQ == null) {
            this.ajQ = new C0319Y(this.aiG);
        }
        arO();
    }

    protected void atL(ListPreference listPreference) {
        this.aiG.SU().RO(listPreference);
    }

    private void avb() {
        C0701s.aih = C0700r.aqV();
        C0701s.aii = C0701s.aih + "/Camera";
    }

    public void auD() {
        if (this.aiG != null && this.aiG.SR() != null) {
            avb();
            ListPreference tp = this.aiG.SR().tp("pref_camera_storage_path");
            atL(tp);
            if (tp.tw().equals(getString(R.string.pref_stroage_phone))) {
                C0701s.arn(false);
            } else {
                C0701s.arn(true);
            }
        }
    }

    private void auU() {
        if (this.aiG.SY().tx()) {
            this.aiG.SU().St(true);
        }
        auJ(Boolean.valueOf(true));
    }

    private void auT() {
        if (this.aiG.TZ()) {
            this.aiG.SU().St(true);
        }
    }

    private void auJ(Boolean bool) {
        this.aiG.WP(bool);
    }

    private C0159c asI() {
        return this.aiG.SY();
    }

    private void auk(long j) {
        arJ(false);
        if (this.aiL != null) {
            if (this.aiK == null) {
                this.aiK = new AlphaAnimation(1.0f, 0.0f);
                this.aiK.setAnimationListener(new ag(this));
            }
            this.aiL.clearAnimation();
            this.aiK.reset();
            this.aiK.setDuration(j);
            this.aiL.startAnimation(this.aiK);
        }
    }

    private void asB() {
        if (this.aiL != null) {
            this.aiL.clearAnimation();
        }
        this.aiK = null;
        this.aiY.setAlpha(0.0f);
    }

    private void aup() {
        this.aiL.setAlpha(0.0f);
        this.aiY.setAlpha(0.0f);
    }

    private void auP() {
        if (this.aiG.VH()) {
            this.aiG.SU().St(false);
        }
        if (!this.aiG.VC() && this.aiG.VR()) {
            long j;
            if (this.aiG.VQ() || this.aiG.VH() || ("off".equals(asI().tG()) && this.aiG.SP() != CameraMember.ZOOMBLUR)) {
                j = 500;
            } else {
                j = 100;
            }
            auk(j);
        }
        this.ajb.sendEmptyMessageDelayed(35, 1200);
        auJ(Boolean.valueOf(false));
    }

    public void arJ(boolean z) {
        if (z && !this.aje) {
            C0090a.bvo("backlight-flash", "showBackLightTorchUI: " + z);
            this.aiY.setAlpha(1.0f);
            arZ(8);
        } else if (!z && this.aje) {
            C0090a.bvo("backlight-flash", "showBackLightTorchUI: " + z);
            this.aiY.setAlpha(0.0f);
            arZ(0);
        }
        this.aje = z;
    }

    public void asA(boolean z) {
        if (z) {
            C0090a.bvo("enableCloseCameraBlackBoard", "enable: " + z);
            this.ajP.setVisibility(0);
            return;
        }
        C0090a.bvo("enableCloseCameraBlackBoard", "enable: " + z);
        this.ajP.setVisibility(8);
    }

    protected boolean ato() {
        return this.aiG.Vy();
    }

    public void auB(boolean z) {
        this.aiG.WE(z);
    }

    private boolean asO() {
        return this.aiG.UT();
    }

    protected void auW() {
        this.aiG.TA();
    }

    public void arX(int i) {
        this.ajM |= i;
        if (asG() == null) {
            this.ajM = 0;
            return;
        }
        if (ato()) {
            auB(false);
            asM().Gy();
            this.aiG.SZ(this.ajM);
            if (asO() && asJ() != DeviceState.PREVIEW_STOPPED) {
                C0090a.m1e("ActivityBase", "Restarting Preview...");
                this.aiG.TB();
                arC();
            }
            auB(false);
            this.ajM = 0;
        } else if (!this.ajb.hasMessages(4)) {
            this.ajb.sendEmptyMessageDelayed(4, 1000);
        }
    }

    private boolean atK() {
        auB(false);
        String tG = this.aiG.SY().tG();
        if (asM().HK().equals(tG) || asJ() == DeviceState.PREVIEW_STOPPED) {
            boolean tJ = this.aiG.SY().tJ();
            if (tJ == this.aiG.Tn().Gw() || asJ() == DeviceState.PREVIEW_STOPPED) {
                return asO();
            }
            C0090a.bvo("TAG", "switch to " + (tJ ? "Video mode" : "Non-video mode") + ". Restart preview");
            auB(true);
            return asO();
        }
        C0090a.m1e("ActivityBase", "Switching to" + ("on".equals(tG) ? " ZSL " : " non ZSL ") + "Camera Mode. Restart Preview");
        auB(true);
        return asO();
    }

    public void aus() {
        int i = 0;
        if (!this.aiG.SO()) {
            int i2;
            if (asM().GP()) {
                arO();
            }
            if (asN().getString("pref_camera_storage_path", getString(R.string.pref_stroage_phone)).equals(getString(R.string.pref_stroage_phone))) {
                i2 = 0;
            } else {
                i2 = 1;
            }
            Editor edit = asN().edit();
            String[] apC = C0616j.apC(this.aiG.SR());
            if (apC != null) {
                for (String remove : apC) {
                    edit.remove(remove);
                }
            }
            String[] bx = C0421M.dC().dD().bx();
            if (bx != null) {
                while (i < bx.length) {
                    edit.remove(bx[i]);
                    i++;
                }
            }
            edit.apply();
            aur();
            auy();
            this.aiG.UB().vs(asH());
            this.aiG.SU().Sk();
            this.aiG.SU().So();
            auD();
            if (i2 != 0) {
                this.aiG.Ti().alY(new ah(this));
            } else {
                arI();
            }
        }
    }

    private void aur() {
        ListPreference tp = this.aiG.SR().tp("pref_shutter_key_into_camera_key");
        if (tp != null) {
            tp.va(getString(R.string.pref_shutter_key_into_camera_default));
        }
    }

    public synchronized void arI() {
        if (!this.aiG.SO()) {
            asT().agf(RecordLocationPreference.tv(asN(), getContentResolver()));
            if (atK()) {
                C0090a.m1e("ActivityBase", "Restarting Preview... Camera Mode Changhed");
                DeviceState asJ = asJ();
                auW();
                auQ();
                auB(false);
                if (asJ == DeviceState.SNAPSHOT_IN_PROGRESS) {
                    C0090a.bvo("ActivityBase", "Snapshot is running when restart preview, reset command");
                    C0458b.adi().adk();
                }
            }
            arX(4);
            arC();
        }
    }

    private void atT() {
        this.aiG.Td().Or(CameraExposureService$ExposureIndicatorState.IDLE);
        this.aiG.Tc().MV(CameraFocusService$FocusIndicatorState.IDLE);
        this.aiG.Td().Oq(false);
        this.aiG.Tc().MU(false);
    }

    protected boolean atA() {
        return this.aiG.TE().Lo();
    }

    private void atZ() {
        if (this.aiG.Te().Pd() && atA()) {
            this.aiG.Te().Pw();
            this.aiG.SZ(4);
        }
        this.aiG.Te().PH(MwbService$WbIndicatorState.IDLE);
        this.aiG.Te().PF(false);
    }

    private boolean atp() {
        if (!this.ajc) {
            C0090a.m1e("ActivityBase", "Has no focus!");
            return false;
        } else if (this.aiG == null) {
            C0090a.m1e("ActivityBase", "mAppService is null!");
            return false;
        } else if (this.aiG.SP() == CameraMember.VIDEO_RECORD) {
            return false;
        } else {
            return true;
        }
    }

    protected void asf() {
    }

    protected void aul() {
        if (!this.ajB.m30g()) {
            C0090a.bvo("ActivityBase", "Recreate CameraSurfaceView");
            this.aiJ.setVisibility(8);
            this.aiJ.setVisibility(0);
        }
    }

    private void asu() {
        this.aiG.SU().Rt();
    }

    protected void asW() {
        ata();
        C0616j.apJ(this);
        ast();
        CameraMember.aas(getResources());
    }

    protected void ata() {
        this.aiZ = new C0635h(this);
        this.aja = new C0630c(this, this.aiZ);
    }

    protected void ast() {
        this.aix = new C0557a(this.aiG);
    }

    protected void auQ() {
        this.aiG.TB();
    }

    public void asb() {
        Uri afR = this.aix.afq().afR();
        if (C0616j.aoR(afR, getContentResolver())) {
            C0616j.aqm(afR, this, this.aiG.VP());
            return;
        }
        C0090a.m1e("ActivityBase", "Uri invalid. uri=" + afR);
        this.aix.afp();
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        C0090a.m0d("zyf", "Camera onActivityResult requestCode is " + i + " resultCode is " + i2);
        if (i != 10001) {
            return;
        }
        if (i2 == 0) {
            this.aiG.WI(true);
        } else {
            this.aiG.WI(false);
        }
    }

    protected boolean atx() {
        return false;
    }

    public C0329e arB() {
        return this.aiG;
    }

    public C0404b arV() {
        return this.aiI;
    }

    public void arO() {
        if (this.ajQ != null) {
            this.ajQ.acL();
        }
    }

    protected boolean aty() {
        return this.aiG.SP() == CameraMember.VIDEO_RECORD || this.aiG.SP() == CameraMember.VIDEO_SLOMO;
    }

    protected boolean att() {
        return this.aiG.TE().Lk();
    }

    protected boolean atw() {
        return this.aiG.TE().Lm();
    }

    protected boolean atv() {
        return this.aiG.Tc().LF() == CameraFocusService$FocusIndicatorState.FOCUSED;
    }

    private boolean aug(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.aiG.Tc().MW(false);
        }
        if (att()) {
            this.aiG.Td().Og(motionEvent);
        }
        if (atw()) {
            this.aiG.Tc().MH(motionEvent);
        }
        if (motionEvent.getAction() == 1) {
            this.ajb.sendEmptyMessage(94);
        }
        if (!(att() || atv() || !atA())) {
            this.aiG.Te().Py(motionEvent);
            if (motionEvent.getAction() == 1) {
                this.ajb.sendEmptyMessage(95);
            }
        }
        return false;
    }

    protected boolean asv(MotionEvent motionEvent) {
        if (!(this.ajz == null || this.aiG.TO())) {
            boolean UH;
            if (C0384o.Jr().Ju()[asH()].facing == 1) {
                UH = this.aiG.UH();
            } else {
                UH = false;
            }
            if (!UH) {
                return aug(motionEvent);
            }
        }
        return false;
    }

    protected boolean asx(MotionEvent motionEvent) {
        if (this.ajQ == null || this.ajz == null || !this.ajz.abc(motionEvent.getX(), motionEvent.getY()) || this.aiG.TO() || this.aiG.TE().Ln() || arD().Sz() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE || this.aiG.SP() == CameraMember.PHOTO3D) {
            return false;
        }
        boolean acM = this.ajQ.acM(motionEvent);
        if (acM && 5 == (motionEvent.getAction() & 255)) {
            this.aiG.TE().Ly();
        }
        return acM;
    }

    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            onUserInteraction();
        }
        if (asG() == null || !this.ajf || asJ() == DeviceState.NOT_INITIALIZED || asL() == FunctionState.SWITCHING_CAMERA || asL() == FunctionState.RESTART_CAMERA) {
            if (this.ajP.getVisibility() == 0) {
                this.ajP.callOnClick();
            }
            if (motionEvent.getAction() == 0) {
                onUserInteraction();
            }
            return true;
        } else if (asL() == FunctionState.QUALITY_MULTISHOOTING || asL() == FunctionState.SPEED_MULTISHOOTING || asP() == UIState.SETTING) {
            return super.dispatchTouchEvent(motionEvent);
        } else {
            if ((motionEvent.getAction() & 255) == 0 && this.ajQ != null) {
                this.ajQ.acN();
            }
            if (this.aiG.SU().dispatchTouchEvent(motionEvent)) {
                if (motionEvent.getAction() == 0) {
                    onUserInteraction();
                }
                return true;
            } else if (!asw(motionEvent)) {
                return super.dispatchTouchEvent(motionEvent);
            } else {
                if (motionEvent.getAction() == 0) {
                    onUserInteraction();
                }
                return true;
            }
        }
    }

    protected boolean asw(MotionEvent motionEvent) {
        if (!(asJ() == DeviceState.PREVIEW_STOPPED || asx(motionEvent))) {
            asv(motionEvent);
        }
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && this.ajQ != null) {
            this.ajQ.acO(true);
        }
        if (this.aja == null) {
            return false;
        }
        this.aja.onTouchEvent(motionEvent);
        return true;
    }

    private void aub(boolean z) {
        this.aiG.TT().abm(z);
    }

    private boolean atV(int i, KeyEvent keyEvent) {
        if (!atu()) {
            return false;
        }
        setResult(0);
        finish();
        return true;
    }

    private boolean atU(int i, KeyEvent keyEvent) {
        if (this.ajg && atG() && keyEvent.getRepeatCount() == 0) {
            aub(true);
        }
        return true;
    }

    private boolean atW(int i, KeyEvent keyEvent) {
        if (this.ajg && atG() && keyEvent.getRepeatCount() == 0) {
            aub(false);
        }
        return true;
    }

    private void auj(int i) {
        if (atF() && this.ajQ != null) {
            if (this.aiI.JV() == DeviceState.IDLE || ((this.aiI.JV() == DeviceState.VIDEO_RECORDING && asm()) || this.aiI.JV() == DeviceState.VIDEO_RECORDING_PAUSED)) {
                C0090a.bvo("ActivityBase", "performZoomForKeyDown");
                if (i == 24) {
                    this.ajQ.acP();
                } else {
                    this.ajQ.acQ();
                }
            }
        }
    }

    private boolean asm() {
        return asN().getString("pref_video_zoom_key", getString(R.string.pref_video_zoom_default)).equals("on");
    }

    protected boolean atF() {
        return true;
    }

    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (asz(i) || atE(i)) {
            return false;
        }
        C0090a.bvm("ActivityBase", "onKeyDown: " + i + " " + KeyEvent.keyCodeToString(i));
        if (this.aiG.SO()) {
            return false;
        }
        if (this.ajf && asG() != null && asJ() != DeviceState.NOT_INITIALIZED && asL() != FunctionState.RESTART_CAMERA) {
            this.aiE = false;
            if (atN(i, keyEvent)) {
                return true;
            }
            if (this.aiG.SU().onKeyDown(i, keyEvent)) {
                this.aiE = true;
                return true;
            }
            boolean z = (atG() && keyEvent.getRepeatCount() == 0 && asL() != FunctionState.SPEED_MULTISHOOTING) ? asL() != FunctionState.QUALITY_MULTISHOOTING : false;
            if (!asl(i)) {
                return true;
            }
            if (keyEvent.getRepeatCount() == 0) {
                C0090a.bvm("ActivityBase", "onKeyDown: canTrack(" + z + ")");
                if (i == 27 || i == C0616j.ahr) {
                    this.aiX = true;
                }
            }
            String string;
            if (i == C0616j.ahr) {
                switch (i) {
                    case 24:
                    case 25:
                        string = asN().getString("pref_camera_volume_key", C0421M.dC().dD().bn());
                        C0090a.bvo("ActivityBase", "volume = " + string);
                        if ("zoom".equals(string)) {
                            auj(i);
                        } else if ("shutter".equals(string)) {
                            return false;
                        } else {
                            if (z) {
                                keyEvent.startTracking();
                                this.aiG.SU().Sg(true);
                            }
                        }
                        return true;
                    case 26:
                        atV(i, keyEvent);
                        break;
                    case 27:
                    case 66:
                    case 79:
                        if (z) {
                            keyEvent.startTracking();
                            this.aiG.SU().Sg(true);
                        }
                        return true;
                    case 80:
                        return atU(i, keyEvent);
                    case 85:
                    case 126:
                    case 127:
                        if (z) {
                            if (this.aiG.SU().RH()) {
                                keyEvent.startTracking();
                                this.aiG.SU().Sg(true);
                            } else if (this.aiG.Uy()) {
                                return asi(i, keyEvent);
                            } else {
                                this.aiG.SU().RW();
                                return true;
                            }
                        }
                        return true;
                    case 10000:
                        C0090a.bvm("ActivityBase", "onKeyDown: ZTEMT_CAMERA_KEY_CODE for nubia finder");
                        if (z) {
                            this.aiG.SU().Sf();
                        }
                        return true;
                    case 10001:
                        C0090a.bvm("ActivityBase", "onKeyDown: ZTEMT_CAMERA_VOICE_RECOGNIZER_KEY_CODE");
                        if (z) {
                            this.aiG.SU().Si(this.ajN);
                        }
                        return true;
                    case 10002:
                        C0090a.bvm("ActivityBase", "onKeyDown: ZTEMT_CAMERA_CONTROL_SCREEN_ON_KEY_CODE");
                        if (z && this.aiG.SU().RH() && this.aiG.Uy()) {
                            this.aiG.SU().RW();
                        }
                        return true;
                    case 10003:
                        C0090a.bvm("ActivityBase", "onKeyDown: ZTEMT_CAMERA_CONTROL_SCREEN_OFF_KEY_CODE");
                        if (z && this.aiG.SU().RH() && !this.aiG.Uy()) {
                            this.aiG.SU().RX();
                        }
                        return true;
                }
                return asi(i, keyEvent);
            }
            switch (i) {
                case 24:
                case 25:
                    string = asN().getString("pref_camera_volume_key", C0421M.dC().dD().bn());
                    C0090a.bvo("ActivityBase", "volume = " + string);
                    if ("zoom".equals(string)) {
                        auj(i);
                    } else if ("shutter".equals(string)) {
                        return false;
                    } else {
                        if (z) {
                            keyEvent.startTracking();
                            this.aiG.SU().Sg(true);
                        }
                    }
                    return true;
                case 26:
                    atV(i, keyEvent);
                    break;
                case 27:
                case 66:
                case 79:
                    if (z) {
                        keyEvent.startTracking();
                        this.aiG.SU().Sg(true);
                    }
                    return true;
                case 80:
                    return atU(i, keyEvent);
                case 85:
                case 126:
                case 127:
                    if (z) {
                        if (this.aiG.SU().RH()) {
                            keyEvent.startTracking();
                            this.aiG.SU().Sg(true);
                        } else if (this.aiG.Uy()) {
                            return asi(i, keyEvent);
                        } else {
                            this.aiG.SU().RW();
                            return true;
                        }
                    }
                    return true;
                case 10000:
                    C0090a.bvm("ActivityBase", "onKeyDown: ZTEMT_CAMERA_KEY_CODE for nubia finder");
                    if (z) {
                        this.aiG.SU().Sf();
                    }
                    return true;
                case 10001:
                    C0090a.bvm("ActivityBase", "onKeyDown: ZTEMT_CAMERA_VOICE_RECOGNIZER_KEY_CODE");
                    if (z) {
                        this.aiG.SU().Si(this.ajN);
                    }
                    return true;
                case 10002:
                    C0090a.bvm("ActivityBase", "onKeyDown: ZTEMT_CAMERA_CONTROL_SCREEN_ON_KEY_CODE");
                    this.aiG.SU().RW();
                    return true;
                case 10003:
                    C0090a.bvm("ActivityBase", "onKeyDown: ZTEMT_CAMERA_CONTROL_SCREEN_OFF_KEY_CODE");
                    this.aiG.SU().RX();
                    return true;
            }
            return asi(i, keyEvent);
        } else if (i == 82) {
            return true;
        } else {
            return asi(i, keyEvent);
        }
    }

    private boolean atE(int i) {
        if (Arrays.asList(new Integer[]{Integer.valueOf(19), Integer.valueOf(20), Integer.valueOf(21), Integer.valueOf(22), Integer.valueOf(23)}).contains(Integer.valueOf(i))) {
            return true;
        }
        return (7 <= i && i <= 16) || ((29 <= i && i <= 54) || (131 <= i && i <= 142));
    }

    private boolean asz(int i) {
        if (i != 123456 || !Log.isLoggable("ActivityBase", 3)) {
            return false;
        }
        try {
            C0090a.bvo("ActivityBase", "dump hprof E");
            Debug.dumpHprofData("/sdcard/camera_" + System.currentTimeMillis() + ".hprof");
            C0090a.bvo("ActivityBase", "dump hprof X");
        } catch (IOException e) {
            C0090a.m1e("ActivityBase", "dump hprof fail " + e.getMessage());
        }
        return true;
    }

    private boolean asi(int i, KeyEvent keyEvent) {
        if ((i == 84 || i == 82) && keyEvent.isLongPress()) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    protected boolean atN(int i, KeyEvent keyEvent) {
        return false;
    }

    private boolean asl(int i) {
        if (i == 24 || i == 25) {
            if (this.ajo == 66 && System.currentTimeMillis() - this.ajp < 1000 && System.currentTimeMillis() - this.ajp > 0) {
                return false;
            }
            this.ajp = System.currentTimeMillis();
        }
        if (i == 66) {
            String string = asN().getString("pref_camera_volume_key", C0421M.dC().dD().bn());
            if ((this.ajo == 24 || this.ajo == 25) && "shutter".equals(string) && System.currentTimeMillis() - this.ajp < 1000 && System.currentTimeMillis() - this.ajp > 0) {
                return false;
            }
            this.ajp = System.currentTimeMillis();
        }
        this.ajo = i;
        return true;
    }

    private void aum(int i) {
        if (i == 24 || i == 66) {
            this.ajp = System.currentTimeMillis();
        }
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        this.ajc = z;
    }

    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (atE(i)) {
            return false;
        }
        C0090a.bvm("ActivityBase", "onKeyUp: " + i + " " + KeyEvent.keyCodeToString(i));
        if (!this.ajf || asG() == null || asJ() == DeviceState.NOT_INITIALIZED || asL() == FunctionState.RESTART_CAMERA) {
            return super.onKeyUp(i, keyEvent);
        }
        if (atP(i, keyEvent) || this.aiG.SU().onKeyUp(i, keyEvent)) {
            return true;
        }
        boolean z;
        boolean atG;
        boolean z2 = (keyEvent.getFlags() & 256) != 0;
        if (z2 || !atG() || keyEvent.getRepeatCount() != 0 || asL() == FunctionState.SPEED_MULTISHOOTING || asL() == FunctionState.QUALITY_MULTISHOOTING || ((i == 27 && !this.aiX) || !asl(i))) {
            z = false;
        } else if (this.aiE) {
            z = false;
        } else {
            z = true;
        }
        if (z2 && keyEvent.getRepeatCount() == 0) {
            atG = atG();
        } else {
            atG = false;
        }
        if (keyEvent.getRepeatCount() == 0) {
            C0090a.bvm("ActivityBase", "onKeyUp: isLongPressHappened(" + z2 + "), " + "canTriggerCapture(" + z + "), " + "isKeyDownConsumed(" + this.aiE + "), " + "canTriggerShutterButtonFocus(" + atG + ")");
        }
        this.aiE = false;
        if (i == C0616j.ahr) {
            switch (i) {
                case 24:
                case 25:
                    if (asN().getString("pref_camera_volume_key", C0421M.dC().dD().bn()).equals("shutter")) {
                        if (z) {
                            this.aiG.SU().Sf();
                        } else if (atG) {
                            this.aiG.SU().Sg(false);
                        }
                    }
                    aum(i);
                    return true;
                case 27:
                case 66:
                case 79:
                case 10004:
                    if (z) {
                        atI();
                        this.aiG.SU().Sf();
                    } else if (atG) {
                        this.aiG.SU().Sg(false);
                    }
                    if (i == 27) {
                        this.aiX = false;
                    }
                    aum(i);
                    return true;
                case 80:
                    atW(i, keyEvent);
                    return true;
                case 85:
                case 126:
                case 127:
                    if (!z && !this.aiG.SU().RH()) {
                        this.aiG.SU().Sf();
                    } else if (atG) {
                        this.aiG.SU().Sg(false);
                    }
                    return true;
                default:
                    return super.onKeyUp(i, keyEvent);
            }
        }
        switch (i) {
            case 24:
            case 25:
                if (asN().getString("pref_camera_volume_key", C0421M.dC().dD().bn()).equals("shutter")) {
                    if (z) {
                        this.aiG.SU().Sf();
                    } else if (atG) {
                        this.aiG.SU().Sg(false);
                    }
                }
                aum(i);
                return true;
            case 27:
            case 66:
            case 79:
            case 10004:
                if (z) {
                    atI();
                    this.aiG.SU().Sf();
                } else if (atG) {
                    this.aiG.SU().Sg(false);
                }
                if (i == 27) {
                    this.aiX = false;
                }
                aum(i);
                return true;
            case 80:
                atW(i, keyEvent);
                return true;
            case 85:
            case 126:
            case 127:
                if (!z) {
                    break;
                }
                if (atG) {
                    this.aiG.SU().Sg(false);
                }
                return true;
            default:
                return super.onKeyUp(i, keyEvent);
        }
    }

    protected boolean atP(int i, KeyEvent keyEvent) {
        return false;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean onKeyLongPress(int r6, android.view.KeyEvent r7) {
        /*
        r5 = this;
        r0 = 0;
        r1 = 1;
        r2 = "ActivityBase";
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "onKeyLongPress: ";
        r3 = r3.append(r4);
        r4 = android.view.KeyEvent.keyCodeToString(r6);
        r3 = r3.append(r4);
        r3 = r3.toString();
        com.p010a.C0090a.bvm(r2, r3);
        r2 = r5.asG();
        if (r2 == 0) goto L_0x0032;
    L_0x0026:
        r2 = r5.ajf;
        if (r2 == 0) goto L_0x0032;
    L_0x002a:
        r2 = r5.asJ();
        r3 = com.android.common.camerastate.DeviceState.NOT_INITIALIZED;
        if (r2 != r3) goto L_0x0033;
    L_0x0032:
        return r1;
    L_0x0033:
        r2 = r5.asL();
        r3 = com.android.common.camerastate.FunctionState.RESTART_CAMERA;
        if (r2 == r3) goto L_0x0032;
    L_0x003b:
        r2 = r5.atx();
        if (r2 != 0) goto L_0x0032;
    L_0x0041:
        r2 = r5.atO(r6, r7);
        if (r2 == 0) goto L_0x0048;
    L_0x0047:
        return r1;
    L_0x0048:
        r2 = r5.aiG;
        r2 = r2.SU();
        r2 = r2.onKeyLongPress(r6, r7);
        if (r2 == 0) goto L_0x0055;
    L_0x0054:
        return r1;
    L_0x0055:
        r2 = r5.atG();
        if (r2 == 0) goto L_0x006c;
    L_0x005b:
        r2 = r5.asL();
        r3 = com.android.common.camerastate.FunctionState.SPEED_MULTISHOOTING;
        if (r2 == r3) goto L_0x006c;
    L_0x0063:
        r2 = r5.asL();
        r3 = com.android.common.camerastate.FunctionState.QUALITY_MULTISHOOTING;
        if (r2 == r3) goto L_0x006c;
    L_0x006b:
        r0 = r1;
    L_0x006c:
        r2 = "ActivityBase";
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "onKeyLongPress: canTriggerLongClickCapture(";
        r3 = r3.append(r4);
        r3 = r3.append(r0);
        r4 = ")";
        r3 = r3.append(r4);
        r3 = r3.toString();
        com.p010a.C0090a.bvm(r2, r3);
        r2 = com.android.common.C0616j.ahr;
        if (r6 != r2) goto L_0x0091;
    L_0x0091:
        switch(r6) {
            case 24: goto L_0x00b2;
            case 25: goto L_0x00b2;
            case 27: goto L_0x00b2;
            case 66: goto L_0x00b2;
            case 79: goto L_0x00b2;
            case 85: goto L_0x0099;
            case 126: goto L_0x0099;
            case 127: goto L_0x0099;
            default: goto L_0x0094;
        };
    L_0x0094:
        r0 = super.onKeyLongPress(r6, r7);
        return r0;
    L_0x0099:
        if (r0 == 0) goto L_0x00a7;
    L_0x009b:
        r0 = r5.aiG;
        r0 = r0.SU();
        r0 = r0.RH();
        if (r0 == 0) goto L_0x00a8;
    L_0x00a7:
        return r1;
    L_0x00a8:
        r0 = r5.aiG;
        r0 = r0.SU();
        r0.Sh();
        goto L_0x00a7;
    L_0x00b2:
        if (r0 == 0) goto L_0x00bd;
    L_0x00b4:
        r0 = r5.aiG;
        r0 = r0.SU();
        r0.Sh();
    L_0x00bd:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.ActivityBase.onKeyLongPress(int, android.view.KeyEvent):boolean");
    }

    protected boolean atO(int i, KeyEvent keyEvent) {
        return false;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void arQ() {
        /*
        r6 = this;
        r3 = -1;
        r0 = 0;
        r1 = r6.aiG;
        r1 = r1.SO();
        if (r1 == 0) goto L_0x000b;
    L_0x000a:
        return;
    L_0x000b:
        r1 = r6.asS();
        if (r1 != 0) goto L_0x0012;
    L_0x0011:
        return;
    L_0x0012:
        r2 = r6.aiQ;
        if (r2 != 0) goto L_0x008a;
    L_0x0016:
        r2 = r6.ajF;
        if (r2 == 0) goto L_0x0045;
    L_0x001a:
        r2 = r6.getContentResolver();	 Catch:{ IOException -> 0x0038, all -> 0x003d }
        r3 = r6.ajF;	 Catch:{ IOException -> 0x0038, all -> 0x003d }
        r0 = r2.openOutputStream(r3);	 Catch:{ IOException -> 0x0038, all -> 0x003d }
        r0.write(r1);	 Catch:{ IOException -> 0x0038, all -> 0x0110 }
        r0.close();	 Catch:{ IOException -> 0x0038, all -> 0x0110 }
        r6.auu(r1);	 Catch:{ IOException -> 0x0038, all -> 0x0110 }
        r1 = -1;
        r6.arN(r1);	 Catch:{ IOException -> 0x0038, all -> 0x0110 }
        r6.finish();	 Catch:{ IOException -> 0x0038, all -> 0x0110 }
        com.android.common.C0616j.apt(r0);
    L_0x0037:
        return;
    L_0x0038:
        r1 = move-exception;
        com.android.common.C0616j.apt(r0);
        goto L_0x0037;
    L_0x003d:
        r1 = move-exception;
        r5 = r1;
        r1 = r0;
        r0 = r5;
    L_0x0041:
        com.android.common.C0616j.apt(r1);
        throw r0;
    L_0x0045:
        r0 = r6.aiG;
        r0 = r0.SP();
        r2 = com.android.common.appService.CameraMember.BUSINESSCARD;
        if (r0 != r2) goto L_0x0065;
    L_0x004f:
        r0 = "ActivityBase";
        r1 = "launcherCamera ";
        com.p010a.C0090a.bvo(r0, r1);
        r0 = r6.aiG;
        r1 = r6.asS();
        r0.Wl(r1);
        r6.finish();
        goto L_0x0037;
    L_0x0065:
        r0 = com.android.common.C0472e.aoA(r1);
        r2 = 51200; // 0xc800 float:7.1746E-41 double:2.5296E-319;
        r1 = com.android.common.appService.C0304F.aaP(r1, r2);
        r0 = com.android.common.appService.C0304F.aaQ(r1, r0);
        r1 = new android.content.Intent;
        r2 = "inline-data";
        r1.<init>(r2);
        r2 = "data";
        r0 = r1.putExtra(r2, r0);
        r6.arM(r3, r0);
        r6.finish();
        goto L_0x0037;
    L_0x008a:
        r2 = "crop-temp";
        r2 = r6.getFileStreamPath(r2);	 Catch:{ FileNotFoundException -> 0x00ef, IOException -> 0x00e3, all -> 0x00fb }
        r2.delete();	 Catch:{ FileNotFoundException -> 0x00ef, IOException -> 0x00e3, all -> 0x00fb }
        r3 = "crop-temp";
        r4 = 0;
        r0 = r6.openFileOutput(r3, r4);	 Catch:{ FileNotFoundException -> 0x00ef, IOException -> 0x00e3, all -> 0x00fb }
        r0.write(r1);	 Catch:{ FileNotFoundException -> 0x00ef, IOException -> 0x00e3 }
        r0.close();	 Catch:{ FileNotFoundException -> 0x00ef, IOException -> 0x00e3 }
        r1 = android.net.Uri.fromFile(r2);	 Catch:{ FileNotFoundException -> 0x00ef, IOException -> 0x00e3 }
        com.android.common.C0616j.apt(r0);
        r0 = new android.os.Bundle;
        r0.<init>();
        r2 = r6.aiQ;
        r3 = "circle";
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x00c2;
    L_0x00b9:
        r2 = "circleCrop";
        r3 = "true";
        r0.putString(r2, r3);
    L_0x00c2:
        r2 = r6.ajF;
        if (r2 == 0) goto L_0x0103;
    L_0x00c6:
        r2 = "output";
        r3 = r6.ajF;
        r0.putParcelable(r2, r3);
    L_0x00ce:
        r2 = new android.content.Intent;
        r3 = "com.android.camera.action.CROP";
        r2.<init>(r3);
        r2.setData(r1);
        r2.putExtras(r0);
        r0 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r6.startActivityForResult(r2, r0);
        goto L_0x0037;
    L_0x00e3:
        r1 = move-exception;
        r1 = 0;
        r6.arN(r1);	 Catch:{ all -> 0x010b }
        r6.finish();	 Catch:{ all -> 0x010b }
        com.android.common.C0616j.apt(r0);
        return;
    L_0x00ef:
        r1 = move-exception;
        r1 = 0;
        r6.arN(r1);	 Catch:{ all -> 0x010b }
        r6.finish();	 Catch:{ all -> 0x010b }
        com.android.common.C0616j.apt(r0);
        return;
    L_0x00fb:
        r1 = move-exception;
        r5 = r1;
        r1 = r0;
        r0 = r5;
    L_0x00ff:
        com.android.common.C0616j.apt(r1);
        throw r0;
    L_0x0103:
        r2 = "return-data";
        r3 = 1;
        r0.putBoolean(r2, r3);
        goto L_0x00ce;
    L_0x010b:
        r1 = move-exception;
        r5 = r1;
        r1 = r0;
        r0 = r5;
        goto L_0x00ff;
    L_0x0110:
        r1 = move-exception;
        r5 = r1;
        r1 = r0;
        r0 = r5;
        goto L_0x0041;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.ActivityBase.arQ():void");
    }

    private byte[] asS() {
        return this.aiG.Vc();
    }

    protected void auL() {
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.ajF = (Uri) extras.getParcelable("output");
            this.aiQ = extras.getString("crop");
        }
        this.ajs = getIntent().getBooleanExtra("save_jpeg_sd", false);
    }

    private void auu(byte[] bArr) {
        if (this.ajs) {
            long currentTimeMillis = System.currentTimeMillis();
            String aoP = C0616j.aoP(currentTimeMillis);
            Size Gr = this.aiG.Tn().Gr();
            String arc = C0701s.arc(aoP, this.aiG.UW());
            ContentValues contentValues = new ContentValues(9);
            contentValues.put("title", aoP);
            contentValues.put("_display_name", aoP + ".jpg");
            contentValues.put("datetaken", Long.valueOf(currentTimeMillis));
            contentValues.put("mime_type", "image/jpeg");
            contentValues.put("_data", arc);
            contentValues.put("_size", Integer.valueOf(bArr.length));
            contentValues.put("width", Integer.valueOf(Gr.width));
            contentValues.put("height", Integer.valueOf(Gr.height));
            Location age = this.aiG.Tq().age();
            if (age != null) {
                contentValues.put("latitude", Double.valueOf(age.getLatitude()));
                contentValues.put("longitude", Double.valueOf(age.getLongitude()));
            }
            C0701s.are(getContentResolver(), bArr, arc, contentValues);
        }
    }

    private boolean atq() {
        if (1 == System.getInt(getContentResolver(), "capture_service_on", 0)) {
            return true;
        }
        return false;
    }

    protected C0170a asZ() {
        if (this.aiV == null) {
            this.aiV = new C0170a(this, atd());
        }
        return this.aiV;
    }

    protected C0157n ate() {
        if (IndependenceUtil.afZ) {
            if (this.ajw == null) {
                this.ajw = new C0709i();
            }
        } else if (this.ajw == null) {
            this.ajw = new C0703a();
        }
        return this.ajw;
    }

    protected void atS(Bundle bundle) {
    }

    protected void auc() {
    }

    protected void aud() {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332 && this.ajj) {
            finish();
            overridePendingTransition(R.anim.nubia_task_close_enter, R.anim.nubia_task_close_exit);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public void onBackPressed() {
        if (this.ajP.getVisibility() == 0) {
            avd();
        } else if (!this.aiG.SU().RR(this.aiG)) {
            super.onBackPressed();
            if (this.ajj) {
                overridePendingTransition(R.anim.nubia_task_close_enter, R.anim.nubia_task_close_exit);
            }
        }
    }

    private void avd() {
        C0090a.bvo("ActivityBase", "wake up camera");
        asA(false);
        auO();
        asc(2000);
    }

    public C0539e arF() {
        if (this.aiW == null) {
            this.aiW = new C0539e(this);
        }
        return this.aiW;
    }

    public C0540f arR() {
        if (this.ajd == null) {
            this.ajd = new C0540f(this, this.aiG);
        }
        return this.ajd;
    }

    public C0542h arU() {
        if (this.aiP == null) {
            this.aiP = new C0542h(this);
        }
        return this.aiP;
    }

    private void auo() {
        if (this.aiW != null) {
            arH(this.aiW);
            this.aiW = null;
        }
        if (this.ajd != null) {
            arH(this.ajd);
            this.ajd = null;
        }
        if (this.aiP != null) {
            arH(this.aiP);
            this.aiP = null;
        }
    }

    public void asd() {
        if (C0421M.dC().dD().cO()) {
            if ("off".equals(asN().getString("pref_camera_siri", getResources().getString(R.string.pref_camera_siri_default)))) {
                auY();
            } else {
                auS();
            }
        }
    }

    private void auS() {
        if (this.ajO != null) {
            this.ajO.ahf(this);
            this.ajO.start();
            return;
        }
        this.ajO = new C0618c(this, this.ajb);
    }

    protected void auY() {
        if (this.ajO != null) {
            this.ajO.stop();
            this.ajO.ahh(this);
        }
    }

    private void asE() {
        if (this.ajO != null) {
            this.ajO.ahg();
            this.ajO = null;
        }
    }

    protected DeviceState asJ() {
        return this.aiI.JV();
    }

    protected void auv(DeviceState deviceState) {
        this.aiI.Kd(deviceState);
    }

    protected UIState asP() {
        return this.aiI.Kc();
    }

    protected FunctionState asL() {
        return this.aiI.JZ();
    }

    protected void aux(FunctionState functionState) {
        this.aiI.JY(functionState);
    }

    private void auy() {
        int i = 1;
        if (C0421M.dC().dD().cI()) {
            String string = asN().getString("pref_shutter_key_into_camera_key", getResources().getString(R.string.pref_shutter_key_into_camera_default));
            SharedPreferences sharedPreferences = this.aiG.SM().getSharedPreferences("visitor", 1);
            if (string.equals("on")) {
                i = 0;
            }
            Editor edit = sharedPreferences.edit();
            edit.putInt("visitor", i);
            edit.apply();
            C0616j.aqc(this.aiG.TF(), "visitor", i);
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
    }

    public void arZ(int i) {
    }

    public void auF(int i, boolean z) {
    }

    public void auG(int i, boolean z, long j, long j2) {
    }

    public void auR() {
    }

    public void auX() {
    }

    public void onUserInteraction() {
        super.onUserInteraction();
        if (!isFinishing()) {
            atI();
        }
    }

    private void atI() {
        if (!this.ajm && !this.aiG.SO()) {
            if (atz()) {
                this.ajb.removeMessages(112);
                ash();
                this.ajb.sendEmptyMessageDelayed(112, 60000);
                return;
            }
            runOnUiThread(new ai(this));
        }
    }

    private void auq() {
        this.ajm = false;
        this.ajb.removeMessages(112);
        getWindow().clearFlags(128);
    }

    public void arL(boolean z) {
        if (!this.aiG.SO()) {
            C0090a.bvo("ActivityBase", "enableKeepScreenOn " + z);
            this.ajm = z;
            if (this.ajm) {
                this.ajb.removeMessages(112);
                ash();
            } else {
                atI();
            }
        }
    }

    private void ash() {
        if ((getWindow().getAttributes().flags & 128) != 128) {
            getWindow().addFlags(128);
        }
    }

    private void asr() {
        this.ajb.removeMessages(112);
        if ((getWindow().getAttributes().flags & 128) == 128) {
            getWindow().clearFlags(128);
        }
    }

    public void arY() {
        this.ajg = false;
        this.ajb.sendEmptyMessageDelayed(37, 1000);
    }

    public C0319Y ary() {
        return this.ajQ;
    }

    protected void asX() {
        this.aiU = new C0347w();
    }

    public C0000c arD() {
        return this.aiU;
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.ajx.onRequestPermissionsResult(i, strArr, iArr);
    }

    private boolean atz() {
        return asN().getString("pref_intelligent_power_saving", getString(R.string.pref_intelligent_power_saving_default)).equals("on");
    }

    public void asc(long j) {
    }

    private void aun() {
        if (!this.aiO) {
            IntentFilter intentFilter = new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS");
            this.aiN = new aj(this);
            registerReceiver(this.aiN, intentFilter);
            this.aiO = true;
        }
    }

    private void ava() {
        if (this.aiO) {
            unregisterReceiver(this.aiN);
            this.aiN = null;
            this.aiO = false;
        }
    }
}
