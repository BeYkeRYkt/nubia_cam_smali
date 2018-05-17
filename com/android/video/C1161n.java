package com.android.video;

import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.C0627l;
import com.android.common.C0701s;
import com.android.common.appService.C0304F;
import com.android.common.appService.C0333h;
import com.android.common.appService.C0341p;
import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0379e;
import com.android.common.cameradevice.C0384o;
import com.android.common.cameradevice.CamcorderProfileEx$INDEX_QUALITY;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.custom.C0421M;
import com.android.common.p014n.C0111p;
import com.android.common.p028h.C0562f;
import com.android.common.setting.ListPreference;
import com.android.common.ui.C0366P;
import com.android.common.ui.C0474A;
import com.android.common.ui.C0675u;
import com.android.common.ui.C0747W;
import com.android.common.ui.C0764t;
import com.android.common.ui.MultiFunctionImageView;
import com.android.common.ui.RotateImageView;
import com.android.common.ui.RotateLayout;
import com.android.common.ui.RotateTextImageView;
import com.android.common.ui.ZtemtShutterButton;
import com.p010a.C0090a;
import com.umeng.analytics.ReportPolicy;

public class C1161n extends C0111p implements C0366P, C1153f, C1149b, OnClickListener {
    private boolean aQE = false;
    private boolean aQF = true;
    private boolean aQG = false;
    private int aQH = 0;
    private RelativeLayout aQI = null;
    private int aQJ = 0;
    private C0341p aQK = null;
    private C0333h aQL = new C0333h();
    private RotateTextImageView aQM;
    private ListPreference aQN;
    private C0627l aQO = null;
    private String aQP;
    private BroadcastReceiver aQQ = null;
    private RotateImageView aQR;
    private RelativeLayout aQS = null;
    private int aQT = 0;
    private View aQU = null;
    private boolean aQV = false;
    private RotateLayout aQW;
    private RotateTextImageView aQX;
    private RotateTextImageView aQY;
    private ImageView aQZ;
    private RotateLayout aRa;
    private RotateImageView aRb;
    private BroadcastReceiver aRc = null;
    private boolean aRd = false;
    private VideoSnapButton aRe;
    private View aRf;
    private C0764t aRg;
    private Handler aRh = new C1166t(this);
    private C1154g aRi;
    private C1152e aRj;
    private ZtemtShutterButton aRk = null;
    private C0675u aRl = new C1167u(this);
    private MultiFunctionImageView aRm = null;
    private C1162o aRn = null;
    private C0747W aRo;

