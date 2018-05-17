package com.android.camera;

import com.android.common.appService.CameraMember;
import com.android.common.appService.CameraStartUpThread$CameraOpenState;
import com.android.common.p012e.C0458b;

final class C0151E implements Runnable {
    final /* synthetic */ C0148C aJq;
    final /* synthetic */ CameraMember aJr;
    final /* synthetic */ CameraStartUpThread$CameraOpenState aJs;

    C0151E(C0148C c0148c, CameraMember cameraMember, CameraStartUpThread$CameraOpenState cameraStartUpThread$CameraOpenState) {
        this.aJq = c0148c;
        this.aJr = cameraMember;
        this.aJs = cameraStartUpThread$CameraOpenState;
    }

    public void run() {
        this.aJq.aJm.aiG.WD(null);
        this.aJq.aJm.aZe(this.aJr, this.aJs);
        C0458b.adi().adk();
    }
}
