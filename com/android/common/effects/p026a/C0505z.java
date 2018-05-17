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

public class C0505z extends C0475a {
    private Context fO;
    private int fP;
    private boolean fQ = false;
    private int[] fR = new int[]{0, 0};
    private int fS;
    private int fT;
    private int fU;
    private int fV;
    private int fW;
    private int fX;

    public C0505z(Context context) {
        this.fO = context;
        this.fR = fj();
    }

    private int[] fj() {
        return C0545b.DV(C0545b.DT(this.fO, R.raw.simple_vs), C0545b.DT(this.fO, R.raw.nature_fs));
    }

    private void fi() {
        if (!this.fQ) {
            this.fQ = true;
            this.fP = C0545b.DW(this.fR[0], this.fR[1]);
            if (this.fP == 0) {
                C0090a.bvo("NatureEffect", "mProgram = 0");
            }
            this.fS = GLES20.glGetAttribLocation(this.fP, "aPosition");
            this.fT = GLES20.glGetAttribLocation(this.fP, "aTextureCoord");
            this.fV = GLES20.glGetUniformLocation(this.fP, "uMVPMatrix");
            this.fW = GLES20.glGetUniformLocation(this.fP, "uSTMatrix");
            this.fX = GLES20.glGetUniformLocation(this.fP, "width");
            this.fU = GLES20.glGetUniformLocation(this.fP, "height");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (36197 == c0544a.DJ()) {
            fi();
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(36197, c0544a.DH());
            fh(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        fi();
    }

    public void release() {
        GLES20.glDeleteShader(this.fR[0]);
        GLES20.glDeleteShader(this.fR[1]);
        GLES20.glDeleteProgram(this.fP);
    }

    private void fh(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.fP);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.fS, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.fS);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.fT, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.fT);
        GLES20.glUniformMatrix4fv(this.fV, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.fW, 1, false, fArr2, 0);
        GLES20.glUniform1f(this.fX, (float) i3);
        GLES20.glUniform1f(this.fU, (float) i4);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return 36197;
    }
}
