package com.android.slowshutter;

import com.android.common.appService.C0300B;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;

final class C1101h implements C0300B {
    final /* synthetic */ C1095b bcw;

    C1101h(C1095b c1095b) {
        this.bcw = c1095b;
    }

    public void aaa() {
        this.bcw.btl();
        this.bcw.alH(DeviceState.IDLE);
        if (this.bcw.bbX) {
            this.bcw.alI(FunctionState.INTERVAL);
        }
        this.bcw.adA.Tj(false);
        this.bcw.btm();
    }
}
