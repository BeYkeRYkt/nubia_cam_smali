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

public class C0499t extends C0475a {
    private Context es;
    private int et;
    private boolean eu = false;
    private int[] ev = new int[]{0, 0};
    private int ew;
    private int ex;
    private int ey;
    private int ez;

    public C0499t(Context context) {
        this.es = context;
        this.ev = eP();
    }

    private int[] eP() {
        return C0545b.DV(C0545b.DT(this.es, R.raw.newsketch_vs), C0545b.DT(this.es, R.raw.beautypink_fs));
    }

    private void eO() {
        if (!this.eu) {
            this.eu = true;
            this.et = C0545b.DW(this.ev[0], this.ev[1]);
            if (this.et == 0) {
                C0090a.m1e("RotateEffect", "createProgram fail mProgram = 0");
            }
            this.ew = GLES20.glGetAttribLocation(this.et, "aPosition");
            this.ex = GLES20.glGetAttribLocation(this.et, "aTextureCoord");
            this.ey = GLES20.glGetUniformLocation(this.et, "uMVPMatrix");
            this.ez = GLES20.glGetUniformLocation(this.et, "uSTMatrix");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (36197 == c0544a.DJ()) {
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(36197, c0544a.DH());
            eN(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        eO();
    }

    public void release() {
        GLES20.glDeleteShader(this.ev[0]);
        GLES20.glDeleteShader(this.ev[1]);
        GLES20.glDeleteProgram(this.et);
    }

    private void eN(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        eO();
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.et);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.ew, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.ew);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.ex, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.ex);
        GLES20.glUniformMatrix4fv(this.ey, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.ez, 1, false, fArr2, 0);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return 36197;
    }
}
