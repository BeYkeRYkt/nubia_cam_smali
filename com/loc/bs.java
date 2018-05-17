package com.loc;

import java.net.ServerSocket;

class bs extends Thread {
    final /* synthetic */ cv bhn;

    bs(cv cvVar) {
        this.bhn = cvVar;
    }

    public void run() {
        try {
            if (!this.bhn.bkP) {
                this.bhn.m536j();
            }
            if (!this.bhn.blq) {
                this.bhn.blq = true;
                this.bhn.blp = new ServerSocket(43689);
            }
            while (this.bhn.blq) {
                this.bhn.blr = this.bhn.blp.accept();
                this.bhn.bGf(this.bhn.blr);
            }
        } catch (Throwable th) {
            bx.bBw(th, "APSServiceCore", "run");
        }
        super.run();
    }
}
