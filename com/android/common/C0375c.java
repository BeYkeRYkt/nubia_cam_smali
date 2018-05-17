package com.android.common;

import android.os.Handler;
import com.p010a.C0090a;

public class C0375c {
    private C0456d agW = null;
    private Handler agX = new C0266H(this);
    private long agY = 0;
    private boolean agZ = false;
    private long aha = 0;
    private Runnable ahb = new C0267I(this);
    private Thread ahc = null;
    private int ahd = 1;
    private long ahe = 0;
    private long ahf = 0;
    private long mStartTime = 0;

    public C0375c(long j, C0456d c0456d) {
        this.agW = c0456d;
        this.agY = j;
        aon();
    }

    public void start() {
        this.agZ = true;
        this.aha = this.agY;
        this.mStartTime = System.currentTimeMillis();
        if (this.ahc == null) {
            this.ahc = new Thread(this.ahb);
            this.ahc.start();
        }
    }

    public void aok() {
        this.agZ = false;
        this.mStartTime = 0;
        this.ahe = 0;
        this.aha = 0;
        this.ahd = 1;
        synchronized (this.ahb) {
            this.ahb.notify();
        }
        try {
            this.ahc.join();
            this.ahc = null;
        } catch (Throwable e) {
            C0090a.bvi("MyTimer", "finish join error", e);
        }
        this.agX.removeMessages(1);
    }

    public void aom(long j) {
        C0090a.m0d("MyTimer", "setInterval = " + j);
        this.agY = j;
        aon();
    }

    public boolean aol() {
        return this.agZ;
    }

    private void aon() {
        if (this.agY >= 100 && this.agY < 1000) {
            this.ahf = this.agY - 10;
        } else if (this.agY >= 1000) {
            this.ahf = 990;
        }
    }
}
