package com.android.common.p034q;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Handler;
import com.android.common.CameraBufferManager;
import com.android.common.custom.C0417I;
import com.p010a.C0090a;

public class C0697b extends Thread {
    private Bitmap afM = null;
    private CameraBufferManager afN = null;
    private Handler afO = null;
    private int[] afP;
    private C0417I afQ;
    private C0417I afR;
    private boolean afS;

    public C0697b(CameraBufferManager cameraBufferManager, Handler handler, C0417I c0417i) {
        this.afN = cameraBufferManager;
        this.afO = handler;
        this.afS = false;
        this.afR = c0417i;
        this.afQ = anf(4);
        start();
    }

    private C0417I anf(int i) {
        C0417I c0417i = new C0417I();
        c0417i.width = this.afR.width / i;
        c0417i.height = this.afR.height / i;
        if (c0417i.width % 2 == 1) {
            c0417i.width--;
        }
        if (c0417i.height % 2 == 1) {
            c0417i.height--;
        }
        return c0417i;
    }

    public void run() {
        while (!this.afS) {
            C0090a.m1e("GetDataThread", "=====start to get previewData");
            this.afP = this.afN.getSlowShuttlePreviewData(4);
            if (this.afP == null) {
                try {
                    C0090a.m1e("GetDataThread", "wq mPreviewData is null sleep");
                    C0697b.sleep(100);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            } else {
                synchronized (this) {
                    this.afM = Bitmap.createBitmap(this.afP, this.afQ.width, this.afQ.height, Config.ARGB_8888);
                    C0090a.m1e("GetDataThread", "=====create preview bitmap done");
                    this.afO.sendMessage(this.afO.obtainMessage(1, this.afM));
                }
                try {
                    C0697b.sleep(40);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public void ane() {
        synchronized (this) {
            this.afS = true;
            this.afO.removeMessages(1);
        }
        try {
            join();
        } catch (InterruptedException e) {
        }
        this.afS = false;
    }
}
