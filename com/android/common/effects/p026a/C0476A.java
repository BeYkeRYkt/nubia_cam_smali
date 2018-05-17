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

public class C0476A extends C0475a {
    private Context fY;
    private int fZ;
    private boolean ga = false;
    private int[] gb = new int[]{0, 0};
    private int gc;
    private int gd;
    private int ge;
    private int gf;
    private int gg;
    private int gh;

    public C0476A(Context context) {
        this.fY = context;
        this.gb = fm();
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (3553 == c0544a.DJ()) {
            fl();
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(3553, c0544a.DH());
            fk(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        fl();
    }

    public void release() {
        GLES20.glDeleteShader(this.gb[0]);
        GLES20.glDeleteShader(this.gb[1]);
        GLES20.glDeleteProgram(this.fZ);
    }

    public int dG() {
        return 3553;
    }

    private int[] fm() {
        return C0545b.DV(C0545b.DT(this.fY, R.raw.simple_vs), C0545b.DT(this.fY, R.raw.blur_landscape_fs));
    }

    private void fl() {
        if (!this.ga) {
            this.ga = true;
            this.fZ = C0545b.DW(this.gb[0], this.gb[1]);
            if (this.fZ == 0) {
                C0090a.bvo("LandScapeBlurEffect", "mProgram = 0");
            }
            this.gc = GLES20.glGetAttribLocation(this.fZ, "aPosition");
            this.gd = GLES20.glGetAttribLocation(this.fZ, "aTextureCoord");
            this.gf = GLES20.glGetUniformLocation(this.fZ, "uMVPMatrix");
            this.gg = GLES20.glGetUniformLocation(this.fZ, "uSTMatrix");
            this.gh = GLES20.glGetUniformLocation(this.fZ, "width");
            this.ge = GLES20.glGetUniformLocation(this.fZ, "height");
        }
    }

    private void fk(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.fZ);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.gc, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.gc);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.gd, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.gd);
        GLES20.glUniformMatrix4fv(this.gf, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.gg, 1, false, fArr2, 0);
        GLES20.glUniform1f(this.gh, (float) i3);
        GLES20.glUniform1f(this.ge, (float) i4);
        GLES20.glDrawArrays(5, 0, 4);
    }
}
