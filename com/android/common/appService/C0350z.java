package com.android.common.appService;

import android.app.Activity;
import android.content.Context;
import android.provider.Settings.System;
import com.android.common.C0616j;
import com.android.common.camerastate.DeviceState;
import com.android.common.setting.C0706f;
import com.p010a.C0090a;

public class C0350z extends Thread {
    private Activity RJ = null;
    private C0329e RK = null;
    private C0147A RL = null;
    private volatile boolean RM = false;
    private int[] RN = null;
    private long RO = 0;

    public C0350z(Activity activity, C0329e c0329e, C0147A c0147a, int[] iArr) {
        this.RJ = activity;
        this.RK = c0329e;
        this.RL = c0147a;
        this.RN = iArr;
    }

    public void cancel() {
        this.RM = true;
    }

    public void run() {
        this.RO = System.currentTimeMillis();
        ZW();
    }

    private void ZW() {
        if (this.RL != null) {
            this.RL.ZZ();
        }
        if (this.RN == null || this.RN.length == 0) {
            ZV(CameraStartUpThread$CameraOpenState.FAIL_CAMERAID_ERROR);
            return;
        }
        try {
            if (!this.RM) {
                ZX();
                if (!this.RM) {
                    int[] iArr = this.RN;
                    int length = iArr.length;
                    int i = 0;
                    while (i < length) {
                        int i2 = iArr[i];
                        C0616j.apZ(this.RJ, i2);
                        if (!this.RM) {
                            this.RK.UM(i2).tW();
                            if (!this.RM) {
                                boolean arE;
                                C0706f UV = this.RK.UV();
                                Context SN = this.RK.SN();
                                CameraMember SP = this.RK.SP();
                                if (this.RK.SM() != null) {
                                    arE = this.RK.SM().arE();
                                } else {
                                    arE = false;
                                }
                                UV.uo(SN, i2, SP, arE);
                                i++;
                            } else {
                                return;
                            }
                        }
                        return;
                    }
                    if (!this.RM) {
                        this.RK.SX().Kd(DeviceState.PREVIEW_STOPPED);
                        if (!this.RM) {
                            ZV(CameraStartUpThread$CameraOpenState.SUCCESS);
                        }
                    }
                }
            }
        } catch (Throwable e) {
            ZV(CameraStartUpThread$CameraOpenState.FAIL_CAMERA_ERROR);
            C0090a.bvi("CameraStartUpThread", "fail", e);
        } catch (Throwable e2) {
            ZV(CameraStartUpThread$CameraOpenState.FAIL_CAMERA_DISABLED);
            C0090a.bvi("CameraStartUpThread", "disable", e2);
        }
    }

    private void ZV(CameraStartUpThread$CameraOpenState cameraStartUpThread$CameraOpenState) {
        if (this.RL != null) {
            this.RL.ZY(this.RN, cameraStartUpThread$CameraOpenState);
        }
    }

    private void ZX() {
        while (ZU()) {
            if (System.currentTimeMillis() - this.RO >= 3000) {
                break;
            }
        }
        if (System.currentTimeMillis() - this.RO > 3000) {
            C0090a.m1e("CameraStartUpThread", "Wait captureCamera release failed!");
        }
    }

    private boolean ZU() {
        if (1 == System.getInt(this.RJ.getContentResolver(), "capture_service_camera_on", 0)) {
            return true;
        }
        return false;
    }
}
