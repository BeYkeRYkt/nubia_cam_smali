package com.android.common.appService;

final class ay implements Runnable {
    final /* synthetic */ C0305G Vq;
    final /* synthetic */ C0295H Vr;
    final /* synthetic */ int Vs;
    final /* synthetic */ int Vt;
    final /* synthetic */ int Vu;
    final /* synthetic */ int Vv;

    ay(C0305G c0305g, C0295H c0295h, int i, int i2, int i3, int i4) {
        this.Vq = c0305g;
        this.Vr = c0295h;
        this.Vs = i;
        this.Vt = i2;
        this.Vu = i3;
        this.Vv = i4;
    }

    public void run() {
        if (this.Vq.To.contains(this.Vr)) {
            this.Vr.bb(this.Vs, this.Vt, this.Vu, this.Vv);
        }
    }
}
