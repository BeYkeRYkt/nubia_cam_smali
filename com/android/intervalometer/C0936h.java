package com.android.intervalometer;

import android.content.ContentValues;
import android.content.Intent;
import android.content.SharedPreferences.Editor;
import android.location.Location;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.android.camera.R;
import com.android.common.ActivityBase;
import com.android.common.C0116o;
import com.android.common.C0616j;
import com.android.common.C0636m;
import com.android.common.C0668n;
import com.android.common.appService.C0329e;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.independentutil.IndependenceUtil;
import com.android.common.p001l.C0626h;
import com.android.common.p014n.C0111p;
import com.android.common.ui.C0366P;
import com.android.common.ui.C0474A;
import com.android.common.ui.C0763r;
import com.android.common.ui.C0764t;
import com.android.common.ui.MultiFunctionImageView;
import com.android.common.ui.MultiFunctionImageView.Function;
import com.android.common.ui.NubiaProgressWheel;
import com.android.common.ui.RotateLayout;
import com.android.common.ui.ZtemtShutterButton;
import com.p010a.C0090a;

public class C0936h extends C0111p implements C0668n, C0763r, C0116o, C0366P {
    private C0930b aOG;
    private C0931c aOH = new C0937i();
    private MultiFunctionImageView aOI;
    private int aOJ = 500;
    private C0636m aOK;
    private boolean aOL = true;
    private RelativeLayout aOM = null;
    private NubiaProgressWheel aON = null;
    private Toast aOO;
    private long aOP = 0;
    private long aOQ = 0;
    private RelativeLayout aOR;
    private C0764t aOS;
    private RotateLayout aOT;
    private TextView aOU;
    private ZtemtShutterButton aOV = null;

