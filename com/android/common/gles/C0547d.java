package com.android.common.gles;

public class C0547d extends C0544a {
    public C0547d(int i, int i2) {
        super(0);
        DR(i, i2);
        this.mState = 0;
    }

    public void Eb(C0550g c0550g) {
        this.FV = c0550g.Et().Ei();
        c0550g.Eu(this, 6408, 5121);
        c0550g.Ev(this);
        this.mState = 1;
        DQ(c0550g);
    }

    public void Ed(int i, int i2) {
        DR(i, i2);
        if (this.mState == 1) {
            this.FR.Eu(this, 6408, 5121);
            this.FR.Ev(this);
        }
    }

    public int DJ() {
        return 3553;
    }

    public void Ec() {
        this.FR.Et().Ej(1, new int[]{this.FV}, 0);
    }

    public boolean DO() {
        return true;
    }
}
