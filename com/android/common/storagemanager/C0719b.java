package com.android.common.storagemanager;

import android.os.Handler;
import java.util.LinkedList;

public class C0719b {
    private final int aeE;
    private C0720c[] aeF = new C0720c[this.aeE];

    public C0719b(LinkedList linkedList, Handler handler, int i) {
        this.aeE = i;
        for (int i2 = 0; i2 < this.aeE; i2++) {
            this.aeF[i2] = new C0720c(linkedList, handler);
        }
    }

    public void start() {
        for (int i = 0; i < this.aeE; i++) {
            this.aeF[i].start();
        }
    }

    public void stop() {
        for (int i = 0; i < this.aeE; i++) {
            this.aeF[i].alT();
        }
    }
}
