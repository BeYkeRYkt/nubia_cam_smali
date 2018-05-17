package com.android.common.effects.p026a;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.Matrix;
import com.android.camera.R;
import com.android.common.effects.C0475a;
import com.android.common.gles.C0544a;
import com.android.common.gles.C0545b;
import com.android.common.gles.C0550g;
import com.p010a.C0090a;
import java.nio.FloatBuffer;

public class C0496q extends C0475a {
    final int dA = 2;
    final int dB = 0;
    private Context dC;
    int dD = 0;
    private float[] dE = new float[]{1.0f, 1.0f, 1.0f};
    private int dF;
    private boolean dG = false;
    private int[] dH = new int[]{0, 0};
    private int dI;
    private int dJ;
    private int dK;
    private int dL;
    private int dM;
    private int dN;
    private int dO;
    private int dP;
    private int dQ;
    private int dR;
    final int dz = 1;

    public C0496q(Context context, float[] fArr, int i, int i2) {
        this.dC = context;
        this.dH = eG(i2);
        this.dD = i;
        this.dE = fArr;
    }

    private int[] eG(int i) {
        return C0545b.DV(C0545b.DT(this.dC, R.raw.simple_vs), C0545b.DT(this.dC, i));
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (36197 == c0544a.DJ()) {
            eF();
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(36197, c0544a.DH());
            eE(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    private void eF() {
        if (!this.dG) {
            this.dG = true;
            this.dF = C0545b.DW(this.dH[0], this.dH[1]);
            if (this.dF == 0) {
                C0090a.bvo("PragueEffect", "mProgram = 0");
            }
            this.dI = GLES20.glGetAttribLocation(this.dF, "aPosition");
            this.dJ = GLES20.glGetAttribLocation(this.dF, "aTextureCoord");
            this.dP = GLES20.glGetUniformLocation(this.dF, "uMVPMatrix");
            this.dQ = GLES20.glGetUniformLocation(this.dF, "uSTMatrix");
            this.dR = GLES20.glGetUniformLocation(this.dF, "width");
            this.dM = GLES20.glGetUniformLocation(this.dF, "height");
            this.dO = GLES20.glGetUniformLocation(this.dF, "L");
            this.dK = GLES20.glGetUniformLocation(this.dF, "A");
            this.dL = GLES20.glGetUniformLocation(this.dF, "B");
            this.dN = GLES20.glGetUniformLocation(this.dF, "index");
        }
    }

    private void eE(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.dF);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.dI, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.dI);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.dJ, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.dJ);
        GLES20.glUniformMatrix4fv(this.dP, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.dQ, 1, false, fArr2, 0);
        GLES20.glUniform1f(this.dR, (float) i3);
        GLES20.glUniform1f(this.dM, (float) i4);
        GLES20.glUniform1f(this.dO, this.dE[0]);
        GLES20.glUniform1f(this.dK, this.dE[1]);
        GLES20.glUniform1f(this.dL, this.dE[2]);
        GLES20.glUniform1i(this.dN, this.dD);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public void dJ() {
        eF();
    }

    public void release() {
        GLES20.glDeleteShader(this.dH[0]);
        GLES20.glDeleteShader(this.dH[1]);
        GLES20.glDeleteProgram(this.dF);
    }

    public int dG() {
        return 36197;
    }
}
