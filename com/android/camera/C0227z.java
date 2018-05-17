package com.android.camera;

import com.android.common.appService.CameraStartUpThread$CameraOpenState;

final class C0227z implements Runnable {
    final /* synthetic */ C0226y aJi;
    final /* synthetic */ CameraStartUpThread$CameraOpenState aJj;

    C0227z(C0226y c0226y, CameraStartUpThread$CameraOpenState cameraStartUpThread$CameraOpenState) {
        this.aJi = c0226y;
        this.aJj = cameraStartUpThread$CameraOpenState;
    }

    public void run() {
        this.aJi.aJg.aiG.WD(null);
        this.aJi.aJg.aZe(this.aJi.aJg.aiG.SP(), this.aJj);
    }
}
