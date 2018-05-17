package com.android.common.p034q;

import android.hardware.Camera.Size;
import android.os.Handler;
import com.android.common.CameraBufferManager;

public class C0696a extends Thread {
    private CameraBufferManager afG = null;
    private int afH = -1;
    private Handler afI = null;
    private boolean afJ = false;
    private Size afK;
    private int afL = 10;

    public C0696a(CameraBufferManager cameraBufferManager, Handler handler, Size size) {
        this.afG = cameraBufferManager;
        this.afI = handler;
        this.afL = 10;
        this.afK = size;
        this.afH = -1;
        start();
    }

    public void run() {
        while (this.afL != 0) {
            if (this.afL == 1) {
                this.afL = 0;
                this.afH = -2;
                this.afJ = true;
            }
            this.afG.getSlowShuttleData(this.afH, this.afK.width, this.afK.height);
        }
        if (this.afJ) {
            this.afI.sendEmptyMessage(69);
        }
    }

    public void anc() {
        synchronized (this) {
            this.afL = 1;
        }
    }

    public void and() {
        synchronized (this) {
            this.afL = 0;
            this.afG.setStopWorkFlag(true);
            this.afJ = false;
        }
        try {
            join();
        } catch (InterruptedException e) {
        }
        this.afL = 10;
    }
}
