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

public class C0478C extends C0475a {
    private Context gs;
    private int gt;
    private boolean gu = false;
    private int[] gv = new int[]{0, 0};
    private int gw;
    private int gx;
    private int gy;
    private int gz;

    public C0478C(Context context) {
        this.gs = context;
        this.gv = fs();
    }

    private int[] fs() {
        return C0545b.DV(C0545b.DT(this.gs, R.raw.simple_vs), C0545b.DT(this.gs, R.raw.cross_process_fs));
    }

    private void fr() {
        if (!this.gu) {
            this.gu = true;
            this.gt = C0545b.DW(this.gv[0], this.gv[1]);
            if (this.gt == 0) {
                C0090a.bvo("CrossProcessEffect", "mProgram = 0");
            }
            this.gw = GLES20.glGetAttribLocation(this.gt, "aPosition");
            this.gx = GLES20.glGetAttribLocation(this.gt, "aTextureCoord");
            this.gy = GLES20.glGetUniformLocation(this.gt, "uMVPMatrix");
            this.gz = GLES20.glGetUniformLocation(this.gt, "uSTMatrix");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (36197 == c0544a.DJ()) {
            fr();
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(36197, c0544a.DH());
            fq(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        fr();
    }

    public void release() {
        GLES20.glDeleteShader(this.gv[0]);
        GLES20.glDeleteShader(this.gv[1]);
        GLES20.glDeleteProgram(this.gt);
    }

    private void fq(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.gt);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.gw, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.gw);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.gx, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.gx);
        GLES20.glUniformMatrix4fv(this.gy, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.gz, 1, false, fArr2, 0);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return 36197;
    }
}
