package com.loc;

import android.os.HandlerThread;

class C1269n extends HandlerThread {
    final /* synthetic */ af bdn;

    C1269n(af afVar, String str) {
        this.bdn = afVar;
        super(str);
    }

    public void onLooperPrepared() {
        try {
            synchronized (this.bdn.beY) {
                if (af.f195a) {
                    this.bdn.beX = new C1247S(this.bdn);
                    this.bdn.beO.addGpsStatusListener(this.bdn.beX);
                    this.bdn.beO.requestLocationUpdates("passive", 1000, (float) af.f197d, this.bdn.bfa);
                }
            }
        } catch (Throwable th) {
            bx.bBw(th, "CollectorManager", "requestLocationUpdates-onLooperPrepared");
        }
    }

    public void run() {
        try {
            super.run();
        } catch (Throwable th) {
            bx.bBw(th, "CollectorManager", "requestLocationUpdates-run");
        } finally {
            if (!(this.bdn.beX == null || this.bdn.beO == null)) {
                this.bdn.beO.removeGpsStatusListener(this.bdn.beX);
                this.bdn.beO.removeUpdates(this.bdn.bfa);
                this.bdn.beX = null;
            }
            quit();
        }
    }
}
