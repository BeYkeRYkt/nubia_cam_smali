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

public class C0501v extends C0475a {
    private Context eM;
    private int eN;
    private boolean eO = false;
    private int[] eP = new int[]{0, 0};
    private int eQ;
    private int eR;
    private int eS;
    private int eT;

    public C0501v(Context context) {
        this.eM = context;
        this.eP = eV();
    }

    private int[] eV() {
        return C0545b.DV(C0545b.DT(this.eM, R.raw.simple_vs), C0545b.DT(this.eM, R.raw.sepia_fs));
    }

    private void eU() {
        if (!this.eO) {
            this.eO = true;
            this.eN = C0545b.DW(this.eP[0], this.eP[1]);
            if (this.eN == 0) {
                C0090a.bvo("SepiaEffect", "mProgram = 0");
            }
            this.eQ = GLES20.glGetAttribLocation(this.eN, "aPosition");
            this.eR = GLES20.glGetAttribLocation(this.eN, "aTextureCoord");
            this.eS = GLES20.glGetUniformLocation(this.eN, "uMVPMatrix");
            this.eT = GLES20.glGetUniformLocation(this.eN, "uSTMatrix");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (36197 == c0544a.DJ()) {
            eU();
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(36197, c0544a.DH());
            eT(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        eU();
    }

    public void release() {
        GLES20.glDeleteShader(this.eP[0]);
        GLES20.glDeleteShader(this.eP[1]);
        GLES20.glDeleteProgram(this.eN);
    }

    private void eT(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.eN);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.eQ, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.eQ);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.eR, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.eR);
        GLES20.glUniformMatrix4fv(this.eS, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.eT, 1, false, fArr2, 0);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return 36197;
    }
}
