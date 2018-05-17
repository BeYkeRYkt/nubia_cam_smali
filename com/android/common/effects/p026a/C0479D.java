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

public class C0479D extends C0475a {
    private Context gA;
    private int gB;
    private int gC;
    private boolean gD = false;
    private int[] gE = new int[]{0, 0};
    private int gF = 3553;
    private int gG;
    private int gH;
    private int gI;
    private int gJ;
    private int gK;
    private int gL;
    private int gM;
    private int gN;

    public C0479D(Context context, int i) {
        this.gF = i;
        this.gA = context;
        this.gE = fv();
        this.gB = C0545b.DX(context, R.drawable.beauty_effect_sucai3);
    }

    private int[] fv() {
        return C0545b.DV(C0545b.DT(this.gA, R.raw.newsketch_vs), C0545b.DU(this.gA, R.raw.beautyjapaneffect_fs, this.gF));
    }

    private void fu() {
        if (!this.gD) {
            this.gD = true;
            this.gC = C0545b.DW(this.gE[0], this.gE[1]);
            if (this.gC == 0) {
                C0090a.bvo("PrettyJapanEffect", "mProgram = 0");
            }
            this.gG = GLES20.glGetAttribLocation(this.gC, "aPosition");
            this.gH = GLES20.glGetAttribLocation(this.gC, "aTextureCoord");
            this.gL = GLES20.glGetUniformLocation(this.gC, "uMVPMatrix");
            this.gM = GLES20.glGetUniformLocation(this.gC, "uSTMatrix");
            this.gN = GLES20.glGetUniformLocation(this.gC, "width");
            this.gK = GLES20.glGetUniformLocation(this.gC, "height");
            this.gI = GLES20.glGetUniformLocation(this.gC, "uEAMatrix");
            this.gJ = GLES20.glGetUniformLocation(this.gC, "uFrontTexture");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (dG() != c0544a.DJ()) {
            C0090a.m1e("PrettyJapanEffect", "texture target != effect target!!!");
            return;
        }
        Matrix.setIdentityM(fArr, 0);
        GLES20.glBindTexture(c0544a.DJ(), c0544a.DH());
        ft(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
    }

    public void dJ() {
        fu();
    }

    public void release() {
        GLES20.glDeleteShader(this.gE[0]);
        GLES20.glDeleteShader(this.gE[1]);
        GLES20.glDeleteProgram(this.gC);
        GLES20.glDeleteTextures(1, new int[]{this.gB}, 0);
    }

    private void ft(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        fu();
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.gC);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.gG, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.gG);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.gH, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.gH);
        GLES20.glUniformMatrix4fv(this.gL, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.gM, 1, false, fArr2, 0);
        GLES20.glUniform1f(this.gN, (float) i3);
        GLES20.glUniform1f(this.gK, (float) i4);
        float[] fArr3 = new float[16];
        Matrix.setIdentityM(fArr3, 0);
        Matrix.translateM(fArr3, 0, 0.0f, 0.5f, 0.0f);
        Matrix.scaleM(fArr3, 0, 1.0f, -1.0f, 1.0f);
        Matrix.translateM(fArr3, 0, 0.0f, -0.5f, 0.0f);
        GLES20.glUniformMatrix4fv(this.gI, 1, false, fArr3, 0);
        GLES20.glActiveTexture(33987);
        GLES20.glBindTexture(3553, this.gB);
        GLES20.glUniform1i(this.gJ, 3);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return this.gF;
    }
}
