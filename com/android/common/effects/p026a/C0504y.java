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

public class C0504y extends C0475a {
    private Context fA;
    private float[] fB;
    private C0544a fC;
    private int fD;
    private boolean fE = false;
    private int[] fF = new int[]{0, 0};
    private int fG;
    private int fH;
    private int fI;
    private int fJ;
    private int fK;
    private int fL;
    private int fM;
    private int fN;
    private int fz;

    public C0504y(Context context) {
        this.fA = context;
        this.fF = fg();
        this.fz = C0545b.DX(context, R.drawable.changes_small);
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (3553 == c0544a.DJ()) {
            ff();
            Matrix.setIdentityM(fArr, 0);
            fe(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        ff();
    }

    public void release() {
        GLES20.glDeleteShader(this.fF[0]);
        GLES20.glDeleteShader(this.fF[1]);
        GLES20.glDeleteProgram(this.fD);
        GLES20.glDeleteTextures(1, new int[]{this.fz}, 0);
    }

    public int dG() {
        return 3553;
    }

    public void fd(C0544a c0544a, float[] fArr) {
        this.fC = c0544a;
        this.fB = fArr;
    }

    private int[] fg() {
        return C0545b.DV(C0545b.DT(this.fA, R.raw.overly_vs), C0545b.DT(this.fA, R.raw.overly_fs));
    }

    private void ff() {
        if (!this.fE) {
            this.fE = true;
            this.fD = C0545b.DW(this.fF[0], this.fF[1]);
            if (this.fD == 0) {
                C0090a.bvo("OverlyEffect", "mProgram = 0");
            }
            this.fG = GLES20.glGetAttribLocation(this.fD, "aPosition");
            this.fH = GLES20.glGetAttribLocation(this.fD, "aTextureCoord");
            this.fJ = GLES20.glGetUniformLocation(this.fD, "uMVPMatrix");
            this.fM = GLES20.glGetUniformLocation(this.fD, "uSTMatrix");
            this.fK = GLES20.glGetUniformLocation(this.fD, "uPreviewSTMatrix");
            this.fN = GLES20.glGetUniformLocation(this.fD, "sTexture");
            this.fL = GLES20.glGetUniformLocation(this.fD, "sPreviewTexture");
            this.fI = GLES20.glGetUniformLocation(this.fD, "sChangeTexture");
        }
    }

    private void fe(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.fD);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.fG, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.fG);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.fH, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.fH);
        GLES20.glUniformMatrix4fv(this.fJ, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.fM, 1, false, fArr2, 0);
        GLES20.glUniformMatrix4fv(this.fK, 1, false, this.fB, 0);
        GLES20.glActiveTexture(33987);
        GLES20.glBindTexture(36197, this.fC.DH());
        GLES20.glUniform1i(this.fL, 3);
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, i5);
        GLES20.glUniform1i(this.fN, 2);
        GLES20.glActiveTexture(33988);
        GLES20.glBindTexture(3553, this.fz);
        GLES20.glUniform1i(this.fI, 4);
        GLES20.glDrawArrays(5, 0, 4);
    }
}
