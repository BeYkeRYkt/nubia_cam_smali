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

public class C0477B extends C0475a {
    private Context gi;
    private int gj;
    private boolean gk = false;
    private int[] gl = new int[]{0, 0};
    private int gm;
    private int gn;
    private int go;
    private int gp;
    private int gq;
    private int gr;

    public C0477B(Context context) {
        this.gi = context;
        this.gl = fp();
    }

    private int[] fp() {
        return C0545b.DV(C0545b.DT(this.gi, R.raw.simple_vs), C0545b.DT(this.gi, R.raw.emboss_fs));
    }

    private void fo() {
        if (!this.gk) {
            this.gk = true;
            this.gj = C0545b.DW(this.gl[0], this.gl[1]);
            if (this.gj == 0) {
                C0090a.bvo("EmbossEffect", "mProgram = 0");
            }
            this.gm = GLES20.glGetAttribLocation(this.gj, "aPosition");
            this.gn = GLES20.glGetAttribLocation(this.gj, "aTextureCoord");
            this.gp = GLES20.glGetUniformLocation(this.gj, "uMVPMatrix");
            this.gq = GLES20.glGetUniformLocation(this.gj, "uSTMatrix");
            this.gr = GLES20.glGetUniformLocation(this.gj, "width");
            this.go = GLES20.glGetUniformLocation(this.gj, "height");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (36197 == c0544a.DJ()) {
            fo();
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(36197, c0544a.DH());
            fn(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        fo();
    }

    public void release() {
        GLES20.glDeleteShader(this.gl[0]);
        GLES20.glDeleteShader(this.gl[1]);
        GLES20.glDeleteProgram(this.gj);
    }

    private void fn(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.gj);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.gm, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.gm);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.gn, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.gn);
        GLES20.glUniformMatrix4fv(this.gp, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.gq, 1, false, fArr2, 0);
        GLES20.glUniform1f(this.gr, (float) i3);
        GLES20.glUniform1f(this.go, (float) i4);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return 36197;
    }
}
