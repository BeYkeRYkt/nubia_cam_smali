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

public class C0481b extends C0475a {
    private Context aA;
    private int aB;
    private boolean aC = false;
    private int[] aD = new int[]{0, 0};
    private int aE;
    private int aF;
    private int aG;
    private int aH;

    public C0481b(Context context) {
        this.aA = context;
        this.aD = dM();
    }

    private int[] dM() {
        return C0545b.DV(C0545b.DT(this.aA, R.raw.simple_vs), C0545b.DT(this.aA, R.raw.summer_fs));
    }

    private void dL() {
        if (!this.aC) {
            this.aC = true;
            this.aB = C0545b.DW(this.aD[0], this.aD[1]);
            if (this.aB == 0) {
                C0090a.bvo("SummerEffect", "mProgram = 0");
            }
            this.aE = GLES20.glGetAttribLocation(this.aB, "aPosition");
            this.aF = GLES20.glGetAttribLocation(this.aB, "aTextureCoord");
            this.aG = GLES20.glGetUniformLocation(this.aB, "uMVPMatrix");
            this.aH = GLES20.glGetUniformLocation(this.aB, "uSTMatrix");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (36197 == c0544a.DJ()) {
            dL();
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(36197, c0544a.DH());
            dK(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        dL();
    }

    public void release() {
        GLES20.glDeleteShader(this.aD[0]);
        GLES20.glDeleteShader(this.aD[1]);
        GLES20.glDeleteProgram(this.aB);
    }

    private void dK(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.aB);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.aE, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.aE);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.aF, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.aF);
        GLES20.glUniformMatrix4fv(this.aG, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.aH, 1, false, fArr2, 0);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return 36197;
    }
}
