package com.android.common.ui;

import android.view.SurfaceHolder;
import com.p010a.C0090a;

class C0762o extends Thread {
    private boolean mc = true;
    private SurfaceHolder md;
    final /* synthetic */ CameraSelectButton me;

    public C0762o(CameraSelectButton cameraSelectButton, SurfaceHolder surfaceHolder) {
        this.me = cameraSelectButton;
        super("UpdateThread");
        this.md = surfaceHolder;
    }

    public synchronized void jM() {
        notify();
    }

    public synchronized void quit() {
        this.mc = false;
        notify();
    }

    public void run() {
        C0090a.bvo("CameraSelectButton", "UpdateThread start " + getId());
        while (this.mc) {
            synchronized (this) {
                if (!this.me.jn(this.md)) {
                    try {
                        this.me.lJ.sendEmptyMessage(0);
                        wait();
                    } catch (InterruptedException e) {
                        C0090a.bvo("CameraSelectButton", "get interrupted exception");
                    }
                }
            }
            if (this.mc) {
                try {
                    C0762o.sleep(30);
                } catch (InterruptedException e2) {
                    C0090a.bvo("CameraSelectButton", "get interrupted exception");
                }
            }
        }
        C0090a.bvo("CameraSelectButton", "UpdateThread exit " + getId());
        this.md = null;
    }
}
