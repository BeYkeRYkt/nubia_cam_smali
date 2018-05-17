package com.android.slowshutter;

class C1097d extends Thread {
    private int bcp = 0;
    private float bcq = -1.0f;
    private boolean bcr = true;
    private long bcs = 0;
    final /* synthetic */ C1095b bct;

    public C1097d(C1095b c1095b, float f, int i) {
        this.bct = c1095b;
        this.bcq = f;
        this.bcp = i;
    }

    public void btz() {
        this.bcr = false;
        synchronized (this) {
            notify();
        }
    }

    public synchronized void start() {
        this.bcs = System.currentTimeMillis();
        super.start();
    }

    private long bty(float f, int i) {
        if (f > -1.0f) {
            return (long) (1000.0f * f);
        }
        if (i > 0) {
            return (long) (i * 1000);
        }
        return 0;
    }

    public void run() {
        long bty = bty(this.bcq, this.bcp);
        if (bty >= 1000) {
            while (System.currentTimeMillis() - this.bcs < bty) {
                if (this.bcr) {
                    if (this.bct.bce) {
                        break;
                    }
                    this.bct.bcn.obtainMessage(1, Integer.valueOf((int) ((((double) (System.currentTimeMillis() - this.bcs)) / ((double) bty)) * 100.0d))).sendToTarget();
                    try {
                        synchronized (this) {
                            wait(100);
                        }
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                } else {
                    return;
                }
            }
            if (!this.bct.bce) {
                this.bct.bcn.obtainMessage(1, Integer.valueOf(100)).sendToTarget();
            }
        }
    }
}
