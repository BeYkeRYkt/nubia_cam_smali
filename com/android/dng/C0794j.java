package com.android.dng;

import com.p010a.C0090a;

class C0794j extends Thread {
    private boolean aNe;
    private long aNf;
    final /* synthetic */ C0792h aNg;

    private C0794j(C0792h c0792h) {
        this.aNg = c0792h;
        this.aNe = true;
        this.aNf = 0;
    }

    public void bdH() {
        this.aNe = false;
        synchronized (this) {
            notify();
        }
    }

    public synchronized void start() {
        this.aNf = System.currentTimeMillis();
        super.start();
    }

    public void run() {
        long j;
        String tB = this.aNg.adA.SY().tB();
        C0090a.bvo("DngFragment", "time = " + tB);
        if ("-1".equals(tB)) {
            j = 0;
        } else {
            j = (long) (Float.parseFloat(tB) * 1000.0f);
        }
        if (j >= 1000) {
            while (System.currentTimeMillis() - this.aNf < j) {
                if (this.aNe) {
                    if (this.aNg.aMU) {
                        break;
                    }
                    this.aNg.aNc.obtainMessage(1, Integer.valueOf((int) ((((double) (System.currentTimeMillis() - this.aNf)) / ((double) j)) * 100.0d))).sendToTarget();
                    synchronized (this) {
                        wait(100);
                        try {
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                } else {
                    return;
                }
            }
            if (!this.aNg.aMU) {
                this.aNg.aNc.obtainMessage(1, Integer.valueOf(100)).sendToTarget();
            }
        }
    }
}
