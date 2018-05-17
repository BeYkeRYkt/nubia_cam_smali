package com.android.common.ui;

import android.app.Activity;
import android.os.Handler;
import android.os.Message;
import com.p010a.C0090a;

final class bm extends Handler {
    final /* synthetic */ WheelView yG;

    bm(WheelView wheelView) {
        this.yG = wheelView;
    }

    public void handleMessage(Message message) {
        if (((Activity) this.yG.getContext()).isDestroyed()) {
            C0090a.m0d("WheelView", "WheelView Context isDestroyed! clearMessage");
            this.yG.su();
            return;
        }
        this.yG.vZ.computeScrollOffset();
        int currX = this.yG.vZ.getCurrX();
        this.yG.wb = this.yG.vD - currX;
        this.yG.vD = currX;
        this.yG.invalidate();
        if (Math.abs(currX - this.yG.vZ.getFinalX()) < 1) {
            this.yG.vZ.getFinalX();
            this.yG.vZ.forceFinished(true);
        }
        if (!this.yG.vZ.isFinished()) {
            this.yG.sD(message.what);
        } else if (message.what == 0) {
            this.yG.sz();
        } else {
            this.yG.wb = 0;
            this.yG.vD = 0;
            this.yG.wc = 0;
            this.yG.wd = 0;
            if (this.yG.vU != null) {
                this.yG.vU.sP(this.yG);
            }
        }
    }
}
