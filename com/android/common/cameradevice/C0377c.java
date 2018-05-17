package com.android.common.cameradevice;

import android.os.ConditionVariable;
import com.p010a.C0090a;

public class C0377c {
    ConditionVariable GW;
    boolean GX;
    String TAG;

    public C0377c() {
        this(true);
    }

    public C0377c(boolean z) {
        this.TAG = "SyncConditionVariable";
        this.GX = true;
        this.GW = new ConditionVariable(z);
        this.GX = z;
    }

    public void Fw() {
        this.GW.block();
    }

    public synchronized void close() {
        while (!this.GX) {
            try {
                C0090a.bvo(this.TAG, "Thread " + Thread.currentThread().getId() + " wait");
                wait();
                C0090a.bvo(this.TAG, "Thread " + Thread.currentThread().getId() + " wake up");
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        this.GW.close();
        this.GX = false;
    }

    public synchronized void Fx() {
        this.GW.open();
        this.GX = true;
        notify();
    }
}
