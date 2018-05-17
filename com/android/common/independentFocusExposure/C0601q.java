package com.android.common.independentFocusExposure;

class C0601q implements Runnable {
    final /* synthetic */ C0598n Ny;

    private C0601q(C0598n c0598n) {
        this.Ny = c0598n;
    }

    public void run() {
        this.Ny.MD.sendEmptyMessageDelayed(102, 0);
    }
}
