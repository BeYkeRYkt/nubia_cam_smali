package com.android.camera;

import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0378d;

class C0207k implements C0200f {
    final /* synthetic */ Camera aIR;

    private C0207k(Camera camera) {
        this.aIR = camera;
    }

    public void aYv(CameraMember cameraMember) {
        this.aIR.aiG.SU().RS(true, true);
    }

    public void aYu(boolean z) {
        this.aIR.aiG.SU().RS(false, z);
    }

    public void aYw(CameraMember cameraMember, C0378d c0378d, CameraMember cameraMember2) {
        this.aIR.aiG.Tc().LT();
        CameraMember SP = this.aIR.aiG.SP();
        this.aIR.aiG.Xi(cameraMember);
        if (!c0378d.equals(this.aIR.aiG.ST()) || (cameraMember != SP && c0378d.Fy())) {
            this.aIR.aiG.WD(c0378d);
            this.aIR.aZf(c0378d, cameraMember, cameraMember2);
            return;
        }
        this.aIR.aYK().aXu(this.aIR.asH(), this.aIR.aiG.SP(), cameraMember2, this.aIR.aiG);
    }
}
