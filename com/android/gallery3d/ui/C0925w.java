package com.android.gallery3d.ui;

final class C0925w implements Runnable {
    final /* synthetic */ C0908f aru;

    C0925w(C0908f c0908f) {
        this.aru = c0908f;
    }

    public void run() {
        if (this.aru.aqL.computeScrollOffset()) {
            this.aru.aqJ.aEJ(this.aru.aqL.getCurrX(), this.aru.aqL.getCurrY());
            this.aru.aqI.removeCallbacks(this);
            this.aru.aqI.post(this);
            return;
        }
        this.aru.aqJ.aEI();
    }
}
