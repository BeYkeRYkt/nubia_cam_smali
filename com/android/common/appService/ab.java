package com.android.common.appService;

import com.android.common.camerastate.FunctionState;
import com.android.common.p012e.C0458b;

final class ab implements C0147A {
    final /* synthetic */ C0329e UF;
    final /* synthetic */ C0300B UG;

    ab(C0329e c0329e, C0300B c0300b) {
        this.UF = c0329e;
        this.UG = c0300b;
    }

    public void ZZ() {
        this.UF.TA();
        this.UF.Up();
    }

    public void ZY(int[] iArr, CameraStartUpThread$CameraOpenState cameraStartUpThread$CameraOpenState) {
        this.UF.SX().JW(FunctionState.RESTART_CAMERA);
        if (this.UG != null) {
            this.UG.aaa();
        }
        C0458b.adi().adk();
    }
}
