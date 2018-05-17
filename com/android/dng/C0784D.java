package com.android.dng;

import com.android.common.appService.C0300B;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;

final class C0784D implements C0300B {
    final /* synthetic */ C0792h aNJ;

    C0784D(C0792h c0792h) {
        this.aNJ = c0792h;
    }

    public void aaa() {
        this.aNJ.bdo();
        this.aNJ.alH(DeviceState.IDLE);
        if (this.aNJ.aML) {
            this.aNJ.alI(FunctionState.INTERVAL);
        }
        this.aNJ.adA.Tj(false);
        this.aNJ.bdq();
    }
}
