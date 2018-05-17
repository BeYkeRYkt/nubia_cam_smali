package com.android.common.gles;

import com.p010a.C0090a;

public abstract class C0544a {
    protected C0550g FR;
    float[] FS;
    private boolean FT;
    protected int FU;
    protected int FV;
    float[] FW;
    protected int FX;
    protected int FY;
    protected int FZ;
    protected int mState;

    public abstract int DJ();

    public abstract boolean DO();

    protected C0544a(C0550g c0550g, int i, int i2) {
        this.FV = -1;
        this.FZ = -1;
        this.FU = -1;
        this.FW = new float[]{-1.0f, 1.0f, -1.0f, 1.0f};
        this.FS = new float[]{-1.0f, 1.0f, -1.0f, 1.0f};
        this.FR = null;
        this.FT = true;
        DQ(c0550g);
        this.FV = i;
        this.mState = i2;
    }

    protected C0544a(int i) {
        this(null, i, 0);
    }

    protected void DQ(C0550g c0550g) {
        this.FR = c0550g;
    }

    public void DR(int i, int i2) {
        this.FZ = i;
        this.FU = i2;
        this.FY = this.FZ;
        this.FX = this.FU;
        if (this.FY > 4096 || this.FX > 4096) {
            C0090a.bvk("BasicTexture", String.format("texture is too large: %d x %d", new Object[]{Integer.valueOf(this.FY), Integer.valueOf(this.FX)}), new Exception());
        }
    }

    public void DS(int i, int i2) {
        float f = ((float) i) / ((float) i2);
        float f2 = ((float) this.FY) / f;
        if (f2 > ((float) this.FX)) {
            f2 = (float) this.FX;
        }
        this.FW[0] = ((((float) this.FY) - (f * f2)) / ((float) this.FY)) - 1.0f;
        this.FW[1] = 0.0f - this.FW[0];
        this.FW[2] = ((((float) this.FX) - f2) / ((float) this.FX)) - 1.0f;
        this.FW[3] = 0.0f - this.FW[2];
    }

    public int DH() {
        return this.FV;
    }

    public int DM() {
        return this.FZ;
    }

    public int DG() {
        return this.FU;
    }

    public int DL() {
        return this.FY;
    }

    public int DK() {
        return this.FX;
    }

    public boolean DN() {
        return this.mState == 1;
    }

    public float[] DI() {
        if (this.FT) {
            return this.FS;
        }
        return this.FW;
    }

    public void DP(boolean z) {
        this.FT = z;
    }
}
