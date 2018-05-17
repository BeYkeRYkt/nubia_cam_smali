package com.android.video;

class C1162o extends Thread {
    final /* synthetic */ C1161n aRp;

    public C1162o(C1161n c1161n) {
        this.aRp = c1161n;
        super("Stop Video");
    }

    public void run() {
        this.aRp.aRj.bgB(false);
    }
}
