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

public class C0490k extends C0475a {
    private int cj = 1728053247;
    private float[] ck;
    private Context cl;
    private int cm;
    private boolean cn = false;
    private int[] co = new int[]{0, 0};
    private int cp;
    private int cq;
    private int cr;

    public C0490k(Context context) {
        this.cl = context;
        this.co = eo();
        this.ck = em(this.cj);
    }

    public void ek(int i) {
        if (this.cj != i) {
            this.cj = i;
            this.ck = em(this.cj);
        }
    }

    private float[] em(int i) {
        r0 = new float[4];
        float f = ((float) ((i >>> 24) & 255)) / 255.0f;
        float f2 = ((float) ((i >>> 8) & 255)) / 255.0f;
        float f3 = ((float) (i & 255)) / 255.0f;
        r0[0] = ((float) ((i >>> 16) & 255)) / 255.0f;
        r0[1] = f2;
        r0[2] = f3;
        r0[3] = f;
        return r0;
    }

    private int[] eo() {
        return C0545b.DV(C0545b.DT(this.cl, R.raw.rect_frame_vs), C0545b.DT(this.cl, R.raw.rect_frame_fs));
    }

    private void en() {
        if (!this.cn) {
            this.cn = true;
            this.cm = C0545b.DW(this.co[0], this.co[1]);
            if (this.cm == 0) {
                C0090a.bvo("RectFrameEffect", "mProgram = 0");
            }
            this.cp = GLES20.glGetAttribLocation(this.cm, "aPosition");
            this.cr = GLES20.glGetUniformLocation(this.cm, "uMVPMatrix");
            this.cq = GLES20.glGetUniformLocation(this.cm, "uColor");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        en();
        Matrix.setIdentityM(fArr, 0);
        el(fArr, fArr2, floatBuffer, i, i2, i3, i4);
    }

    private void el(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.cm);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        GLES20.glLineWidth(10.0f);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.cp, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.cp);
        GLES20.glUniformMatrix4fv(this.cr, 1, false, fArr, 0);
        GLES20.glUniform4fv(this.cq, 1, this.ck, 0);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public void dJ() {
    }

    public void release() {
    }

    public int dG() {
        return -1;
    }
}
