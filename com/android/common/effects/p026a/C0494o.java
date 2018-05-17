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

public class C0494o extends C0475a {
    private Context dc;
    private int dd;
    private boolean de = false;
    private int[] df = new int[]{0, 0};
    private int dg;
    private int dh;
    private int di;
    private int dj;
    private int dk;
    private int dl;
    private int dm;
    private int dn;

    public C0494o(Context context) {
        this.dc = context;
        this.df = eA();
    }

    private int[] eA() {
        return C0545b.DV(C0545b.DT(this.dc, R.raw.simple_vs), C0545b.DT(this.dc, R.raw.fill_light_fs));
    }

    private void ez() {
        if (!this.de) {
            this.de = true;
            this.dd = C0545b.DW(this.df[0], this.df[1]);
            if (this.dd == 0) {
                C0090a.bvo("FillLightEffect", "mProgram = 0");
            }
            this.dg = GLES20.glGetAttribLocation(this.dd, "aPosition");
            this.dh = GLES20.glGetAttribLocation(this.dd, "aTextureCoord");
            this.dk = GLES20.glGetUniformLocation(this.dd, "uMVPMatrix");
            this.dm = GLES20.glGetUniformLocation(this.dd, "uSTMatrix");
            this.dl = GLES20.glGetUniformLocation(this.dd, "mult");
            this.dj = GLES20.glGetUniformLocation(this.dd, "igamma");
            this.dn = GLES20.glGetUniformLocation(this.dd, "width");
            this.di = GLES20.glGetUniformLocation(this.dd, "height");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (36197 == c0544a.DJ()) {
            ez();
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(36197, c0544a.DH());
            ey(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        ez();
    }

    public void release() {
        GLES20.glDeleteShader(this.df[0]);
        GLES20.glDeleteShader(this.df[1]);
        GLES20.glDeleteProgram(this.dd);
    }

    private void ey(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.dd);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.dg, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.dg);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.dh, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.dh);
        GLES20.glUniformMatrix4fv(this.dk, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.dm, 1, false, fArr2, 0);
        GLES20.glUniform1f(this.dl, 7.44f);
        GLES20.glUniform1f(this.dj, 0.4f);
        GLES20.glUniform1f(this.dn, (float) i3);
        GLES20.glUniform1f(this.di, (float) i4);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return 36197;
    }
}
