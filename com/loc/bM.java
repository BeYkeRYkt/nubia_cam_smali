package com.loc;

import android.os.HandlerThread;
import java.util.Timer;

class bM extends HandlerThread {
    final /* synthetic */ at bhO;

    bM(at atVar, String str) {
        this.bhO = atVar;
        super(str);
    }

    public void onLooperPrepared() {
        try {
            synchronized (this.bhO.bfI) {
                this.bhO.bfE = new Timer();
                this.bhO.bfz = new cp(this.bhO);
                if (this.bhO.bfL != null) {
                    this.bhO.bfL.bzB(this.bhO.bfz);
                }
                this.bhO.bfA = new cE(this.bhO);
                try {
                    this.bhO.byD(this.bhO.bfA);
                } catch (Exception e) {
                }
            }
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "startInnerListen-onLooperPrepared");
        }
    }

    public void run() {
        try {
            super.run();
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "startInnerListen-run");
        } finally {
            if (this.bhO.bfL != null) {
                this.bhO.bfL.bzB(null);
            }
            if (this.bhO.bfA != null) {
                this.bhO.byE(this.bhO.bfA);
                this.bhO.bfA = null;
            }
            quit();
        }
    }
}
