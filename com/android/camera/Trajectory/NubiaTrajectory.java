package com.android.camera.Trajectory;

import android.graphics.Bitmap;
import android.hardware.Camera.Size;
import com.android.common.appService.C0329e;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.p010a.C0090a;

public class NubiaTrajectory {
    private C0329e aHl = null;
    private int aHm = 15;
    private int aHn;
    private boolean aHo = false;
    private boolean aHp = false;
    private boolean aHq = false;
    private int aHr = 0;
    private byte[] aHs = null;
    private C0155b aHt = new C0155b();
    private Thread aHu = null;
    private int aHv = 0;
    private int aHw = 100;
    private C0154a aHx = null;
    private int aHy;
    private Size aHz = null;
    private long mStartTime = 0;

    public static native int Compose(int[] iArr, Bitmap bitmap);

    public static native int ComposePrepare();

    public static native void CompositionCancel();

    public static native int GetSavedImageRGBA(int i, Bitmap bitmap);

    public static native int PreRegister();

    public static native void RotateBitmapRGBA8888(Bitmap bitmap, Bitmap bitmap2, int i, int i2, int i3);

    public static native int SaveYuvData(int i, int i2, int i3, int i4, byte[] bArr);

    public NubiaTrajectory(C0329e c0329e, C0154a c0154a) {
        this.aHl = c0329e;
        this.aHx = c0154a;
        aWU();
    }

    private void aWU() {
        this.aHr = 0;
    }

    public void start() {
        if (this.aHl != null) {
            this.aHz = this.aHl.Tn().Gv();
            this.aHy = this.aHz.width;
            this.aHn = this.aHz.height;
            this.aHx.aXf();
            this.aHl.TE().Lq(true);
            this.aHl.SX().Kb(UIState.NORMAL, DeviceState.IDLE, DeviceState.PREVIEW_STOPPED, FunctionState.NORMAL);
            this.aHr = 0;
            this.aHl.Tr().IL().setOneShotPreviewCallback(this.aHt);
            this.aHp = true;
            this.aHq = false;
            C0090a.bvo("Trajectory", "mWidth = " + this.aHy + "; mHeight = " + this.aHn);
        }
    }

    public void aWO(int i) {
        this.aHw = i;
    }

    public void aWN(int i) {
        this.aHm = i;
    }

    public int aWQ() {
        return this.aHm;
    }

    public void stop() {
        C0090a.bvo("Trajectory", "stop");
        this.aHq = true;
        if (this.aHu != null) {
            this.aHu.interrupt();
            this.aHu = null;
        }
        this.aHp = false;
        this.aHx.aXi();
        this.aHr = 0;
        this.aHv = 0;
        aWT();
    }

    public boolean aWR() {
        return this.aHq;
    }

    private void aWT() {
        this.aHs = null;
    }

    public void aWM() {
        this.aHx.aXj();
    }

    public void aWL(boolean z) {
        this.aHo = z;
    }

    public boolean aWP() {
        return this.aHo;
    }

    private void aWV(byte[] bArr) {
        this.aHs = (byte[]) bArr.clone();
        C0090a.bvo("Trajectory", "saveYuvData mIsPreviewRunning = " + this.aHp + "; mNumTaken = " + this.aHr);
        if (!this.aHq) {
            Runnable c0156c = new C0156c(this);
            c0156c.setName(this.aHr + "");
            new Thread(c0156c).start();
            this.aHr++;
            this.aHx.aXg(this.aHr);
            if (this.aHr == this.aHm) {
                this.aHp = false;
            }
        }
    }

    protected void aWW(byte[] bArr, Thread thread) {
        if (bArr == null) {
            C0090a.m1e("Trajectory", "saveYuvDate failed. Because yuv_data is null.");
            return;
        }
        int intValue = Integer.valueOf(thread.getName()).intValue();
        int SaveYuvData = SaveYuvData(intValue, this.aHm, this.aHy, this.aHn, bArr);
        if (SaveYuvData != 0) {
            stop();
            C0090a.m1e("Trajectory", "save yuv filed; ret = " + SaveYuvData + "; index = " + intValue);
        }
        aWS("Yuv Save finish", SaveYuvData, thread);
    }

    private void aWS(String str, int i, Thread thread) {
        this.aHv++;
        C0090a.bvo("Trajectory", str + ": mSaveDataNum = " + this.aHv + "; ret = " + i);
        if (this.aHv == this.aHm && this.aHr != 0 && !this.aHq) {
            this.aHu = thread;
            this.aHv = 0;
            aWT();
            this.aHx.aXh(this.aHy, this.aHn, this.aHr);
        }
    }

    static {
        System.loadLibrary("nubia_trajectory");
    }
}
