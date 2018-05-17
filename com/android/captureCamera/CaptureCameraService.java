package com.android.captureCamera;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.Vibrator;
import android.preference.PreferenceManager;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.appService.CameraMember;
import com.android.common.custom.C0421M;
import com.android.common.p029i.C0564c;
import com.android.common.p029i.C0565a;
import com.android.common.setting.C0710j;
import com.android.common.storagemanager.C0236g;
import com.android.common.storagemanager.C0722e;
import com.p010a.C0090a;

public class CaptureCameraService extends Service {
    private static final int[] aRZ = new int[]{-2, -1, 0, 1, 2};
    private static final int[] aSa = new int[]{2, 0, -2};
    private Camera aSb = null;
    private int aSc = 0;
    private C0232e aSd = null;
    private Context aSe = null;
    private long aSf = 700;
    private int aSg = 0;
    private int[] aSh = null;
    private AutoFocusCallback aSi = new C0234g(this);
    private Handler aSj = new C0238j(this);
    private C0228a aSk = null;
    private boolean aSl = false;
    private boolean aSm = false;
    private boolean aSn = false;
    private boolean aSo = false;
    private C0564c aSp = null;
    private C0231d aSq = null;
    private Parameters aSr = null;
    private PowerManager aSs = null;
    private BroadcastReceiver aSt = new C0235h(this);
    private C0722e aSu;
    private SurfaceTexture aSv = null;
    private C0236g aSw = new C0237i(this);
    private C0230c aSx = null;
    private Vibrator aSy = null;
    private WakeLock aSz = null;

    private boolean biN() {
        try {
            return Secure.getInt(getContentResolver(), "device_provisioned") == 1;
        } catch (Throwable e) {
            C0090a.bvi("CaptureCameraService", "Setting not found", e);
            return false;
        }
    }

    private boolean biO() {
        try {
            if (((TelephonyManager) this.aSe.getSystemService("phone")).getCallState() == 0) {
                return false;
            }
            return true;
        } catch (Throwable e) {
            C0090a.bvi("CaptureCameraService", "isPhoneCalled failed!", e);
            return false;
        }
    }

    private void bjh() {
        if (this.aSx.bit() != CaptureCameraState.IDLE || this.aSd.getCount() >= 1) {
            this.aSd.bjK();
            return;
        }
        this.aSd.bjK();
        this.aSj.sendEmptyMessage(103);
        if (this.aSq != null) {
            this.aSq.enable();
        }
    }

    private void bjk() {
        this.aSg--;
        if (this.aSg > -1) {
            biX(this.aSh[this.aSg] * this.aSx.biv());
            if (this.aSg == this.aSh.length - 1) {
                this.aSj.sendEmptyMessageDelayed(103, this.aSf);
            } else {
                this.aSj.sendEmptyMessageDelayed(103, 630);
            }
            return;
        }
        biX(0);
        this.aSx.biC(CaptureCameraState.IDLE);
        this.aSm = false;
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        C0090a.m1e("CaptureCameraService", "onCreate");
        super.onCreate();
        biU(false);
        biL();
        biR();
        bjc(true);
        if (C0616j.apB() == null) {
            C0616j.apJ(this);
        }
        biI(true);
        CameraMember.aas(getResources());
        this.aSo = true;
    }

    private void biI(boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("isRunning", Boolean.valueOf(z));
        if (z) {
            contentValues.put("runningReason", "captureCamera start");
        } else {
            contentValues.put("runningReason", "captureCamera stop");
        }
        getContentResolver().update(Uri.parse("content://com.android.camera.RunningStatusProvider"), contentValues, null, null);
    }

    private void biL() {
        this.aSx = new C0230c(this);
        this.aSk = new C0228a(this);
        this.aSc = this.aSx.bis();
        this.aSp = new C0565a(this);
        this.aSq = new C0231d(this, this);
        this.aSd = new C0232e();
        this.aSx.biE(this.aSj);
        this.aSy = (Vibrator) getSystemService("vibrator");
        this.aSl = false;
        this.aSu = new C0722e();
        bjd();
    }

    private void bjd() {
        if (PreferenceManager.getDefaultSharedPreferences(this).getString("pref_camera_storage_path", getString(R.string.pref_stroage_phone)).equals(getString(R.string.pref_stroage_phone))) {
            C0701s.arn(false);
        } else {
            C0701s.arn(true);
        }
    }

