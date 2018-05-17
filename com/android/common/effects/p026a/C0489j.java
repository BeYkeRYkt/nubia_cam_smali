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

public class C0489j extends C0475a {
    private Context bZ;
    private int ca;
    private boolean cb = false;
    private int[] cc = new int[]{0, 0};
    private int cd;
    private int ce;
    private int cf;
    private int cg;
    private int ch;
    private int ci;

    public C0489j(Context context) {
        this.bZ = context;
        this.cc = ej();
    }

    private int[] ej() {
        return C0545b.DV(C0545b.DT(this.bZ, R.raw.simple_vs), C0545b.DT(this.bZ, R.raw.sketch_fs));
    }

    private void ei() {
        if (!this.cb) {
            this.cb = true;
            this.ca = C0545b.DW(this.cc[0], this.cc[1]);
            if (this.ca == 0) {
                C0090a.bvo("SketchEffect", "mProgram = 0");
            }
            this.cd = GLES20.glGetAttribLocation(this.ca, "aPosition");
            this.ce = GLES20.glGetAttribLocation(this.ca, "aTextureCoord");
            this.cg = GLES20.glGetUniformLocation(this.ca, "uMVPMatrix");
            this.ch = GLES20.glGetUniformLocation(this.ca, "uSTMatrix");
            this.ci = GLES20.glGetUniformLocation(this.ca, "width");
            this.cf = GLES20.glGetUniformLocation(this.ca, "height");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (36197 == c0544a.DJ()) {
            ei();
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(36197, c0544a.DH());
            eh(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        ei();
    }

    public void release() {
        GLES20.glDeleteShader(this.cc[0]);
        GLES20.glDeleteShader(this.cc[1]);
        GLES20.glDeleteProgram(this.ca);
    }

    private void eh(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.ca);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.cd, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.cd);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.ce, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.ce);
        GLES20.glUniformMatrix4fv(this.cg, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.ch, 1, false, fArr2, 0);
        GLES20.glUniform1f(this.ci, (float) i3);
        GLES20.glUniform1f(this.cf, (float) i4);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return 36197;
    }
}
