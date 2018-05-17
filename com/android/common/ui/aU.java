package com.android.common.ui;

import android.app.Activity;
import android.os.Handler;
import android.os.Message;
import com.p010a.C0090a;

final class aU extends Handler {
    final /* synthetic */ EffectPage yh;

    aU(EffectPage effectPage) {
        this.yh = effectPage;
    }

    public void handleMessage(Message message) {
        if (((Activity) this.yh.getContext()).isDestroyed()) {
            C0090a.m0d("FunEffectPage", "WheelView Context isDestroyed! clearMessage");
            this.yh.oH();
            return;
        }
        this.yh.ri.computeScrollOffset();
        int currX = this.yh.ri.getCurrX();
        this.yh.oS(currX - this.yh.rl, 0);
        this.yh.rl = currX;
        if (Math.abs(currX - this.yh.ri.getFinalX()) < 3) {
            currX = this.yh.ri.getFinalX();
            this.yh.ri.forceFinished(true);
        }
        if (this.yh.ri.isFinished()) {
            this.yh.oR(currX - this.yh.rl, 0);
        } else {
            this.yh.oW(message.what);
        }
    }
}
