package com.android.camera;

import com.android.common.camerastate.FunctionState;
import com.p010a.C0090a;

final class C0146B implements Runnable {
    final /* synthetic */ C0145A aJl;

    C0146B(C0145A c0145a) {
        this.aJl = c0145a;
    }

    public void run() {
        C0090a.bvo("nubiaCamera", "Switch Camera id, firstFrameAvailable");
        this.aJl.aJk.asc(250);
        this.aJl.aJk.aiI.JW(FunctionState.SWITCHING_CAMERA);
        this.aJl.aJk.ajb.sendEmptyMessage(97);
        this.aJl.aJk.arD().Sy();
        this.aJl.aJk.aiG.WA(true);
    }
}
