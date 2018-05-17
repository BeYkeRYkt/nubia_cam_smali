package com.android.common.p016a;

import android.graphics.SurfaceTexture;
import android.os.ConditionVariable;
import android.os.Looper;
import com.p010a.C0090a;

class C0294k extends Thread {
    private Looper ai;
    private ConditionVariable aj = new ConditionVariable();
    final /* synthetic */ C0290f ak;

    public C0294k(C0290f c0290f) {
        this.ak = c0290f;
        super("MonitorCameraFrameThread");
        this.aj.close();
    }

    public void run() {
        C0090a.bvo("RenderThread", "MonitorCameraFrameThread run");
        Looper.prepare();
        this.ai = Looper.myLooper();
        this.ak.f60C = new SurfaceTexture(this.ak.f61D);
        this.aj.open();
        Looper.loop();
        C0090a.bvo("RenderThread", "MonitorCameraFrameThread quit");
    }

    public void aY() {
        this.aj.block();
    }

    public void quit() {
        this.ai.quit();
    }
}
