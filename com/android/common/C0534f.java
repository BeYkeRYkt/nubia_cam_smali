package com.android.common;

public class C0534f extends C0533h {
    private float ahg = 0.0f;
    private float ahh;
    private int ahi;
    private int ahj;
    private float ahk = 0.0f;
    private float ahl;

    public C0534f(int i, float f, float f2, int i2) {
        this.ahi = i;
        this.ahl = f;
        this.ahh = f2;
        this.ahj = i2;
        aoF(2, 0.0f);
    }

    private boolean aoE(float f, float f2, float f3) {
        if (((int) (Math.abs(f) / f3)) != ((int) (Math.abs(f2) / f3))) {
            return true;
        }
        return false;
    }

    public float aoD(float f) {
        if (0.0f == this.ahg) {
            float floatValue = ((Float) this.ahm.get(this.ahm.size() - 2)).floatValue();
            float floatValue2 = ((Float) this.ahm.getLast()).floatValue();
            if (aoE(floatValue, floatValue2, (float) this.ahj)) {
                this.ahg = 1.0f;
                this.ahk = floatValue2;
            }
        }
        if (0.0f == this.ahg) {
            return ((Float) this.ahm.getLast()).floatValue();
        }
        if (this.ahg <= 0.0f || this.ahg >= ((float) this.ahi)) {
            this.ahg = 0.0f;
            return ((Float) this.ahm.getLast()).floatValue();
        }
        this.ahg += 1.0f;
        return this.ahk;
    }
}
