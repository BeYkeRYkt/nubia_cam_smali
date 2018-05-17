package com.android.video;

final class C1165s implements Runnable {
    final /* synthetic */ C1152e aRv;
    final /* synthetic */ C1154g aRw;

    C1165s(C1152e c1152e, C1154g c1154g) {
        this.aRv = c1152e;
        this.aRw = c1154g;
    }

    public void run() {
        if (this.aRv.aPZ != null) {
            this.aRv.aPZ.bgU(this.aRw);
        }
    }
}
