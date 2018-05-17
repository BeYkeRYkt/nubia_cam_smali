package com.android.common.ui;

final class bc implements Runnable {
    final /* synthetic */ ZtemtShutterButton ys;
    final /* synthetic */ boolean yt;

    bc(ZtemtShutterButton ztemtShutterButton, boolean z) {
        this.ys = ztemtShutterButton;
        this.yt = z;
    }

    public void run() {
        this.ys.qb(this.yt);
    }
}
