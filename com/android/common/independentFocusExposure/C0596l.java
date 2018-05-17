package com.android.common.independentFocusExposure;

import android.os.Handler;
import android.os.Message;

class C0596l extends Handler {
    final /* synthetic */ C0592h Mf;

    private C0596l(C0592h c0592h) {
        this.Mf = c0592h;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 99:
                this.Mf.Lb.cancel();
                this.Mf.Lm.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(200).withEndAction(this.Mf.Lj).start();
                this.Mf.LB = false;
                return;
            case 101:
                this.Mf.Lb.start();
                return;
            case 102:
                this.Mf.Lc.start();
                return;
            case 104:
                this.Mf.Lq.start();
                return;
            default:
                return;
        }
    }
}
