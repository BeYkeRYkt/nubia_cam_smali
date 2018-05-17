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

public class C0492m extends C0475a {
    private Context cG;
    private int cH;
    private boolean cI = false;
    private int[] cJ = new int[]{0, 0};
    private int cK;
    private int cL;
    private int cM;
    private int cN;

    public C0492m(Context context) {
        this.cG = context;
        this.cJ = eu();
    }

    private int[] eu() {
        return C0545b.DV(C0545b.DT(this.cG, R.raw.simple_vs), C0545b.DT(this.cG, R.raw.gray_scale_fs));
    }

    private void et() {
        if (!this.cI) {
            this.cI = true;
            this.cH = C0545b.DW(this.cJ[0], this.cJ[1]);
            if (this.cH == 0) {
                C0090a.bvo("GrayScaleEffect", "mProgram = 0");
            }
            this.cK = GLES20.glGetAttribLocation(this.cH, "aPosition");
            this.cL = GLES20.glGetAttribLocation(this.cH, "aTextureCoord");
            this.cM = GLES20.glGetUniformLocation(this.cH, "uMVPMatrix");
            this.cN = GLES20.glGetUniformLocation(this.cH, "uSTMatrix");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (36197 == c0544a.DJ()) {
            et();
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(36197, c0544a.DH());
            es(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        et();
    }

    public void release() {
        GLES20.glDeleteShader(this.cJ[0]);
        GLES20.glDeleteShader(this.cJ[1]);
        GLES20.glDeleteProgram(this.cH);
    }

    private void es(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.cH);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.cK, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.cK);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.cL, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.cL);
        GLES20.glUniformMatrix4fv(this.cM, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.cN, 1, false, fArr2, 0);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return 36197;
    }
}
