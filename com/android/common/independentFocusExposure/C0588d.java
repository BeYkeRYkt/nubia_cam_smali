package com.android.common.independentFocusExposure;

class C0588d implements Runnable {
    final /* synthetic */ C0586b KY;

    private C0588d(C0586b c0586b) {
        this.KY = c0586b;
    }

    public void run() {
        this.KY.Kr.sendEmptyMessageDelayed(102, 0);
    }
}
