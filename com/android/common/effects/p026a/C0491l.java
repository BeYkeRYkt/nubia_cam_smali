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

public class C0491l extends C0475a {
    private int cA;
    private int cB;
    private int cC;
    private int cD;
    private int cE;
    private int cF;
    private Context cs;
    private int ct;
    private int cu;
    private boolean cv = false;
    private int[] cw = new int[]{0, 0};
    private int cx = 3553;
    private int cy;
    private int cz;

    public C0491l(Context context, int i) {
        this.cx = i;
        this.cs = context;
        this.cw = er();
        this.ct = C0545b.DX(context, R.drawable.beauty_effect_sucai0);
    }

    private int[] er() {
        return C0545b.DV(C0545b.DT(this.cs, R.raw.simple_vs), C0545b.DU(this.cs, R.raw.beautybeautiful_fs, this.cx));
    }

    private void eq() {
        if (!this.cv) {
            this.cv = true;
            this.cu = C0545b.DW(this.cw[0], this.cw[1]);
            if (this.cu == 0) {
                C0090a.bvo("PrettyBeautifulEffect", "mProgram = 0");
            }
            this.cy = GLES20.glGetAttribLocation(this.cu, "aPosition");
            this.cz = GLES20.glGetAttribLocation(this.cu, "aTextureCoord");
            this.cD = GLES20.glGetUniformLocation(this.cu, "uMVPMatrix");
            this.cE = GLES20.glGetUniformLocation(this.cu, "uSTMatrix");
            this.cF = GLES20.glGetUniformLocation(this.cu, "width");
            this.cC = GLES20.glGetUniformLocation(this.cu, "height");
            this.cA = GLES20.glGetUniformLocation(this.cu, "uEAMatrix");
            this.cB = GLES20.glGetUniformLocation(this.cu, "uFrontTexture");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (dG() != c0544a.DJ()) {
            C0090a.m1e("PrettyBeautifulEffect", "texture target != effect target!!!");
            return;
        }
        Matrix.setIdentityM(fArr, 0);
        GLES20.glBindTexture(c0544a.DJ(), c0544a.DH());
        ep(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
    }

    public void dJ() {
        eq();
    }

    public void release() {
        GLES20.glDeleteShader(this.cw[0]);
        GLES20.glDeleteShader(this.cw[1]);
        GLES20.glDeleteProgram(this.cu);
        GLES20.glDeleteTextures(1, new int[]{this.ct}, 0);
    }

    private void ep(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        eq();
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.cu);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.cy, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.cy);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.cz, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.cz);
        GLES20.glUniformMatrix4fv(this.cD, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.cE, 1, false, fArr2, 0);
        GLES20.glUniform1f(this.cF, (float) i3);
        GLES20.glUniform1f(this.cC, (float) i4);
        float[] fArr3 = new float[16];
        Matrix.setIdentityM(fArr3, 0);
        Matrix.translateM(fArr3, 0, 0.0f, 0.5f, 0.0f);
        Matrix.scaleM(fArr3, 0, 1.0f, -1.0f, 1.0f);
        Matrix.translateM(fArr3, 0, 0.0f, -0.5f, 0.0f);
        GLES20.glUniformMatrix4fv(this.cA, 1, false, fArr3, 0);
        GLES20.glActiveTexture(33987);
        GLES20.glBindTexture(3553, this.ct);
        GLES20.glUniform1i(this.cB, 3);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return this.cx;
    }
}
