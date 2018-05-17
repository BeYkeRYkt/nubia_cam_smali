package com.android.common.p016a;

import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import com.p010a.C0090a;

final class C0297m implements Callback {
    final /* synthetic */ C0287a am;

    C0297m(C0287a c0287a) {
        this.am = c0287a;
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        C0090a.bvo("PreviewTargetManager", "surfaceDestroyed");
        if (this.am.f42k != null) {
            this.am.f42k.mo420F();
        }
        this.am.f35d = false;
        this.am.f33b = null;
        this.am.m20m(true);
        this.am.f32a.m45H();
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        C0090a.bvo("PreviewTargetManager", "surfaceCreated");
        this.am.f33b = surfaceHolder;
        this.am.f35d = true;
        C0090a.bvo("PreviewTargetManager", "start RenderThread in surfaceCreated");
        this.am.f41j.af(this.am.f33b);
        this.am.f42k.mo419E();
    }

    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        C0090a.bvo("PreviewTargetManager", "surfaceChanged " + i2 + " " + i3);
    }
}
