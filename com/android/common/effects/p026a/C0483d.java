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

public class C0483d extends C0475a {
    private Context aU;
    private int aV;
    private int aW;
    private int aX;
    private boolean aY = false;
    private int[] aZ = new int[]{0, 0};
    private int ba;
    private int bb;
    private int bc;
    private int bd;
    private int be;
    private int bf;
    private int bg;

    public C0483d(Context context) {
        this.aU = context;
        this.aZ = dS();
        this.aW = C0545b.DX(context, R.drawable.fun_effect_area_front);
        this.aV = C0545b.DX(context, R.drawable.fun_effect_area_effect);
    }

    private int[] dS() {
        return C0545b.DV(C0545b.DT(this.aU, R.raw.area_effect_vs), C0545b.DT(this.aU, R.raw.area_effect_fs));
    }

    private void dR() {
        if (!this.aY) {
            this.aY = true;
            this.aX = C0545b.DW(this.aZ[0], this.aZ[1]);
            if (this.aX == 0) {
                C0090a.bvo("AreaEffect", "mProgram = 0");
            }
            this.ba = GLES20.glGetAttribLocation(this.aX, "aPosition");
            this.bb = GLES20.glGetAttribLocation(this.aX, "aTextureCoord");
            this.bf = GLES20.glGetUniformLocation(this.aX, "uMVPMatrix");
            this.bg = GLES20.glGetUniformLocation(this.aX, "uSTMatrix");
            this.bc = GLES20.glGetUniformLocation(this.aX, "uEAMatrix");
            this.be = GLES20.glGetUniformLocation(this.aX, "uFrontTexture");
            this.bd = GLES20.glGetUniformLocation(this.aX, "uEffectAreaTexture");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (36197 == c0544a.DJ()) {
            dR();
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(36197, c0544a.DH());
            dQ(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        dR();
    }

    public void release() {
        GLES20.glDeleteShader(this.aZ[0]);
        GLES20.glDeleteShader(this.aZ[1]);
        GLES20.glDeleteProgram(this.aX);
        GLES20.glDeleteTextures(2, new int[]{this.aW, this.aV}, 0);
    }

    private void dQ(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.aX);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.ba, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.ba);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.bb, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.bb);
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, this.aV);
        GLES20.glUniform1i(this.bd, 2);
        GLES20.glActiveTexture(33987);
        GLES20.glBindTexture(3553, this.aW);
        GLES20.glUniform1i(this.be, 3);
        float[] fArr3 = new float[16];
        Matrix.setIdentityM(fArr3, 0);
        Matrix.translateM(fArr3, 0, 0.0f, 0.5f, 0.0f);
        Matrix.scaleM(fArr3, 0, 1.0f, -1.0f, 1.0f);
        Matrix.translateM(fArr3, 0, 0.0f, -0.5f, 0.0f);
        GLES20.glUniformMatrix4fv(this.bc, 1, false, fArr3, 0);
        GLES20.glUniformMatrix4fv(this.bf, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.bg, 1, false, fArr2, 0);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return 36197;
    }
}
