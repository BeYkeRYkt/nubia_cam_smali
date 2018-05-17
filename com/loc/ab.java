package com.loc;

import android.os.HandlerThread;

class ab extends HandlerThread {
    final /* synthetic */ aJ beC;

    public ab(aJ aJVar, String str) {
        this.beC = aJVar;
        super(str);
    }

    protected void onLooperPrepared() {
        try {
            super.onLooperPrepared();
            synchronized (this.beC.bgc) {
                if (!this.beC.bgb) {
                    this.beC.bzz();
                }
            }
        } catch (Throwable th) {
        }
    }

    public void run() {
        try {
            super.run();
        } catch (Throwable th) {
        }
    }
}
