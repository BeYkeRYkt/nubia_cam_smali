package com.loc;

class C1262g implements Runnable {
    final /* synthetic */ bR bdg;

    C1262g(bR bRVar) {
        this.bdg = bRVar;
    }

    public void run() {
        try {
            this.bdg.bit.bxt(this.bdg.bir);
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationManager$GPSTask", "run");
        }
    }
}
