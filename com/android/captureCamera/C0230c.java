package com.android.captureCamera;

import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.os.Handler;
import android.os.PowerManager;
import com.p010a.C0090a;

public class C0230c {
    private Camera aRP = null;
    private CaptureCameraState aRQ = CaptureCameraState.IDLE;
    private int aRR = 0;
    private Context aRS = null;
    private Handler aRT = null;
    private int aRU = -1;
    private SharedPreferences aRV = null;
    private long aRW = 0;

    public int biu() {
        return this.aRR;
    }

    public void biD(int i) {
        this.aRR = i;
    }

    public Handler biw() {
        return this.aRT;
    }

    public void biE(Handler handler) {
        this.aRT = handler;
    }

    public int bix() {
        return this.aRU;
    }

    public void setOrientation(int i) {
        this.aRU = i;
    }

    public void biF(long j) {
        this.aRW = j;
    }

    public CaptureCameraState bit() {
        return this.aRQ;
    }

    public void biC(CaptureCameraState captureCameraState) {
        this.aRQ = captureCameraState;
    }

    public C0230c(Context context) {
        this.aRS = context;
        this.aRV = context.getSharedPreferences("capture_camera_preferences", 0);
    }

    public void biB(Camera camera) {
        this.aRP = camera;
    }

    public int bis() {
        if (this.aRV == null) {
            return 0;
        }
        return this.aRV.getInt("capture_camera_id", 0);
    }

    public Parameters biy() {
        if (this.aRP == null) {
            return null;
        }
        return this.aRP.getParameters();
    }

    public void biG() {
        if (this.aRP == null) {
            C0090a.m1e("CaptureCameraUtil", "Util startPreview failed. mCamera is null!");
        } else {
            this.aRP.startPreview();
        }
    }

    public boolean biz() {
        if (this.aRV == null) {
            return true;
        }
        return this.aRV.getBoolean("capture_camera_exposure_on_off", true);
    }

    public int biv() {
        return 6;
    }

    public boolean biA(Context context) {
        return ((PowerManager) context.getSystemService("power")).isScreenOn();
    }
}
