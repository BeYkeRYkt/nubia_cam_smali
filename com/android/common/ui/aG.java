package com.android.common.ui;

final class aG implements Runnable {
    final /* synthetic */ NubiaProgressWheel xL;

    aG(NubiaProgressWheel nubiaProgressWheel) {
        this.xL = nubiaProgressWheel;
    }

    public void run() {
        while (this.xL.kr) {
            try {
                Thread.sleep(this.xL.kD);
                if (this.xL.kr) {
                    NubiaProgressWheel nubiaProgressWheel = this.xL;
                    nubiaProgressWheel.ku = nubiaProgressWheel.ku + this.xL.kx;
                    nubiaProgressWheel = this.xL;
                    nubiaProgressWheel.kC = nubiaProgressWheel.kC + 0.30000001192092896d;
                    if (this.xL.ku >= 60.0d || this.xL.ku <= 0.0d) {
                        if (this.xL.kx == 0.30000001192092896d) {
                            this.xL.kx = -0.30000001192092896d;
                        } else {
                            this.xL.kx = 0.30000001192092896d;
                        }
                    }
                    synchronized (this.xL.kt) {
                        if (!this.xL.kt.booleanValue()) {
                            this.xL.postInvalidate();
                            this.xL.kt = Boolean.valueOf(true);
                        }
                    }
                } else {
                    continue;
                }
            } catch (Exception e) {
            }
        }
    }
}
