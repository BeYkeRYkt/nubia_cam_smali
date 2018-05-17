package com.android.common.appService;

final class ax implements Runnable {
    final /* synthetic */ C0305G Vg;
    final /* synthetic */ C0295H Vh;
    final /* synthetic */ int Vi;
    final /* synthetic */ int Vj;
    final /* synthetic */ int Vk;
    final /* synthetic */ int Vl;
    final /* synthetic */ int Vm;
    final /* synthetic */ int Vn;
    final /* synthetic */ int Vo;
    final /* synthetic */ int Vp;

    ax(C0305G c0305g, C0295H c0295h, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.Vg = c0305g;
        this.Vh = c0295h;
        this.Vi = i;
        this.Vj = i2;
        this.Vk = i3;
        this.Vl = i4;
        this.Vm = i5;
        this.Vn = i6;
        this.Vo = i7;
        this.Vp = i8;
    }

    public void run() {
        if (this.Vg.To.contains(this.Vh)) {
            this.Vh.ba(this.Vg, this.Vi, this.Vj, this.Vk, this.Vl, this.Vm, this.Vn, this.Vo, this.Vp);
        }
    }
}
