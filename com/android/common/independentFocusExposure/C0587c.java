package com.android.common.independentFocusExposure;

class C0587c implements Runnable {
    final /* synthetic */ C0586b KX;

    private C0587c(C0586b c0586b) {
        this.KX = c0586b;
    }

    public void run() {
        this.KX.Kr.sendEmptyMessageDelayed(101, 0);
    }
}
