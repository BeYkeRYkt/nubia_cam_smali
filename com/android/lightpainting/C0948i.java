package com.android.lightpainting;

import android.os.CountDownTimer;

class C0948i extends CountDownTimer {
    final /* synthetic */ C0943d aZv;

    public C0948i(C0943d c0943d, long j) {
        this.aZv = c0943d;
        super(j, 1000);
    }

    public void onFinish() {
        this.aZv.bpE();
        this.aZv.bpp("torch");
        this.aZv.aZi.setText("");
        this.aZv.aZh.setClickable(false);
        this.aZv.aZg.setAlpha(0.4f);
    }

    public void onTick(long j) {
        this.aZv.aZi.setText((j / 1000) + "");
    }
}
