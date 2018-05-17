package com.android.common.image3d;

public class C0576f {
    private int EY = 0;
    private float EZ = 0.0f;
    private float Fa = 0.0f;
    private float Fb = 0.0f;
    private float Fc = 0.0f;

    public float De() {
        float f = 0.0f;
        switch (this.EY) {
            case 1:
                f = this.Fc;
                break;
            case 2:
                f = this.Fa;
                break;
            case 3:
                f = this.EZ;
                break;
            case 4:
                f = this.Fb;
                break;
        }
        return Math.abs(f);
    }

    public int Dd() {
        return this.EY;
    }

    public void Df(float f, float f2) {
        if (f >= this.EZ) {
            this.EZ = f;
        }
        if (f <= this.Fb) {
            this.Fb = f;
        }
        if (f2 >= this.Fa) {
            this.Fa = f2;
        }
        if (f2 <= this.Fc) {
            this.Fc = f2;
        }
        Dh();
    }

    private void Dh() {
        float abs = Math.abs(this.Fb);
        float abs2 = Math.abs(this.Fc);
        float f = this.Fa;
        int i = 2;
        if (f < this.EZ) {
            i = 3;
            f = this.EZ;
        }
        if (f < abs2) {
            i = 1;
        } else {
            abs2 = f;
        }
        if (abs2 < abs) {
            i = 4;
        }
        this.EY = i;
    }

    public void Dg() {
        this.EY = 0;
        this.EZ = 0.0f;
        this.Fb = 0.0f;
        this.Fa = 0.0f;
        this.Fc = 0.0f;
    }
}
