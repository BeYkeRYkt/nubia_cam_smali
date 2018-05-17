package com.android.common.appService;

import com.android.common.cameradevice.C0326h;
import com.p010a.C0090a;

final class az implements C0326h {
    final /* synthetic */ C0307J Vw;

    az(C0307J c0307j) {
        this.Vw = c0307j;
    }

    public void FW() {
        if (this.Vw.Tz != SmileShot$State.STATE_IN_PROGRESS) {
            C0090a.bvj("SmileShot", "[onSmile]gesture callback in error state, please check");
        } else {
            this.Vw.Tx.Uo();
        }
    }
}
