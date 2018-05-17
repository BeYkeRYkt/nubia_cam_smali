package com.android.camera;

import com.android.common.appService.C0147A;
import com.android.common.appService.CameraStartUpThread$CameraOpenState;

final class C0226y implements C0147A {
    final /* synthetic */ Camera aJg;
    final /* synthetic */ int aJh;

    C0226y(Camera camera, int i) {
        this.aJg = camera;
        this.aJh = i;
    }

    public void ZZ() {
        this.aJg.aZb();
        this.aJg.auW();
        this.aJg.ass();
        this.aJg.aYP();
        this.aJg.aYD(this.aJh);
    }

    public void ZY(int[] iArr, CameraStartUpThread$CameraOpenState cameraStartUpThread$CameraOpenState) {
        this.aJg.ajb.post(new C0227z(this, cameraStartUpThread$CameraOpenState));
    }
}
