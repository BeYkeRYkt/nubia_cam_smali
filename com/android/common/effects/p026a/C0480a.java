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

public class C0480a extends C0475a {
    private Context aq;
    private int ar;
    private int as;
    private boolean at = false;
    private int[] au = new int[]{0, 0};
    private int av = 3553;
    private int aw;
    private int ax;
    private int ay;
    private int az;

    public C0480a(Context context, int i, int i2) {
        this.av = i2;
        this.aq = context;
        this.ar = i;
        this.au = dI();
    }

    private int[] dI() {
        return C0545b.DV(C0545b.DT(this.aq, R.raw.simple_vs), C0545b.DU(this.aq, this.ar, this.av));
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (dG() != c0544a.DJ()) {
            C0090a.m1e("PrettySimpleEffect", "texture target != effect target!!!");
            return;
        }
        dH();
        Matrix.setIdentityM(fArr, 0);
        GLES20.glBindTexture(c0544a.DJ(), c0544a.DH());
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.as);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.aw, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.aw);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.ax, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.ax);
        GLES20.glUniformMatrix4fv(this.ay, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.az, 1, false, fArr2, 0);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public void dJ() {
        dH();
    }

    public void release() {
        GLES20.glDeleteShader(this.au[0]);
        GLES20.glDeleteShader(this.au[1]);
        GLES20.glDeleteProgram(this.as);
    }

    private void dH() {
        if (!this.at) {
            this.at = true;
            this.as = C0545b.DW(this.au[0], this.au[1]);
            if (this.as == 0) {
                C0090a.bvo("PrettySimpleEffect", "mProgram = 0");
            }
            this.aw = GLES20.glGetAttribLocation(this.as, "aPosition");
            this.ax = GLES20.glGetAttribLocation(this.as, "aTextureCoord");
            this.ay = GLES20.glGetUniformLocation(this.as, "uMVPMatrix");
            this.az = GLES20.glGetUniformLocation(this.as, "uSTMatrix");
        }
    }

    public int dG() {
        return this.av;
    }
}
