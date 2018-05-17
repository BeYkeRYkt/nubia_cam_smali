package com.android.startrack;

import android.os.CountDownTimer;

class C1120i extends CountDownTimer {
    final /* synthetic */ C1117f aLo;

    public C1120i(C1117f c1117f, long j, long j2) {
        this.aLo = c1117f;
        super(j, j2);
    }

    public void onFinish() {
        if (this.aLo.isVisible()) {
            this.aLo.bbE();
            this.aLo.bbA();
        }
    }

    public void onTick(long j) {
        this.aLo.aLj.baO("" + (j / 1000));
    }
}
