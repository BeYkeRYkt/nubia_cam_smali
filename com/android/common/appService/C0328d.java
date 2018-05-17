package com.android.common.appService;

import com.android.common.ActivityBase;
import com.p010a.C0090a;

public class C0328d extends Thread {
    private C0329e OL = null;
    private boolean OM = false;
    private boolean ON = false;

    public C0328d(C0329e c0329e) {
        this.OL = c0329e;
    }

    public synchronized void start() {
        C0090a.bvo("ParametersThread", "start tid = " + getId());
        if (this.OL != null) {
            super.start();
        }
    }

    public void SJ() {
        if (!this.OM) {
            this.OM = true;
            synchronized (this) {
                notify();
            }
            try {
                join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    public void SL() {
        synchronized (this) {
            notify();
        }
    }

    public void SK() {
        this.ON = true;
        synchronized (this) {
            notify();
        }
    }

    public void run() {
        while (!this.OM) {
            synchronized (this) {
                if (this.ON) {
                    ((ActivityBase) this.OL.SN()).arI();
                    this.ON = false;
                }
                try {
                    wait();
                    if (this.OM) {
                    }
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                ((ActivityBase) this.OL.SN()).arI();
            }
        }
        C0090a.bvo("ParametersThread", "end tid = " + getId());
    }
}
