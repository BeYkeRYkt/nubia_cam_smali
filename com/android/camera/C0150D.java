package com.android.camera;

import com.android.common.camerastate.FunctionState;
import com.android.common.p016a.C0144d;
import com.p010a.C0090a;

final class C0150D implements C0144d {
    final /* synthetic */ C0148C aJp;

    C0150D(C0148C c0148c) {
        this.aJp = c0148c;
    }

    public void mo321L() {
        C0090a.bvo("nubiaCamera", "Switch Camera Member, firstFrameAvailable");
        this.aJp.aJm.ajB.m42t();
        this.aJp.aJm.asc(500);
        this.aJp.aJm.aiI.JW(FunctionState.SWITCHING_CAMERA);
        this.aJp.aJm.ajb.sendEmptyMessage(97);
        this.aJp.aJm.arD().Sy();
        this.aJp.aJm.aiG.WA(true);
    }
}
