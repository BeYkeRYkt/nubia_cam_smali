package com.android.p037f;

import com.p010a.C0090a;

class C0853h implements C0848c {
    final /* synthetic */ C0852g baq;

    C0853h(C0852g c0852g) {
        this.baq = c0852g;
    }

    public void bra() {
        if (this.baq.adC) {
            C0090a.bvj("Photo3DMemberFragment", "onTaskStart mIsPaused " + this.baq.adC);
        }
        this.baq.St(true);
        this.baq.alG();
    }

    public void bqZ() {
        if (this.baq.adC) {
            C0090a.bvj("Photo3DMemberFragment", "onTaskEnd mIsPaused " + this.baq.adC);
        }
        this.baq.St(false);
        this.baq.alF();
    }
}