    public C1161n(int i) {
        super(i);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return null;
        }
        this.aQG = getResources().getBoolean(R.bool.config_video_recording_pause);
        C0090a.bvo("VideoFragment", "onCreateView");
        View inflate = layoutInflater.inflate(R.layout.video_preview, viewGroup, false);
        if (inflate == null) {
            C0090a.bvo("VideoFragment", "view == null");
        }
        bhs(inflate);
        this.aRj = new C1152e(this.adA);
        this.aRj.bgy(this);
        return inflate;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            C0090a.bvo("VideoFragment", "onResume");
            this.aRk.pZ(this);
            this.adA.SX().Ka();
            this.aQF = true;
            bhy();
            bhp();
            this.aQK.YC(false);
            bhx();
            this.aQN = aln("pref_camera_video_flashmode_key");
            bhI();
            this.adA.Va().avu(2);
            this.adA.Va().avu(3);
        }
    }

    private void bhI() {
        this.aQS.setVisibility(8);
        this.aRg.stop();
        if (!(this.adA.VN() || alq() == UIState.CAMERA_FAMILY)) {
            alr();
        }
        bho();
    }

    private void bhF(boolean z) {
        bhh("ringerMode E");
        AudioManager audioManager = (AudioManager) getActivity().getSystemService("audio");
        if (audioManager.getRingerMode() != 0) {
            int streamVolume = audioManager.getStreamVolume(2);
            if (z) {
                if (streamVolume > 0) {
                    this.aRd = true;
                    this.aQJ = streamVolume;
                    audioManager.setStreamVolume(2, 0, 0);
                }
            } else if (streamVolume > 0) {
                this.aQJ = 0;
            } else {
                audioManager.setStreamVolume(2, this.aQJ, 0);
                this.aQJ = 0;
            }
            bhh("ringerMode X");
        }
    }

    private void bhp() {
        this.aQH = ((AudioManager) getActivity().getSystemService("audio")).getStreamVolume(4);
    }

    private void bhB(int i) {
        bhh("setAlarmVolume E");
        ((AudioManager) getActivity().getSystemService("audio")).setStreamVolume(4, i, 0);
        bhh("setAlarmVolume X");
    }

    private void bhC() {
        bhF(true);
        bhB(0);
    }

    private void bhA() {
        bhF(false);
        bhB(this.aQH);
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        C0090a.bvo("VideoFragment", "onPause");
        bhQ();
        bhR();
        bhP(true);
        this.aRm.lC();
        if (alq() == UIState.GRID_EFFECT) {
            alr();
        }
        this.aQK.YD();
        super.onPause();
    }

    public void onDestroy() {
        if (this.adB) {
            super.onDestroy();
            return;
        }
        bhA();
        super.onDestroy();
    }

    private void bhs(View view) {
        this.aRg = new C0764t(view);
        this.aQS = (RelativeLayout) view.findViewById(R.id.video_pause_tip_layout);
        this.aRo = new C0747W(getActivity(), R.layout.wait_dialog_view);
        this.aRk = (ZtemtShutterButton) view.findViewById(R.id.video_stop);
        this.aRm = (MultiFunctionImageView) view.findViewById(R.id.video_stop_icon);
        this.aQW = (RotateLayout) view.findViewById(R.id.recording_time_rect);
        this.aRe = (VideoSnapButton) view.findViewById(R.id.switch_button);
        this.aRf = view.findViewById(R.id.switch_button_icon);
        this.aRe.bfv(this);
        this.aQR = (RotateImageView) view.findViewById(R.id.pause_button);
        this.aQR.setOnClickListener(new C1168v(this));
        bhq(view);
        this.aQU = view.findViewById(R.id.videoPreviewRelativePage);
        bhr(view);
        this.adE = new C0474A[]{this.aQR, this.aRb, this.aQX, this.aQY, this.aRa, this.aQM};
    }

    private void bhq(View view) {
        this.aRa = (RotateLayout) view.findViewById(R.id.review_layout);
        this.aQZ = (ImageView) view.findViewById(R.id.review_image);
        this.aQI = (RelativeLayout) view.findViewById(R.id.bottom_recording_layout);
        this.aQY = (RotateTextImageView) view.findViewById(R.id.btn_done);
        this.aQX = (RotateTextImageView) view.findViewById(R.id.btn_cancel);
        this.aQY.setOnClickListener(this);
        this.aQX.setOnClickListener(this);
        this.aRb = (RotateImageView) view.findViewById(R.id.btn_play);
        this.aRb.setOnClickListener(this);
        this.aQM = (RotateTextImageView) view.findViewById(R.id.exitVideo);
        this.aQM.setVisibility(this.adA.VN() ? 0 : 8);
        this.aQM.setOnClickListener(new C1169w(this));
    }

    public static C1161n bhc() {
        return new C1161n(1);
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.adC) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (this.aQK == null || !this.aQK.YH()) {
            return super.dispatchTouchEvent(motionEvent);
        }
        C0090a.bvo("VideoFragment", "Grid effect anim is Running, just consume the dipatch event");
        return true;
    }

    protected void ain(int i, boolean z) {
        super.ain(i, z);
        this.aQT = i;
        this.aRj.setOrientation(this.aQT);
        if (this.aQK != null) {
            this.aQK.YJ(i, z);
        }
    }

    protected void alG() {
        super.alG();
        this.adA.SX().Kb(UIState.NORMAL, FunctionState.NORMAL, DeviceState.IDLE);
    }

    protected void alF() {
        super.alF();
        this.adA.SX().Ka();
    }

    protected void alz() {
        super.alz();
        if (this.aQI != null) {
            this.aQI.setVisibility(0);
        }
    }

    protected void alr() {
        super.alr();
        if (this.aQI != null) {
            this.aQI.setVisibility(8);
        }
    }

    private void bhH(String str) {
        C0090a.bvo("debug_video", str);
    }

    private void bhM() {
        int i = 0;
        bhE(8);
        this.aRk.setVisibility(0);
        this.aRm.lA();
        this.aRm.lE();
        bhG(0);
        if (this.aQG) {
            this.aQR.setVisibility(0);
            this.aQR.setImageResource(R.drawable.video_resume);
        }
        Intent intent = this.adA.SN().getIntent();
        if (intent.hasExtra("android.intent.extra.durationLimit")) {
            i = intent.getIntExtra("android.intent.extra.durationLimit", 0);
        }
        if (C0701s.arm() && r0 == 0) {
            this.aRg.lu(bhl());
        } else {
            this.aRg.lu(null);
        }
        this.aRg.lo("00:00");
        this.aRg.ln();
    }

    private void bhL() {
        this.aRg.lt();
        bhG(8);
        this.aQS.setVisibility(0);
        this.aQR.setImageResource(R.drawable.video_state_recording);
    }

    private void bhn() {
        this.aRg.ln();
        bhG(0);
        this.aQS.setVisibility(8);
        this.aQR.setImageResource(R.drawable.video_resume);
    }

    private void bho() {
        this.aRk.setVisibility(8);
        bhG(8);
        this.aQR.setVisibility(8);
    }

    private void bhG(int i) {
        if (this.adA != null && this.adA.SY() != null && this.adA.SY().tP() != null) {
            int i2 = this.adA.SY().tP().quality;
            String HO = this.adA.Tn().HO();
            C0090a.bvo("VideoFragment", "hsr = " + HO);
            if (this.adA.VN() || i2 == C0379e.FI().FH().JN(CamcorderProfileEx$INDEX_QUALITY._4KUHD) || !"off".equals(HO)) {
                this.aRe.setVisibility(8);
            } else {
                this.aRe.setVisibility(i);
            }
        }
    }

    private void bhJ() {
        if (this.aRi != null) {
            bhN(this.aRi);
        }
        C0616j.apv(this.aQY);
        C0616j.apv(this.aRb);
        C0616j.apv(this.aQX);
        bhg();
        this.adA.TA();
    }

    private void bhg() {
        if (this.aQN != null) {
            this.aQP = this.aQN.tw();
            if (!this.aQP.equals("off")) {
                this.aQN.va("off");
                this.adA.Tn().Hb("off");
                this.adA.Tr().IQ(this.adA.Tn());
            }
        }
    }

    private void bhz() {
        if (this.aQN != null) {
            this.aQN.va(this.aQP);
        }
    }

    private void bhm() {
        bhz();
        this.adA.TB();
        C0616j.apx(this.aQY);
        C0616j.apx(this.aRb);
        this.aQM.setVisibility(0);
        this.aQX.setVisibility(8);
        this.aQZ.setVisibility(8);
    }

    private void start() {
        if (!this.adA.Tl()) {
            C0090a.bvm("VideoFragment", "Storage enough: " + this.adA.Tl());
        } else if (this.adD.JX(DeviceState.VIDEO_RECORDING)) {
            bhH("start recording");
            this.adA.Wb(2);
            this.adA.Tr().IN(false);
            this.aRj.bgA();
        }
    }

    private void bhP(boolean z) {
        bhH("stop recording");
        bhR();
        if (this.aRj.getState() != 0) {
            if (z) {
                this.aRj.bgB(true);
            } else {
                this.aRn = new C1162o(this);
                this.aRn.start();
            }
        }
    }

    private void bhR() {
        if (this.aRn != null) {
            try {
                this.aRn.join();
                this.aRn = null;
            } catch (InterruptedException e) {
            }
        }
    }

    private void bhi() {
        this.aQF = false;
        this.aRh.removeMessages(2);
        this.aRh.sendEmptyMessageDelayed(2, 1000);
    }

    private boolean bhw() {
        CameraMember SP = this.adA.SP();
        if (SP == CameraMember.VIDEO_RECORD || SP == CameraMember.VIDEO_SLOMO) {
            return true;
        }
        C0090a.m1e("VideoFragment", "current CameraMember is " + SP);
        return false;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void qe() {
        /*
        r2 = this;
        r0 = r2.adA;
        if (r0 == 0) goto L_0x001e;
    L_0x0004:
        r0 = r2.adA;
        r0 = r0.SO();
        if (r0 != 0) goto L_0x001e;
    L_0x000c:
        r0 = r2.adC;
        if (r0 != 0) goto L_0x001e;
    L_0x0010:
        r0 = r2.bhw();
        if (r0 == 0) goto L_0x001e;
    L_0x0016:
        r0 = r2.alu();
        r1 = com.android.common.camerastate.FunctionState.SWITCHING_CAMERA;
        if (r0 != r1) goto L_0x001f;
    L_0x001e:
        return;
    L_0x001f:
        r0 = r2.alt();
        r1 = com.android.common.camerastate.DeviceState.PREVIEW_STOPPED;
        if (r0 == r1) goto L_0x001e;
    L_0x0027:
        r0 = r2.aQF;
        if (r0 != 0) goto L_0x002c;
    L_0x002b:
        return;
    L_0x002c:
        r0 = r2.aRn;
        if (r0 == 0) goto L_0x0042;
    L_0x0030:
        r0 = r2.aRn;
        r0 = r0.isAlive();
        if (r0 == 0) goto L_0x0042;
    L_0x0038:
        r0 = "VideoFragment";
        r1 = "video is being processed";
        com.p010a.C0090a.bvj(r0, r1);
        return;
    L_0x0042:
        r2.bhi();
        r0 = r2.aRj;
        r0 = r0.getState();
        switch(r0) {
            case 0: goto L_0x004f;
            case 1: goto L_0x0053;
            case 2: goto L_0x004e;
            case 3: goto L_0x0053;
            default: goto L_0x004e;
        };
    L_0x004e:
        return;
    L_0x004f:
        r2.start();
        goto L_0x004e;
    L_0x0053:
        r0 = 0;
        r2.bhP(r0);
        r2.bhf();
        goto L_0x004e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.video.n.qe():void");
    }

    public void qf(boolean z) {
        if (alA() == null) {
            alA().VY(z);
        }
    }

    public void qg() {
        qe();
    }

    public boolean onBackPressed() {
        switch (this.aRj.getState()) {
            case 1:
            case 3:
            case 4:
                bhP(false);
                return true;
            case 2:
                return true;
            default:
                if (this.aQK != null) {
                    return this.aQK.onBackPressed();
                }
                return super.onBackPressed();
        }
    }

    public boolean bhd() {
        if (this.aRk == null || this.aRk.getVisibility() != 0) {
            return false;
        }
        this.aRk.performClick();
        return true;
    }

    private void bhE(int i) {
        if (this.adA.VN()) {
            this.aQM.setVisibility(i);
        } else {
            this.aQM.setVisibility(8);
        }
    }

    public void bgX(int i) {
        if (i != 0) {
            bhH("onStart " + i);
            bhK(i);
            return;
        }
        bhC();
        this.adD.Kd(DeviceState.VIDEO_RECORDING);
        this.aRi = null;
        alz();
        bhM();
        bhD(8);
    }

    public void bgZ() {
        bhH("onVideoStopStart");
        bhA();
        if (this.adC) {
            this.aRm.lC();
            alr();
            bho();
            if (this.aRi == null) {
                bhD(0);
            }
        } else {
            this.aRm.lC();
            this.aRm.lz(this.aRl);
        }
        this.aQS.setVisibility(8);
        this.aRg.stop();
    }

    public void bgY(int i) {
        bhH("onVideoStopEnd " + i);
        if (i != 9) {
            this.adA.Wb(3);
            if (!(this.adA == null || this.adA.VN()) || (this.adA != null && this.adA.VN() && i == 7)) {
                this.adD.Kd(DeviceState.IDLE);
                if (this.adA.VN()) {
                    bhD(0);
                    this.aQM.setVisibility(0);
                    alr();
                }
            }
            bhK(i);
        }
    }

    public void bgV(boolean z) {
        bhH("onPause " + z);
        if (z) {
            this.adD.Kd(DeviceState.VIDEO_RECORDING_PAUSED);
            bhL();
            return;
        }
        this.adD.Kd(DeviceState.VIDEO_RECORDING);
        bhn();
    }

    public void bgU(C1154g c1154g) {
        bhH("onVideoFileSaved");
        if (this.adA.VN() && c1154g != null) {
            this.aRi = c1154g;
            bhH("Video info( " + this.aRi.toString() + " )");
            bho();
            bhJ();
        }
    }

    public void bgW() {
        this.adD.Kd(DeviceState.VIDEO_RECORDING);
    }

    public void bgS(int i) {
        bhH("onMessage " + i);
        bhK(i);
    }

    public void bgT(boolean z, boolean z2, String str) {
        if (!z) {
            this.aRg.lo(str);
            String lp = this.aRg.lp();
            if (lp != null && bhv(lp, str)) {
                bhP(false);
            }
        }
    }

    private boolean bhv(String str, String str2) {
        try {
            if (((Integer.parseInt(str2.substring(0, str2.indexOf(":"))) * 3600) + (Integer.parseInt(str2.substring(str2.indexOf(":") + 1, str2.lastIndexOf(":"))) * 60)) + Integer.parseInt(str2.substring(str2.lastIndexOf(":") + 1)) >= (Integer.parseInt(str.substring(0, str.indexOf(":"))) * 60) + Integer.parseInt(str.substring(str.indexOf(":") + 1))) {
                return true;
            }
            return false;
        } catch (Throwable e) {
            C0090a.bvi("VideoFragment", "run isMax() failed.", e);
            return false;
        }
    }

    public void bfw() {
        bhR();
        if (this.adD.JX(DeviceState.VIDEO_RECORDING_SNAPSHOT) && this.aRj.getState() == 1) {
            this.adA.Tz().sendEmptyMessage(19);
            this.adD.Kd(DeviceState.VIDEO_RECORDING_SNAPSHOT);
            this.aRj.bgE();
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_done:
                bhH("share the video");
                bhj(true, this.aRi);
                return;
            case R.id.btn_cancel:
                bhH("cancel share the video");
                this.aRj.bfY();
                this.aRi = null;
                bhD(0);
                bhm();
                alr();
                bhE(0);
                return;
            case R.id.btn_play:
                bhH("start play the video");
                bhO();
                return;
            default:
                return;
        }
    }

    private void bhj(boolean z, C1154g c1154g) {
        int i;
        Intent intent = new Intent();
        if (!z || c1154g == null) {
            i = 0;
        } else {
            i = -1;
            intent.setData(c1154g.aQy);
            intent.addFlags(1);
        }
        getActivity().setResult(i, intent);
        getActivity().finish();
    }

    private void bhN(C1154g c1154g) {
        Bitmap bitmap = null;
        if (c1154g.aQv != null) {
            bitmap = C0562f.afY(c1154g.aQv.getFileDescriptor(), c1154g.width);
        } else if (c1154g.aQx != null) {
            bitmap = C0562f.afU(c1154g.aQx, c1154g.width);
        }
        if (bitmap != null) {
            C0384o.Jr().Ju();
            this.aQZ.setImageBitmap(C0304F.aaS(bitmap, 0, false));
            this.aQZ.setVisibility(0);
        }
    }

    private void bhO() {
        if (this.aRi == null) {
            C0090a.bvo("VideoFragment", "Get no Video info so return");
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.putExtra("SingleItemOnly", true);
        intent.setDataAndType(this.aRi.aQy, this.aRi.aQw);
        if (this.aRi.aQy.toString().equals("content://mms_temp_file/scrapSpace")) {
            intent.setPackage("cn.nubia.video");
        }
        try {
            getActivity().startActivity(intent);
        } catch (ActivityNotFoundException e) {
            C0090a.m1e("VideoFragment", "Couldn't view video by cn.nubia.video " + this.aRi.aQy);
            intent.setPackage(null);
            getActivity().startActivity(intent);
        }
    }

    private void bhK(int i) {
        int i2;
        switch (i) {
            case 2:
                i2 = R.string.error_app_unsupported;
                break;
            case 3:
                i2 = R.string.media_recorder_resource_conflic;
                break;
            case 4:
                i2 = 0;
                break;
            case 5:
                i2 = R.string.video_reach_size_limit;
                break;
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                i2 = R.string.spaceIsLow_content;
                break;
            case 7:
                i2 = R.string.videorecod_stop_fail;
                break;
            case 8:
                i2 = R.string.videorecod_start_fail;
                break;
            case 100001:
                i2 = R.string.new_message_tips;
                break;
            default:
                i2 = 0;
                break;
        }
        if (i2 != 0) {
            C0616j.aqk(this.adA.SN(), i2, 0, 17, 0, 500);
        }
    }

    private void bhy() {
        this.aRc = new C1170x(this);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.MEDIA_MOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_EJECT");
        intentFilter.addDataScheme("file");
        getActivity().registerReceiver(this.aRc, intentFilter);
        this.aQQ = new C1171y(this);
        intentFilter = new IntentFilter();
        intentFilter.addAction("android.media.action.STOP_CAMCORDER");
        intentFilter.addAction("com.android.mms.NOTIFY_RECEIVER_SMS_OR_MMS");
        intentFilter.setPriority(Integer.MAX_VALUE);
        getActivity().registerReceiver(this.aQQ, intentFilter);
    }

    private void bhQ() {
        if (this.aRc != null) {
            getActivity().unregisterReceiver(this.aRc);
            this.aRc = null;
        }
        if (this.aQQ != null) {
            getActivity().unregisterReceiver(this.aQQ);
            this.aQQ = null;
        }
    }

    protected void ajH(int i, int i2, int i3, int i4) {
        if (!(this.aQU.getWidth() == i3 - i && this.aQU.getHeight() == i4 - i2)) {
            C0090a.bvo("VideoFragment", "relayout mPreviewRelativeContent");
            LayoutParams layoutParams = (LayoutParams) this.aQU.getLayoutParams();
            layoutParams.width = i3 - i;
            layoutParams.height = i4 - i2;
            layoutParams.topMargin = i2;
            layoutParams.setMarginStart(i);
            this.aQU.requestLayout();
        }
        if (this.aQK != null) {
            this.aQK.YI(aly());
        }
    }

    private void bhr(View view) {
        this.aQK = new C0341p(this.adA, bhk(), view, R.id.effect_page, R.id.effect_grid_switch);
        this.aQK.YE(new C1172z(this));
        this.aQK.YF(new C1146A(this));
        bhD(0);
        this.aQL.Ye(this.aQK);
    }

    private ListPreference bhk() {
        return alv().tp(C1152e.bgc());
    }

    private boolean bhu() {
        if (this.aRj != null) {
            return this.aRj.bgk();
        }
        return false;
    }

    private void bhD(int i) {
        if (this.aQK != null) {
            Object obj = this.adA.SP() == CameraMember.VIDEO_RECORD ? 1 : null;
            boolean cY = C0421M.dC().dD().cY();
            boolean VN = this.adA.VN();
            if (obj == null || !cY || VN) {
                this.aQK.YG(8);
            } else {
                this.aQK.YG(i);
            }
        }
    }

    private void bhx() {
        if (!this.adC && this.adA.SP() != CameraMember.VIDEO_SLOMO) {
            ListPreference bhk = bhk();
            if (bhu() && bht()) {
                bhk.va("none");
                this.aQK.YK();
            }
        }
    }

    void bhe(boolean z) {
        if (!(this.adC || z)) {
            bhx();
        }
    }

    private boolean bht() {
        if (this.adA.SQ() != C0384o.Jr().Js()) {
            return false;
        }
        String uZ = alv().tp("pref_video_quality_key").uZ();
        return !getString(R.string.pref_video_quality_entry_4k).equalsIgnoreCase(uZ) ? getString(R.string.pref_video_quality_entry_1080p_60fps).equalsIgnoreCase(uZ) : true;
    }

    private String bhl() {
        if (this.adA.SP() == CameraMember.VIDEO_SLOMO) {
            return "10:00";
        }
        ListPreference tp;
        if (this.adA.SQ() == C0384o.Jr().Js()) {
            tp = alv().tp("pref_video_quality_key");
        } else {
            tp = alv().tp("pref_front_video_quality_key");
        }
        if (tp == null) {
            return null;
        }
        String str = tp.uZ() + "";
        if (str.equals(getString(R.string.pref_video_quality_entry_4k))) {
            return "10:00";
        }
        if (str.equals(getString(R.string.pref_video_quality_entry_1080p_60fps))) {
            return "10:00";
        }
        if (str.equals(getString(R.string.pref_video_quality_entry_1080p))) {
            return "20:00";
        }
        if (str.equals(getString(R.string.pref_video_quality_entry_720p))) {
            return "30:00";
        }
        return null;
    }

    private void bhh(String str) {
        if (this.aQE) {
            C0090a.bvo("debug_ringer_spec", str);
        }
    }

    protected void ahM() {
        super.ahM();
        if (this.aRb != null && this.aRb.getVisibility() == 0 && this.adA != null) {
            this.adA.TA();
        }
    }

    public void bhf() {
    }

    public void aiV(CameraMember cameraMember, CameraMember cameraMember2, CameraMember cameraMember3) {
        this.aQL.Yf(cameraMember, cameraMember2, cameraMember3);
        this.aQL.Ye(this.aQK);
    }

    public void aib() {
        if (this.aQK != null) {
            this.aQK.YL(false);
        }
    }

    public void ahS(boolean z, boolean z2) {
        if (this.aQK != null) {
            if (z || alu() != FunctionState.SWITCHING_CAMERA) {
                this.aQK.YL(!z);
            } else {
                this.aQK.YG(8);
            }
        }
    }

    public void bgR(int i) {
        if (i == 0 && this.aQK != null) {
            this.aQK.Zh();
        }
    }
}
