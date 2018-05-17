package com.android.pretty;

import com.android.common.setting.C0716s;

class C1076f {
    final float[] atl;
    final float[] atm;
    final float[] atn;
    final /* synthetic */ C1075e ato;

    private C1076f(C1075e c1075e) {
        this.ato = c1075e;
        this.atl = C0716s.Ar;
        this.atn = C0716s.As;
        this.atm = C0716s.At;
    }

    public int aHh() {
        return this.atl.length - 1;
    }

    public int aHm() {
        return (100 / aHh()) * aHh();
    }

    public float aHg(int i) {
        return this.atl[i];
    }

    public float aHk(int i) {
        return this.atm[i];
    }

    public float aHl(int i) {
        return this.atn[i];
    }

    public float aHj() {
        return this.atl[0];
    }

    public float aHi() {
        return this.atl[this.atl.length - 1];
    }

    private int aHf(float f) {
        for (int i = 0; i < this.atl.length; i++) {
            if (Math.abs(this.atl[i] - f) < 0.01f) {
                return i;
            }
        }
        return 0;
    }
}
