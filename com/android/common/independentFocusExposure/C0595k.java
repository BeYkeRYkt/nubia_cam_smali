package com.android.common.independentFocusExposure;

class C0595k implements Runnable {
    final /* synthetic */ C0592h Me;

    private C0595k(C0592h c0592h) {
        this.Me = c0592h;
    }

    public void run() {
        this.Me.Oh(this.Me.LU, this.Me.LV);
        this.Me.Ly.sendEmptyMessageDelayed(101, 0);
    }
}
