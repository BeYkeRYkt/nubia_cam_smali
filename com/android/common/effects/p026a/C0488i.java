package com.android.common.effects.p026a;

import android.content.Context;
import android.opengl.Matrix;
import com.android.common.effects.C0475a;
import com.android.common.gles.C0544a;
import com.android.common.gles.C0547d;
import com.android.common.gles.C0550g;
import java.nio.FloatBuffer;

public class C0488i extends C0475a {
    private Context bQ;
    float[] bR = new float[16];
    private int bS = 5;
    private C0476A bT;
    private C0547d bU;
    private C0504y bV;
    private C0486g bW;
    private C0547d bX;
    private int bY = 3;

    public C0488i(Context context) {
        this.bQ = context;
        Matrix.setIdentityM(this.bR, 0);
        this.bT = new C0476A(this.bQ);
        this.bW = new C0486g(this.bQ);
        this.bV = new C0504y(this.bQ);
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (36197 == c0544a.DJ()) {
            ef(i3, i4);
            c0550g.Ek();
            c0550g.Ep(this.bX);
            c0550g.En(c0544a, fArr2, 0, 0, this.bX.DM(), this.bX.DG());
            c0550g.Eq();
            c0550g.Eo();
            for (int i5 = 0; i5 < this.bS; i5++) {
                c0550g.Ek();
                c0550g.Ep(this.bU);
                this.bT.dF(fArr, this.bR, floatBuffer, 0, 0, this.bU.DM(), this.bU.DG(), this.bX, c0550g);
                c0550g.Eq();
                c0550g.Eo();
                c0550g.Ek();
                c0550g.Ep(this.bX);
                this.bW.dF(fArr, this.bR, floatBuffer, 0, 0, this.bX.DM(), this.bX.DG(), this.bU, c0550g);
                c0550g.Eq();
                c0550g.Eo();
            }
            c0550g.Ek();
            this.bV.fd(c0544a, fArr2);
            this.bV.dF(fArr, this.bR, floatBuffer, i, i2, i3, i4, this.bX, c0550g);
            c0550g.Eo();
        }
    }

    public void dJ() {
        this.bT.dJ();
        this.bW.dJ();
        this.bV.dJ();
    }

    public void release() {
        this.bT.release();
        this.bW.release();
        this.bV.release();
        eg();
    }

    public int dG() {
        return 36197;
    }

    private void ef(int i, int i2) {
        if (this.bX == null) {
            this.bX = new C0547d(1080 / this.bY, 1920 / this.bY);
        }
        if (this.bU == null) {
            this.bU = new C0547d(1080 / this.bY, 1920 / this.bY);
        }
    }

    private void eg() {
        if (this.bU != null) {
            if (this.bU.DN()) {
                this.bU.Ec();
            }
            this.bU = null;
        }
        if (this.bX != null) {
            if (this.bX.DN()) {
                this.bX.Ec();
            }
            this.bX = null;
        }
    }
}