    public C0936h(int i) {
        super(i);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return null;
        }
        C0090a.bvo("IntervalometerFragment", "onCreateView");
        View inflate = layoutInflater.inflate(R.layout.ztemt_intervalometer_layout, viewGroup, false);
        if (inflate == null) {
            C0090a.bvo("IntervalometerFragment", "view == null");
        }
        beN(inflate);
        return inflate;
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            C0090a.bvo("IntervalometerFragment", "onResume");
            beQ();
        }
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        C0090a.bvo("IntervalometerFragment", "onPause");
        beU();
        this.aOV.setVisibility(8);
        release();
        super.onPause();
    }

    private void beQ() {
        if (alq() != UIState.CAMERA_FAMILY) {
            this.aOI.setVisibility(8);
            alF();
            alr();
        }
    }

    private void release() {
        if (this.aOK != null) {
            this.aOK.stop();
        }
        beV();
    }

    public void onDestroy() {
        beP();
        super.onDestroy();
    }

    private void beP() {
        if (this.aOG != null) {
            this.aOG.release();
            this.aOG = null;
        }
    }

    private void beS(long j, long j2, int i) {
        int i2 = (int) (j2 / 1000);
        this.aOS.lo(beO(i2 / 3600) + ":" + beO((i2 % 3600) / 60) + ":" + beO(i2 % 60));
    }

    private String beO(int i) {
        return i >= 10 ? "" + i : "0" + i;
    }

    public void beJ(C0636m c0636m, C0329e c0329e) {
        if (c0329e != null) {
            this.aOK = c0636m;
            this.aOK.aqs(this);
            this.aOK.aqr((long) beM());
            this.aOK.aqt(true);
            if (IndependenceUtil.afZ || IndependenceUtil.aga) {
                this.aOG = new C0930b(c0329e.SM());
            }
        }
    }

    public void alL() {
        if (this.aOK != null) {
            this.aOK.aqr((long) beM());
        }
    }

    private int beM() {
        return this.aOJ;
    }

    private void beR(int i) {
        Editor edit = als().edit();
        edit.putInt("pref_camera_intervalometer_interval", i);
        edit.apply();
    }

    private void beN(View view) {
        this.aOR = (RelativeLayout) view.findViewById(R.id.ztemt_intervalometer_information);
        this.aOT = (RotateLayout) view.findViewById(R.id.information_num_layout);
        this.aOU = (TextView) view.findViewById(R.id.information_num);
        this.aOI = (MultiFunctionImageView) view.findViewById(R.id.interval_center_icon);
        this.aOM = (RelativeLayout) view.findViewById(R.id.progress_view_layout);
        this.aOV = (ZtemtShutterButton) view.findViewById(R.id.progress_button);
        this.aOV.pZ(this);
        this.aON = (NubiaProgressWheel) view.findViewById(R.id.shutter_button_progress_wheel);
        this.aOS = new C0764t(view);
        this.adE = new C0474A[0];
    }

    public static C0936h beI() {
        return new C0936h(1);
    }

    public void akB(long j) {
        C0090a.m1e("IntervalometerFragment", "==wq====onStart");
        if (this.adA != null) {
            this.adA.SU().Sr();
        }
        if (this.aOG != null) {
            this.aOG.bes(this.aOH);
            this.aOG.start();
        }
        this.aOP = System.currentTimeMillis();
        beS(j, 0, 0);
        if (this.aOS != null) {
            this.aOS.ln();
        }
    }

    public void onFinish() {
        C0090a.m1e("IntervalometerFragment", "==wq====onFinish");
        if (this.aOG != null) {
            this.aOG.bew();
        }
        beL();
    }

    public void akC(long j, long j2, int i) {
        beS(j, j2, i);
    }

    public void akA() {
        C0090a.m1e("IntervalometerFragment", "==wq====onInterrupted");
        if (this.aOR != null && this.aOS != null) {
            if (this.aOS != null) {
                this.aOS.stop();
            }
            this.aOR.setVisibility(8);
            beV();
            this.aOQ = System.currentTimeMillis();
            if (this.adA != null) {
                this.adA.SU().RC();
            }
        }
    }

    private void beV() {
        if (this.aOG != null) {
            this.aOG.stop();
        }
    }

    private boolean beL() {
        this.adA.Ti().alY(new C0939k(this));
        return this.adA.Tl();
    }

    public void kV(String str, String str2) {
        int parseInt = Integer.parseInt(str2);
        beR(parseInt * 1000);
        this.aOK.aqr((long) (parseInt * 1000));
    }

    private void beT() {
        if (this.aON != null) {
            this.aON.setVisibility(0);
            this.aON.start();
        }
    }

    private void beU() {
        if (this.aON != null) {
            this.aON.setVisibility(8);
            this.aON.stop();
        }
    }

    private void start() {
        if (!((ActivityBase) this.adA.SN()).asa()) {
            if (this.adA.Tl()) {
                this.aOK.start();
                C0616j.apa(this.adA.SN(), "intervalometer_1", "IntervalometerFragment");
                return;
            }
            C0090a.bvm("IntervalometerFragment", "storage enough: " + this.adA.Tl() + "; Activity paused: " + this.adA.SO());
        }
    }

    private void stop() {
        this.aOK.stop();
    }

    public void ahE() {
        C0090a.bvo("IntervalometerFragment", "OnIntervalometerStart");
        this.adA.Tj(true);
        this.aOV.setVisibility(0);
        beT();
        this.aOI.setVisibility(0);
        this.aOI.lE();
        alz();
    }

    public void ahF() {
        this.adA.Tj(false);
        this.aOV.setVisibility(8);
        beU();
        C0090a.bvo("IntervalometerFragment", "OnIntervalometerStop mIsIdle=" + this.aOL);
        if (this.aOL) {
            this.aOI.setVisibility(8);
            alr();
            return;
        }
        this.aOI.lz(null);
        this.aOI.lw(Function.WAIT);
        alG();
    }

    public void qf(boolean z) {
        if (this.adA != null) {
            this.adA.VY(z);
        }
    }

    public void qe() {
        if (this.aOK != null && this.adA != null && !this.adA.SO()) {
            if (this.adA.SX().JZ() != FunctionState.INTERVAL) {
                start();
            } else {
                stop();
            }
        }
    }

    public void qg() {
        qe();
    }

    public boolean beK() {
        if (this.aOV == null || this.aOV.getVisibility() != 0) {
            return false;
        }
        this.aOV.performClick();
        return true;
    }

    public boolean onBackPressed() {
        if (alu() != FunctionState.INTERVAL) {
            return super.onBackPressed();
        }
        stop();
        return true;
    }

    protected void alr() {
        super.alr();
        if (this.aOM != null) {
            this.aOM.setVisibility(8);
        }
    }

    protected void alz() {
        super.alz();
        if (this.aOM != null) {
            this.aOM.setVisibility(0);
        }
    }

    private void beW(String str) {
        try {
            ContentValues contentValues = new ContentValues(2);
            contentValues.put("mime_type", "video/mp4");
            contentValues.put("_data", str);
            Location age = this.adA.Tq().age();
            if (age != null) {
                contentValues.put("latitude", Double.valueOf(age.getLatitude()));
                contentValues.put("longitude", Double.valueOf(age.getLongitude()));
            }
            this.adA.Ti().alX(new C0626h(this.adA, contentValues, str, 0, null));
            this.adA.SM().sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse("file://" + str)));
        } catch (Throwable e) {
            C0090a.bvi("IntervalometerFragment", "updateContentResolver fail", e);
        }
    }
}
