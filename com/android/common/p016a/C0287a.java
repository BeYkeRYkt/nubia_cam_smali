package com.android.common.p016a;

import android.graphics.Rect;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import com.android.common.appService.C0295H;
import com.android.common.appService.C0329e;
import com.android.common.cameradevice.C0382m;
import com.android.common.p027g.C0536b;
import com.android.common.p027g.C0537c;
import com.p010a.C0090a;

public class C0287a {
    private C0288c f32a;
    private SurfaceHolder f33b;
    private SurfaceView f34c;
    private boolean f35d = false;
    private C0295H f36e = new C0296l(this);
    private boolean f37f = false;
    private C0537c f38g = null;
    private Rect f39h;
    private C0126g f40i;
    private C0290f f41j;
    private C0278b f42k;

    public C0287a(C0329e c0329e, C0278b c0278b, SurfaceView surfaceView, C0537c c0537c) {
        this.f34c = surfaceView;
        this.f42k = c0278b;
        this.f40i = new C0536b(c0329e);
        this.f38g = c0537c;
        m18b();
        this.f32a = new C0288c(this);
        m19f(true);
    }

    public void m38p(int i) {
        this.f41j.m54R(i);
    }

    public int m27c() {
        return this.f41j.m55S();
    }

    public void m26a(C0126g c0126g) {
        this.f41j.m56T(c0126g);
    }

    public void m32i(C0126g c0126g) {
        this.f41j.m57U(c0126g);
    }

    public void m40r(boolean z) {
        this.f37f = z;
        this.f41j.m58V(z);
    }

    public void m42t() {
        this.f41j.m59W();
    }

    public void m41s(int i) {
        this.f41j.m60X(i);
    }

    public void m43u() {
        this.f41j.m61Y();
    }

    public synchronized void m31h() {
        this.f41j.m62Z();
    }

    public synchronized void m36n() {
        this.f41j.aa();
    }

    public synchronized void m35l() {
        if (this.f41j.isAlive()) {
            this.f41j.ab();
        }
    }

    public void m34k(C0291h c0291h) {
        this.f41j.ac(c0291h);
    }

    public boolean m33j(C0291h c0291h) {
        return this.f41j.ad(c0291h);
    }

    public boolean m37o(C0382m c0382m, boolean z) {
        if (this.f33b == null) {
            C0090a.m1e("PreviewTargetManager", "mCameraSurfaceHolder is " + this.f33b);
            return false;
        }
        c0382m.II(null);
        c0382m.IJ(null);
        if (z) {
            if (this.f41j.ae() == null) {
                if (!this.f41j.isAlive()) {
                    C0090a.bvo("PreviewTargetManager", "start RenderThread");
                    this.f41j.af(this.f33b);
                }
                this.f41j.ag();
            }
            this.f41j.ae().setOnFrameAvailableListener(this.f32a);
            c0382m.II(this.f41j.ae());
        } else {
            if (this.f41j.ae() != null) {
                C0090a.bvo("PreviewTargetManager", "finish RenderThread");
                this.f41j.ae().setOnFrameAvailableListener(null);
                m20m(false);
            }
            c0382m.IJ(this.f33b);
        }
        return true;
    }

    public boolean m30g() {
        return this.f35d;
    }

    public C0295H m28d() {
        return this.f36e;
    }

    public C0288c m29e() {
        return this.f32a;
    }

    public void m39q(boolean z) {
        this.f41j.ah(z);
    }

    private void m18b() {
        this.f34c.getHolder().addCallback(new C0297m(this));
    }

    private void m20m(boolean z) {
        this.f41j.ai();
        m19f(z);
    }

    private void m19f(boolean z) {
        this.f41j = new C0290f(this.f39h, this.f38g, this.f37f, z);
        this.f41j.m56T(this.f40i);
    }
}
