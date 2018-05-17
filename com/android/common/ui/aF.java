package com.android.common.ui;

import android.os.Handler;
import android.os.Message;

final class aF extends Handler {
    final /* synthetic */ NubiaProgressWheel xK;

    aF(NubiaProgressWheel nubiaProgressWheel) {
        this.xK = nubiaProgressWheel;
    }

    public void handleMessage(Message message) {
        if (this.xK.kr) {
            NubiaProgressWheel nubiaProgressWheel = this.xK;
            nubiaProgressWheel.ku = nubiaProgressWheel.ku + this.xK.kx;
            this.xK.postInvalidate();
            nubiaProgressWheel = this.xK;
            nubiaProgressWheel.kC = nubiaProgressWheel.kC + 0.30000001192092896d;
            if (this.xK.ku < 60.0d && this.xK.ku > 0.0d) {
                return;
            }
            if (this.xK.kx == 0.30000001192092896d) {
                this.xK.kx = -0.30000001192092896d;
            } else {
                this.xK.kx = 0.30000001192092896d;
            }
        }
    }
}
