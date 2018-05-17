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

public class C0486g extends C0475a {
    private int[] bA = new int[]{0, 0};
    private int bB;
    private int bC;
    private int bD;
    private int bE;
    private int bF;
    private int bG;
    private Context bx;
    private int by;
    private boolean bz = false;

    public C0486g(Context context) {
        this.bx = context;
        this.bA = eb();
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (3553 == c0544a.DJ()) {
            ea();
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(3553, c0544a.DH());
            dZ(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        ea();
    }

    public void release() {
        GLES20.glDeleteShader(this.bA[0]);
        GLES20.glDeleteShader(this.bA[1]);
        GLES20.glDeleteProgram(this.by);
    }

    public int dG() {
        return 3553;
    }

    private int[] eb() {
        return C0545b.DV(C0545b.DT(this.bx, R.raw.simple_vs), C0545b.DT(this.bx, R.raw.blur_portait_fs));
    }

    private void ea() {
        if (!this.bz) {
            this.bz = true;
            this.by = C0545b.DW(this.bA[0], this.bA[1]);
            if (this.by == 0) {
                C0090a.bvo("LandScapeBlurEffect", "mProgram = 0");
            }
            this.bB = GLES20.glGetAttribLocation(this.by, "aPosition");
            this.bC = GLES20.glGetAttribLocation(this.by, "aTextureCoord");
            this.bE = GLES20.glGetUniformLocation(this.by, "uMVPMatrix");
            this.bF = GLES20.glGetUniformLocation(this.by, "uSTMatrix");
            this.bG = GLES20.glGetUniformLocation(this.by, "width");
            this.bD = GLES20.glGetUniformLocation(this.by, "height");
        }
    }

    private void dZ(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.by);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.bB, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.bB);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.bC, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.bC);
        GLES20.glUniformMatrix4fv(this.bE, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.bF, 1, false, fArr2, 0);
        GLES20.glUniform1f(this.bG, (float) i3);
        GLES20.glUniform1f(this.bD, (float) i4);
        GLES20.glDrawArrays(5, 0, 4);
    }
}
