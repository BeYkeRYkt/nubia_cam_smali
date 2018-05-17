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

public class C0497r extends C0475a {
    private Context dS;
    private int dT;
    private int dU;
    private boolean dV = false;
    private int[] dW = new int[]{0, 0};
    private int dX;
    private int dY;
    private int dZ;
    private int ea;
    private int eb;
    private int ec;
    private int ed;
    private int ee;

    public C0497r(Context context) {
        this.dS = context;
        this.dW = eJ();
        this.dT = C0545b.DX(context, R.drawable.fun_effect_red2green);
    }

    private int[] eJ() {
        return C0545b.DV(C0545b.DT(this.dS, R.raw.newsketch_vs), C0545b.DT(this.dS, R.raw.newsketch_fs));
    }

    private void eI() {
        if (!this.dV) {
            this.dV = true;
            this.dU = C0545b.DW(this.dW[0], this.dW[1]);
            if (this.dU == 0) {
                C0090a.bvo("NewSketchEffect", "mProgram = 0");
            }
            this.dX = GLES20.glGetAttribLocation(this.dU, "aPosition");
            this.dY = GLES20.glGetAttribLocation(this.dU, "aTextureCoord");
            this.ec = GLES20.glGetUniformLocation(this.dU, "uMVPMatrix");
            this.ed = GLES20.glGetUniformLocation(this.dU, "uSTMatrix");
            this.ee = GLES20.glGetUniformLocation(this.dU, "width");
            this.eb = GLES20.glGetUniformLocation(this.dU, "height");
            this.dZ = GLES20.glGetUniformLocation(this.dU, "uEAMatrix");
            this.ea = GLES20.glGetUniformLocation(this.dU, "uFrontTexture");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (36197 == c0544a.DJ()) {
            eI();
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(36197, c0544a.DH());
            eH(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        eI();
    }

    public void release() {
        GLES20.glDeleteShader(this.dW[0]);
        GLES20.glDeleteShader(this.dW[1]);
        GLES20.glDeleteProgram(this.dU);
        GLES20.glDeleteTextures(1, new int[]{this.dT}, 0);
    }

    private void eH(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.dU);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.dX, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.dX);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.dY, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.dY);
        GLES20.glUniformMatrix4fv(this.ec, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.ed, 1, false, fArr2, 0);
        GLES20.glUniform1f(this.ee, (float) i3);
        GLES20.glUniform1f(this.eb, (float) i4);
        float[] fArr3 = new float[16];
        Matrix.setIdentityM(fArr3, 0);
        Matrix.translateM(fArr3, 0, 0.0f, 0.5f, 0.0f);
        Matrix.scaleM(fArr3, 0, 1.0f, -1.0f, 1.0f);
        Matrix.translateM(fArr3, 0, 0.0f, -0.5f, 0.0f);
        GLES20.glUniformMatrix4fv(this.dZ, 1, false, fArr3, 0);
        GLES20.glActiveTexture(33987);
        GLES20.glBindTexture(3553, this.dT);
        GLES20.glUniform1i(this.ea, 3);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return 36197;
    }
}
