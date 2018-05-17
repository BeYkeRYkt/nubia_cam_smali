package com.android.normal;

class C1007d extends Thread {
    private int aCt = 0;
    private float aCu = -1.0f;
    private boolean aCv = true;
    private long aCw = 0;
    final /* synthetic */ C1005b aCx;

    public C1007d(C1005b c1005b, float f, int i) {
        this.aCx = c1005b;
        this.aCu = f;
        this.aCt = i;
    }

    public void aSP() {
        this.aCv = false;
        synchronized (this) {
            notify();
        }
    }

    public synchronized void start() {
        this.aCw = System.currentTimeMillis();
        super.start();
    }

    private long aSO(float f, int i) {
        if (f > -1.0f) {
            return (long) (1000.0f * f);
        }
        if (i > 0) {
            return (long) (i * 1000);
        }
        return 0;
    }

    public void run() {
        long aSO = aSO(this.aCu, this.aCt);
        if (aSO >= 1000) {
            while (System.currentTimeMillis() - this.aCw < aSO) {
                if (this.aCv) {
                    if (this.aCx.aCm) {
                        break;
                    }
                    this.aCx.aCr.obtainMessage(1, Integer.valueOf((int) ((((double) (System.currentTimeMillis() - this.aCw)) / ((double) aSO)) * 100.0d))).sendToTarget();
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
            if (!this.aCx.aCm) {
                this.aCx.aCr.obtainMessage(1, Integer.valueOf(100)).sendToTarget();
            }
        }
    }
}
