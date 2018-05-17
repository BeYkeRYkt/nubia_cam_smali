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

public class C0484e extends C0475a {
    private Context bh;
    private int bi;
    private boolean bj = false;
    private int[] bk = new int[]{0, 0};
    private int bl;
    private int bm;
    private int bn;
    private int bo;

    public C0484e(Context context) {
        this.bh = context;
        this.bk = dV();
    }

    private int[] dV() {
        return C0545b.DV(C0545b.DT(this.bh, R.raw.simple_vs), C0545b.DT(this.bh, R.raw.ocean_fs));
    }

    private void dU() {
        if (!this.bj) {
            this.bj = true;
            this.bi = C0545b.DW(this.bk[0], this.bk[1]);
            if (this.bi == 0) {
                C0090a.bvo("OceanEffect", "mProgram = 0");
            }
            this.bl = GLES20.glGetAttribLocation(this.bi, "aPosition");
            this.bm = GLES20.glGetAttribLocation(this.bi, "aTextureCoord");
            this.bn = GLES20.glGetUniformLocation(this.bi, "uMVPMatrix");
            this.bo = GLES20.glGetUniformLocation(this.bi, "uSTMatrix");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (36197 == c0544a.DJ()) {
            dU();
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(36197, c0544a.DH());
            dT(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        dU();
    }

    public void release() {
        GLES20.glDeleteShader(this.bk[0]);
        GLES20.glDeleteShader(this.bk[1]);
        GLES20.glDeleteProgram(this.bi);
    }

    private void dT(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.bi);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.bl, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.bl);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.bm, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.bm);
        GLES20.glUniformMatrix4fv(this.bn, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.bo, 1, false, fArr2, 0);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return 36197;
    }
}
