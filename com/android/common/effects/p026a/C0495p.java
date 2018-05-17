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

public class C0495p extends C0475a {
    private Context f84do;
    private int dp;
    private boolean dq = false;
    private int[] dr = new int[]{0, 0};
    private int ds;
    private int dt;
    private int du;
    private int dv;
    private int dw;
    private int dx;
    private int dy;

    public C0495p(Context context) {
        this.f84do = context;
        this.dr = eD();
    }

    private int[] eD() {
        return C0545b.DV(C0545b.DT(this.f84do, R.raw.simple_vs), C0545b.DT(this.f84do, R.raw.fish_eye_fs));
    }

    private void eC() {
        if (!this.dq) {
            this.dq = true;
            this.dp = C0545b.DW(this.dr[0], this.dr[1]);
            if (this.dp == 0) {
                C0090a.bvo("FishEyeEffect", "mProgram = 0");
            }
            this.ds = GLES20.glGetAttribLocation(this.dp, "aPosition");
            this.dt = GLES20.glGetAttribLocation(this.dp, "aTextureCoord");
            this.dv = GLES20.glGetUniformLocation(this.dp, "uMVPMatrix");
            this.dw = GLES20.glGetUniformLocation(this.dp, "uSTMatrix");
            this.dx = GLES20.glGetUniformLocation(this.dp, "scale");
            this.dy = GLES20.glGetUniformLocation(this.dp, "width");
            this.du = GLES20.glGetUniformLocation(this.dp, "height");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (36197 == c0544a.DJ()) {
            eC();
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(36197, c0544a.DH());
            eB(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        eC();
    }

    public void release() {
        GLES20.glDeleteShader(this.dr[0]);
        GLES20.glDeleteShader(this.dr[1]);
        GLES20.glDeleteProgram(this.dp);
    }

    private void eB(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.dp);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.ds, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.ds);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.dt, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.dt);
        GLES20.glUniformMatrix4fv(this.dv, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.dw, 1, false, fArr2, 0);
        GLES20.glUniform1f(this.dx, 0.7f);
        GLES20.glUniform1f(this.dy, (float) i3);
        GLES20.glUniform1f(this.du, (float) i4);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return 36197;
    }
}
