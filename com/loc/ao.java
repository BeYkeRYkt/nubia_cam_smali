package com.loc;

import java.util.TimerTask;

class ao extends TimerTask {
    final /* synthetic */ at bfl;

    ao(at atVar) {
        this.bfl = atVar;
    }

    public void run() {
        try {
            if (at.f236d) {
                this.bfl.byC();
            }
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "onReceive run");
        }
    }
}
