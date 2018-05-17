package com.android.lightpainting;

import android.os.CountDownTimer;

class C0947h extends CountDownTimer {
    final /* synthetic */ C0943d aZu;

    public void onFinish() {
        this.aZu.bpD();
        this.aZu.bpz();
    }

    public void onTick(long j) {
        this.aZu.bpo((j / 1000) + "");
    }
}
