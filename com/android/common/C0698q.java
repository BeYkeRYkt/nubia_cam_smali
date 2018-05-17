package com.android.common;

public class C0698q extends C0533h {
    private int aib;
    private float aic;

    public C0698q(int i, float f) {
        this.aic = f;
        aqQ(f, i);
        aoF(i, 0.0f);
    }

    private void aqQ(float f, int i) {
        this.aib = (int) ((f / (1.0f - f)) * ((float) (i - 1)));
        if (this.aib == 0) {
            this.aib = 1;
        }
    }

    private boolean aqP(float f, float f2, float f3) {
        if (f3 < Math.abs(f - f2)) {
            return true;
        }
        return false;
    }

    public float aoD(float f) {
        if (aqP(((Float) this.ahm.getLast()).floatValue(), ((Float) this.ahm.get(this.ahm.size() - 2)).floatValue(), 180.0f)) {
            aoI(f);
        }
        float f2 = 0.0f;
        for (Float floatValue : this.ahm) {
            f2 = floatValue.floatValue() + f2;
        }
        return ((((Float) this.ahm.getLast()).floatValue() * ((float) (this.aib - 1))) + f2) / ((float) ((this.ahm.size() + this.aib) - 1));
    }
}
