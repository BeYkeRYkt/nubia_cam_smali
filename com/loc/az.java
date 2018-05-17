package com.loc;

import java.util.TimerTask;

class az extends TimerTask {
    final /* synthetic */ int f248a;
    final /* synthetic */ cd bfO;

    az(cd cdVar, int i) {
        this.bfO = cdVar;
        this.f248a = i;
    }

    public void run() {
        Object obj = 1;
        try {
            Thread.currentThread().setPriority(1);
            if (C1253X.m132b() - this.bfO.bjF < 10000) {
                obj = null;
            }
            if (obj != null) {
                if (this.bfO.bEJ()) {
                    this.bfO.bEE(this.f248a);
                } else {
                    this.bfO.bEG();
                }
            }
        } catch (Throwable th) {
            bx.bBw(th, "APS", "timerTaskU run");
        }
    }
}
