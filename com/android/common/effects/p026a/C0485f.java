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

public class C0485f extends C0475a {
    private Context bp;
    private int bq;
    private boolean br = false;
    private int[] bs = new int[]{0, 0};
    private int bt;
    private int bu;
    private int bv;
    private int bw;

    public C0485f(Context context) {
        this.bp = context;
        this.bs = dY();
    }

    private int[] dY() {
        return C0545b.DV(C0545b.DT(this.bp, R.raw.simple_vs), C0545b.DT(this.bp, R.raw.frag_shader_negative_film));
    }

    private void dX() {
        if (!this.br) {
            this.br = true;
            this.bq = C0545b.DW(this.bs[0], this.bs[1]);
            if (this.bq == 0) {
                C0090a.bvo("NegativeFilmEffect", "mProgram = 0");
            }
            this.bt = GLES20.glGetAttribLocation(this.bq, "aPosition");
            this.bu = GLES20.glGetAttribLocation(this.bq, "aTextureCoord");
            this.bv = GLES20.glGetUniformLocation(this.bq, "uMVPMatrix");
            this.bw = GLES20.glGetUniformLocation(this.bq, "uSTMatrix");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (36197 == c0544a.DJ()) {
            dX();
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(36197, c0544a.DH());
            dW(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        dX();
    }

    public void release() {
        GLES20.glDeleteShader(this.bs[0]);
        GLES20.glDeleteShader(this.bs[1]);
        GLES20.glDeleteProgram(this.bq);
    }

    private void dW(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.bq);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.bt, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.bt);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.bu, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.bu);
        GLES20.glUniformMatrix4fv(this.bv, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.bw, 1, false, fArr2, 0);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return 36197;
    }
}
