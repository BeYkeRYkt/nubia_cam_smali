package com.android.camera;

import com.android.common.appService.C0147A;
import com.android.common.appService.CameraMember;
import com.android.common.appService.CameraStartUpThread$CameraOpenState;
import com.android.common.cameradevice.C0378d;

final class C0148C implements C0147A {
    final /* synthetic */ Camera aJm;
    final /* synthetic */ C0378d aJn;
    final /* synthetic */ CameraMember aJo;

    C0148C(Camera camera, C0378d c0378d, CameraMember cameraMember) {
        this.aJm = camera;
        this.aJn = c0378d;
        this.aJo = cameraMember;
    }

    public void ZZ() {
        this.aJm.aZb();
        this.aJm.auW();
        this.aJm.ass();
        this.aJm.aiG.Xh(this.aJn);
        this.aJm.aiG.UP().uM(this.aJn.Fz());
        this.aJm.ajB.m36n();
        this.aJm.ajB.m39q(false);
        this.aJm.ajB.m40r(false);
        this.aJm.aIF.aXS();
        this.aJm.ajB.m29e().m48K(new C0150D(this));
    }

    public void ZY(int[] iArr, CameraStartUpThread$CameraOpenState cameraStartUpThread$CameraOpenState) {
        this.aJm.ajb.post(new C0151E(this, this.aJo, cameraStartUpThread$CameraOpenState));
    }
}
