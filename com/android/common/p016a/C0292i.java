package com.android.common.p016a;

import android.opengl.GLES20;
import android.os.Debug;
import android.os.Looper;
import com.p010a.C0090a;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;

class C0292i {
    private Object ab;
    private ByteBuffer ac;
    private ArrayList ad;
    private C0293j ae;
    private boolean af;
    final /* synthetic */ C0290f ag;

    private C0292i(C0290f c0290f) {
        this.ag = c0290f;
        this.ab = new Object();
        this.af = false;
        this.ad = new ArrayList();
        this.ae = new C0293j(this, Looper.getMainLooper());
    }

    private void aP(C0291h c0291h) {
        if (c0291h != null) {
            synchronized (this.ab) {
                if (!this.af && this.ac == null) {
                    this.af = true;
                }
                if (!this.ad.contains(c0291h)) {
                    this.ad.add(c0291h);
                }
            }
        }
    }

    private boolean aO(C0291h c0291h) {
        if (c0291h == null) {
            C0090a.m1e("RenderThread", "listener is null!");
            return false;
        }
        boolean remove;
        synchronized (this.ab) {
            remove = this.ad.remove(c0291h);
        }
        return remove;
    }

    private void aN() {
        try {
            if (this.af) {
                this.ac = ByteBuffer.allocateDirect((this.ag.f68K.width() * this.ag.f68K.height()) * 4).order(ByteOrder.nativeOrder());
                this.ac.position(0);
                this.ac.rewind();
                GLES20.glReadPixels(this.ag.f68K.left, this.ag.f68K.top, this.ag.f68K.width(), this.ag.f68K.height(), 6408, 5121, this.ac);
                this.af = false;
                this.ae.sendEmptyMessage(0);
            }
        } catch (OutOfMemoryError e) {
            try {
                Debug.dumpHprofData("/sdcard/camera_" + System.currentTimeMillis() + ".hprof");
            } catch (IOException e2) {
                C0090a.m1e("RenderThread", "dump hprof fail " + e2.getMessage());
            }
            throw e;
        }
    }
}
