package com.android.dng;

import com.android.common.ActivityBase;
import com.android.common.appService.C0147A;
import com.android.common.appService.CameraStartUpThread$CameraOpenState;
import com.android.common.p016a.C0287a;

final class C0810z implements C0147A {
    final /* synthetic */ C0792h aND;

    C0810z(C0792h c0792h) {
        this.aND = c0792h;
    }

    public void ZZ() {
        this.aND.adA.TA();
        this.aND.adA.Up();
        this.aND.adA.Xh(this.aND.adA.UN());
        C0287a arK = ((ActivityBase) this.aND.getActivity()).arK();
        arK.m36n();
        arK.m39q(false);
        arK.m40r(false);
        arK.m29e().m48K(new C0781A(this, arK));
    }

    public void ZY(int[] iArr, CameraStartUpThread$CameraOpenState cameraStartUpThread$CameraOpenState) {
        this.aND.adA.Tz().post(new C0782B(this, cameraStartUpThread$CameraOpenState));
    }
}