    private void biR() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.nubia_bt.capture");
        intentFilter.addAction("stop_service_camera");
        intentFilter.addAction("com.android.captureCamera.CaptureCameraService");
        registerReceiver(this.aSt, intentFilter);
    }

    public void onDestroy() {
        C0090a.m1e("CaptureCameraService", "onDestroy");
        super.onDestroy();
        this.aSj.removeMessages(102);
        this.aSj.removeMessages(103);
        this.aSj.removeMessages(104);
        this.aSj.removeMessages(105);
        this.aSj.removeMessages(106);
        this.aSj.removeMessages(107);
        this.aSl = false;
        biS();
        this.aSq.disable();
        unregisterReceiver(this.aSt);
        bjc(false);
        this.aSk.bio();
        this.aSp.release();
        this.aSu.alV();
        biI(false);
        this.aSo = false;
    }

    private void biS() {
        if (this.aSb == null) {
            biU(false);
            return;
        }
        biT();
        this.aSb.stopPreview();
        this.aSb.release();
        this.aSb = null;
        biU(false);
    }

    private void bjg() {
        bji();
        this.aSc = this.aSx.bis();
        this.aSv = new SurfaceTexture(10);
        if (this.aSb == null) {
            biQ();
        }
        try {
            this.aSb.setPreviewTexture(this.aSv);
        } catch (Throwable e) {
            C0090a.bvi("CaptureCameraService", "setPreviewTexture", e);
        }
        this.aSr = this.aSb.getParameters();
        bja();
        bjb();
        biV();
        biY();
        bje();
        biZ();
        if (this.aSx.biz() && this.aSx.bis() == 0) {
            biW();
        }
        this.aSb.startPreview();
        this.aSx.biB(this.aSb);
        biU(true);
    }

    private void biZ() {
        C0090a.bvo("CaptureCameraService", "setMode camera_app_mode 18");
        this.aSr = this.aSb.getParameters();
        this.aSr.set("camera_app_mode", 18);
        this.aSb.setParameters(this.aSr);
    }

    private void biQ() {
        try {
            this.aSb = Camera.openLegacy(this.aSc, 256);
        } catch (RuntimeException e) {
            C0090a.bvo("CaptureCameraService", "openLegacy failed. Using open instead");
            this.aSb = Camera.open(this.aSc);
        }
    }

    private void bji() {
        sendBroadcast(new Intent("stop_camera_activity"));
    }

    private void biW() {
        this.aSr = this.aSb.getParameters();
        if (C0616j.ahq) {
            this.aSr.set("snapshot-onoff", 1);
        } else {
            this.aSr.set("ae-bracket-hdr", "AE-Bracket");
            this.aSr.set("capture-burst-exposures", "-12,0,12");
        }
        this.aSb.setParameters(this.aSr);
    }

    private void biT() {
        if (C0616j.ahq && this.aSb != null) {
            this.aSb.setParameters(this.aSr);
            this.aSr.set("snapshot-onoff", 0);
            this.aSb.setParameters(this.aSr);
        }
    }

    private void bjb() {
        if (this.aSb != null) {
            this.aSr = this.aSb.getParameters();
            this.aSr.setPreviewSize(640, 480);
            this.aSb.setParameters(this.aSr);
        }
    }

    private void biX(int i) {
        if (this.aSb != null) {
            this.aSr = this.aSb.getParameters();
            this.aSr.setExposureCompensation(i);
            this.aSb.setParameters(this.aSr);
        }
    }

    private void biV() {
        this.aSr = this.aSb.getParameters();
        this.aSr.set("denoise", "denoise-on");
        this.aSb.setParameters(this.aSr);
    }

    private void biY() {
        this.aSr = this.aSb.getParameters();
        this.aSr.setFocusMode("auto");
        this.aSb.setParameters(this.aSr);
    }

    private void bje() {
        this.aSr = this.aSb.getParameters();
        C0421M.dC().dD().getProductName();
        if (this.aSx.biz() && this.aSx.bis() == 0 && !C0421M.dC().dD().bH()) {
            bjf("off");
            C0090a.bvo("CaptureCameraService", "setZSL off");
        } else {
            bjf("on");
            C0090a.bvo("CaptureCameraService", "setZSL on");
        }
        this.aSb.setParameters(this.aSr);
    }

    private void bjf(String str) {
        int i = 1;
        if (C0616j.ahq) {
            this.aSr.set("zsd-mode", str);
            Parameters parameters = this.aSr;
            String str2 = "mtk-cam-mode";
            if (!"on".equals(str)) {
                i = 0;
            }
            parameters.set(str2, i);
            this.aSr.set("cap-mode", "normal");
            return;
        }
        this.aSr.set("zsl", str);
        parameters = this.aSr;
        str2 = "camera-mode";
        if (!"on".equals(str)) {
            i = 0;
        }
        parameters.set(str2, i);
    }

    private void bjj() {
        if (this.aSb != null) {
            this.aSb.stopPreview();
            this.aSb.release();
            this.aSb = null;
        }
        this.aSb = Camera.open(this.aSc);
        try {
            this.aSb.setPreviewTexture(this.aSv);
        } catch (Throwable e) {
            C0090a.bvi("CaptureCameraService", "setPreviewTexture", e);
        }
        this.aSr = this.aSb.getParameters();
        bja();
        this.aSb.startPreview();
    }

    private void bja() {
        int i = 0;
        int i2 = 0;
        for (Size size : this.aSr.getSupportedPictureSizes()) {
            int i3;
            if (size.width * size.height > i2 * i) {
                i = size.width;
                i3 = size.height;
            } else {
                i3 = i;
                i = i2;
            }
            i2 = i;
            i = i3;
        }
        C0090a.bvo("CaptureCameraService", "setPictureSize() width = " + i2 + "; height = " + i);
        this.aSr.setPictureSize(i2, i);
        this.aSb.setParameters(this.aSr);
    }

    private void biH() {
        if (this.aSb != null) {
            if (this.aSl) {
                C0090a.bvo("CaptureCameraService", "capture");
                this.aSl = false;
                this.aSj.removeMessages(107);
                this.aSr = biJ();
                this.aSr.set("ztemt_logo_type", biK());
                int aoQ = C0616j.aoQ(this.aSx.bis(), this.aSx.bix());
                this.aSr.setRotation(aoQ);
                this.aSb.setParameters(this.aSr);
                this.aSx.biD(0);
                this.aSb.takePicture(null, null, new C0233f(this.aSp.age(), this, this.aSx, this.aSk, aoQ));
                C0616j.apa(this, "normal_3", "CaptureCameraService");
                this.aSj.sendEmptyMessageDelayed(104, 5000);
                return;
            }
            C0090a.m1e("CaptureCameraService", "can't capture because mIsCanFocusCapture is " + this.aSl);
        }
    }

    private int biK() {
        C0710j c0710j = new C0710j((Context) this);
        boolean equals = "on".equals(c0710j.getString("pref_water_mark_key", "on"));
        boolean equals2 = "on".equals(c0710j.getString("pref_water_mark_time_key", "off"));
        if (!equals && !equals2) {
            return 0;
        }
        if (equals && !equals2) {
            return 1;
        }
        if (!equals && equals2) {
            return 2;
        }
        if (equals && equals2) {
            return 3;
        }
        return 0;
    }

    private void bjl() {
        if (this.aSd.getCount() >= 1) {
            if (this.aSx == null || !this.aSx.biA(this.aSe)) {
                C0090a.bvo("CaptureCameraService", "takePicture");
                this.aSj.removeMessages(104);
                if (this.aSx.bit() == CaptureCameraState.IDLE) {
                    this.aSd.bjM();
                    this.aSx.biC(CaptureCameraState.CAPTUREING);
                    this.aSx.biF(System.currentTimeMillis());
                    this.aSl = true;
                    this.aSb.autoFocus(this.aSi);
                    this.aSj.sendEmptyMessageDelayed(107, 900);
                    return;
                }
                return;
            }
            this.aSd.bjL();
            C0090a.m1e("CaptureCameraService", "takePicture failed. It is screen on!");
        }
    }

    private void biP() {
        C0090a.bvo("CaptureCameraService", "onCaptureFinish");
        if (this.aSy != null) {
            this.aSy.vibrate(45);
        }
    }

    private Parameters biJ() {
        if (this.aSb != null) {
            return this.aSb.getParameters();
        }
        return null;
    }

    private boolean biM() {
        if (1 == System.getInt(getContentResolver(), "capture_service_camera_on", 0)) {
            return true;
        }
        return false;
    }

    private void biU(boolean z) {
        int i;
        ContentResolver contentResolver = getContentResolver();
        String str = "capture_service_camera_on";
        if (z) {
            i = 1;
        } else {
            i = 0;
        }
        C0616j.aqc(contentResolver, str, i);
    }

    private void bjc(boolean z) {
        int i;
        ContentResolver contentResolver = getContentResolver();
        String str = "capture_service_on";
        if (z) {
            i = 1;
        } else {
            i = 0;
        }
        C0616j.aqc(contentResolver, str, i);
    }
}
