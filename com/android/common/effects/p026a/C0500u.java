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

public class C0500u extends C0475a {
    private Context eA;
    private int eB;
    private boolean eC = false;
    private int[] eD = new int[]{0, 0};
    private int eE;
    private int eF;
    private int eG;
    private int eH;
    private int eI;
    private int eJ;
    private int eK;
    private int eL;

    public C0500u(Context context) {
        this.eA = context;
        this.eD = eS();
    }

    private int[] eS() {
        return C0545b.DV(C0545b.DT(this.eA, R.raw.simple_vs), C0545b.DT(this.eA, R.raw.lomo_fs));
    }

    private void eR() {
        if (!this.eC) {
            this.eC = true;
            this.eB = C0545b.DW(this.eD[0], this.eD[1]);
            if (this.eB == 0) {
                C0090a.bvo("LOMOEffect", "mProgram = 0");
            }
            this.eE = GLES20.glGetAttribLocation(this.eB, "aPosition");
            this.eF = GLES20.glGetAttribLocation(this.eB, "aTextureCoord");
            this.eI = GLES20.glGetUniformLocation(this.eB, "uMVPMatrix");
            this.eK = GLES20.glGetUniformLocation(this.eB, "uSTMatrix");
            this.eJ = GLES20.glGetUniformLocation(this.eB, "mult");
            this.eH = GLES20.glGetUniformLocation(this.eB, "igamma");
            this.eL = GLES20.glGetUniformLocation(this.eB, "width");
            this.eG = GLES20.glGetUniformLocation(this.eB, "height");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (36197 == c0544a.DJ()) {
            eR();
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(36197, c0544a.DH());
            eQ(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        eR();
    }

    public void release() {
        GLES20.glDeleteShader(this.eD[0]);
        GLES20.glDeleteShader(this.eD[1]);
        GLES20.glDeleteProgram(this.eB);
    }

    private void eQ(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.eB);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.eE, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.eE);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.eF, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.eF);
        GLES20.glUniformMatrix4fv(this.eI, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.eK, 1, false, fArr2, 0);
        GLES20.glUniform1f(this.eJ, 7.44f);
        GLES20.glUniform1f(this.eH, 0.4f);
        GLES20.glUniform1f(this.eL, (float) i3);
        GLES20.glUniform1f(this.eG, (float) i4);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return 36197;
    }
}
