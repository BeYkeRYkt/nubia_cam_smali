package com.android.common;

import com.android.common.appService.C0147A;
import com.android.common.appService.CameraStartUpThread$CameraOpenState;

final class C0285Y implements C0147A {
    private static final /* synthetic */ int[] akQ = null;
    final /* synthetic */ ActivityBase akP;

    private static /* synthetic */ int[] avZ() {
        if (akQ != null) {
            return akQ;
        }
        int[] iArr = new int[CameraStartUpThread$CameraOpenState.values().length];
        try {
            iArr[CameraStartUpThread$CameraOpenState.FAIL_CAMERAID_ERROR.ordinal()] = 4;
        } catch (NoSuchFieldError e) {
        }
        try {
            iArr[CameraStartUpThread$CameraOpenState.FAIL_CAMERA_DISABLED.ordinal()] = 1;
        } catch (NoSuchFieldError e2) {
        }
        try {
            iArr[CameraStartUpThread$CameraOpenState.FAIL_CAMERA_ERROR.ordinal()] = 2;
        } catch (NoSuchFieldError e3) {
        }
        try {
            iArr[CameraStartUpThread$CameraOpenState.SUCCESS.ordinal()] = 3;
        } catch (NoSuchFieldError e4) {
        }
        akQ = iArr;
        return iArr;
    }

    C0285Y(ActivityBase activityBase) {
        this.akP = activityBase;
    }

    public void ZZ() {
    }

    public void ZY(int[] iArr, CameraStartUpThread$CameraOpenState cameraStartUpThread$CameraOpenState) {
        if (!this.akP.aiG.SO()) {
            switch (C0285Y.avZ()[cameraStartUpThread$CameraOpenState.ordinal()]) {
                case 1:
                    this.akP.atM();
                    break;
                case 2:
                    this.akP.aua();
                    break;
                case 3:
                    this.akP.ajf = true;
                    this.akP.atQ();
                    this.akP.auZ();
                    this.akP.auE();
                    break;
            }
        }
    }
}
