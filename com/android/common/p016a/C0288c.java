package com.android.common.p016a;

import android.graphics.SurfaceTexture;
import android.graphics.SurfaceTexture.OnFrameAvailableListener;

public class C0288c implements OnFrameAvailableListener {
    private int f43l = 0;
    private long f44m = 0;
    private boolean f45n = false;
    private long f46o = 0;
    private C0144d f47p;
    private boolean f48q = false;
    private final C0287a f49r;

    public C0288c(C0287a c0287a) {
        this.f49r = c0287a;
    }

    public void m48K(C0144d c0144d) {
        this.f47p = c0144d;
    }

    public void m47J(boolean z) {
        this.f48q = z;
        if (!z) {
            this.f46o = 0;
            this.f44m = 0;
        }
    }

    public long m46I() {
        return this.f44m;
    }

    public void m45H() {
        this.f45n = false;
        this.f43l = 0;
    }

    public boolean m44G() {
        return this.f45n;
    }

    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f45n = true;
        if (this.f47p != null) {
            this.f47p.mo321L();
            this.f47p = null;
        }
        this.f49r.m35l();
        if (this.f48q) {
            long currentTimeMillis = System.currentTimeMillis();
            if (this.f46o > 0) {
                this.f44m = ((currentTimeMillis - this.f46o) + this.f44m) / 2;
            }
            this.f46o = currentTimeMillis;
        }
    }
}
