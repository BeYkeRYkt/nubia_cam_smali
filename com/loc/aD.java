package com.loc;

class aD implements Runnable {
    final /* synthetic */ bR bfQ;

    aD(bR bRVar) {
        this.bfQ = bRVar;
    }

    public void run() {
        try {
            if (!this.bfQ.m359j() && this.bfQ.biH) {
                try {
                    Thread.sleep(2000);
                } catch (InterruptedException e) {
                }
                return;
            }
            if (this.bfQ.biC) {
                this.bfQ.biC = false;
                this.bfQ.m362m();
            }
            if (this.bfQ.m350a()) {
                this.bfQ.biu = true;
                this.bfQ.m348a(1);
            }
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationManager$NetWorkTask", "run");
        }
    }
}
