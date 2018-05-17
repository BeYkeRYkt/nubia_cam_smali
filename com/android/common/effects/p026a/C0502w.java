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

public class C0502w extends C0475a {
    private Context eU;
    private int eV;
    private boolean eW = false;
    private int[] eX = new int[]{0, 0};
    private int eY;
    private int eZ;
    private int fa;
    private int fb;

    public C0502w(Context context) {
        this.eU = context;
        this.eX = eY();
    }

    private int[] eY() {
        return C0545b.DV(C0545b.DT(this.eU, R.raw.simple_vs), C0545b.DT(this.eU, R.raw.mosaic_fs));
    }

    private void eX() {
        if (!this.eW) {
            this.eW = true;
            this.eV = C0545b.DW(this.eX[0], this.eX[1]);
            if (this.eV == 0) {
                C0090a.m1e("MosaicEffect", "createProgram fail mProgram = 0");
            }
            this.eY = GLES20.glGetAttribLocation(this.eV, "aPosition");
            this.eZ = GLES20.glGetAttribLocation(this.eV, "aTextureCoord");
            this.fa = GLES20.glGetUniformLocation(this.eV, "uMVPMatrix");
            this.fb = GLES20.glGetUniformLocation(this.eV, "uSTMatrix");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (36197 == c0544a.DJ()) {
            eX();
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(36197, c0544a.DH());
            eW(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        eX();
    }

    public void release() {
        GLES20.glDeleteShader(this.eX[0]);
        GLES20.glDeleteShader(this.eX[1]);
        GLES20.glDeleteProgram(this.eV);
    }

    private void eW(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.eV);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.eY, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.eY);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.eZ, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.eZ);
        GLES20.glUniformMatrix4fv(this.fa, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.fb, 1, false, fArr2, 0);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return 36197;
    }
}
