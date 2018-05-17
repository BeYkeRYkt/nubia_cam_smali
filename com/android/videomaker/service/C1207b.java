package com.android.videomaker.service;

import android.content.Intent;
import com.p010a.C0090a;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

class C1207b extends Thread {
    private final BlockingQueue axC = new LinkedBlockingQueue();
    final /* synthetic */ MakerService axD;

    public C1207b(MakerService makerService, String str) {
        this.axD = makerService;
        super("IntentProcessor-" + str);
    }

    public void run() {
        while (true) {
            try {
                this.axD.aLO((Intent) this.axC.take());
            } catch (InterruptedException e) {
                C0090a.m1e("MakerService", "Terminating " + getName());
                return;
            }
        }
    }

    public void aLZ(Intent intent) {
        if (isAlive()) {
            this.axC.add(intent);
        } else {
            C0090a.m1e("MakerService", getName() + " should be started before submitting tasks.");
        }
    }

    public void quit() {
        int size = this.axC.size();
        if (size > 0) {
            C0090a.m1e("MakerService", "Thread queue is not empty. Size: " + size);
            this.axC.clear();
        }
        interrupt();
    }
}
