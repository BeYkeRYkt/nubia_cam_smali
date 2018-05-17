package com.android.dng;

import com.android.common.ActivityBase;
import com.android.common.camerastate.FunctionState;
import com.android.common.p016a.C0144d;
import com.android.common.p016a.C0287a;
import com.p010a.C0090a;

final class C0781A implements C0144d {
    final /* synthetic */ C0810z aNE;
    final /* synthetic */ C0287a aNF;

    C0781A(C0810z c0810z, C0287a c0287a) {
        this.aNE = c0810z;
        this.aNF = c0287a;
    }

    public void mo321L() {
        C0090a.bvo("DngFragment", "Switch Camera Member, firstFrameAvailable");
        this.aNF.m42t();
        ((ActivityBase) this.aNE.aND.getActivity()).asc(500);
        this.aNE.aND.adD.JW(FunctionState.SWITCHING_CAMERA);
        ((ActivityBase) this.aNE.aND.getActivity()).arD().Sy();
        this.aNE.aND.adA.WA(true);
    }
}
