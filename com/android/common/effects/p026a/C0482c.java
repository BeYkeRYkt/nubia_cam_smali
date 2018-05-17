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

public class C0482c extends C0475a {
    private Context aI;
    private int aJ;
    private boolean aK = false;
    private int[] aL = new int[]{0, 0};
    private int aM;
    private int aN;
    private int aO;
    private int aP;
    private int aQ;
    private int aR;
    private int aS;
    private int aT;

    public C0482c(Context context) {
        this.aI = context;
        this.aL = dP();
    }

    private int[] dP() {
        return C0545b.DV(C0545b.DT(this.aI, R.raw.simple_vs), C0545b.DT(this.aI, R.raw.pink_fs));
    }

    private void dO() {
        if (!this.aK) {
            this.aK = true;
            this.aJ = C0545b.DW(this.aL[0], this.aL[1]);
            if (this.aJ == 0) {
                C0090a.bvo("PinkEffect", "mProgram = 0");
            }
            this.aM = GLES20.glGetAttribLocation(this.aJ, "aPosition");
            this.aN = GLES20.glGetAttribLocation(this.aJ, "aTextureCoord");
            this.aQ = GLES20.glGetUniformLocation(this.aJ, "uMVPMatrix");
            this.aS = GLES20.glGetUniformLocation(this.aJ, "uSTMatrix");
            this.aR = GLES20.glGetUniformLocation(this.aJ, "mult");
            this.aP = GLES20.glGetUniformLocation(this.aJ, "igamma");
            this.aT = GLES20.glGetUniformLocation(this.aJ, "width");
            this.aO = GLES20.glGetUniformLocation(this.aJ, "height");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (36197 == c0544a.DJ()) {
            dO();
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(36197, c0544a.DH());
            dN(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        dO();
    }

    public void release() {
        GLES20.glDeleteShader(this.aL[0]);
        GLES20.glDeleteShader(this.aL[1]);
        GLES20.glDeleteProgram(this.aJ);
    }

    private void dN(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.aJ);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.aM, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.aM);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.aN, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.aN);
        GLES20.glUniformMatrix4fv(this.aQ, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.aS, 1, false, fArr2, 0);
        GLES20.glUniform1f(this.aR, 7.44f);
        GLES20.glUniform1f(this.aP, 0.4f);
        GLES20.glUniform1f(this.aT, (float) i3);
        GLES20.glUniform1f(this.aO, (float) i4);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return 36197;
    }
}
