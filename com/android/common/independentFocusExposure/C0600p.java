package com.android.common.independentFocusExposure;

class C0600p implements Runnable {
    final /* synthetic */ C0598n Nx;

    private C0600p(C0598n c0598n) {
        this.Nx = c0598n;
    }

    public void run() {
        this.Nx.MD.sendEmptyMessageDelayed(101, 0);
    }
}
