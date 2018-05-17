package com.android.common.independentFocusExposure;

class C0593i implements Runnable {
    final /* synthetic */ C0592h Mc;

    private C0593i(C0592h c0592h) {
        this.Mc = c0592h;
    }

    public void run() {
        if (!this.Mc.LB) {
            this.Mc.LY.setVisibility(0);
        }
        this.Mc.Ly.sendEmptyMessageDelayed(101, 0);
    }
}
