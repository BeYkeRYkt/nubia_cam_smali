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

public class C0487h extends C0475a {
    private Context bH;
    private int bI;
    private boolean bJ = false;
    private int[] bK = new int[]{0, 0};
    private int bL;
    private int bM;
    private int bN;
    private int bO;
    private int bP;

    public C0487h(Context context) {
        this.bH = context;
        this.bK = ee();
    }

    private int[] ee() {
        return C0545b.DV(C0545b.DT(this.bH, R.raw.simple_vs), C0545b.DT(this.bH, R.raw.temperature_fs));
    }

    private void ed() {
        if (!this.bJ) {
            this.bJ = true;
            this.bI = C0545b.DW(this.bK[0], this.bK[1]);
            if (this.bI == 0) {
                C0090a.bvo("TemperatureEffect", "mProgram = 0");
            }
            this.bL = GLES20.glGetAttribLocation(this.bI, "aPosition");
            this.bM = GLES20.glGetAttribLocation(this.bI, "aTextureCoord");
            this.bN = GLES20.glGetUniformLocation(this.bI, "uMVPMatrix");
            this.bO = GLES20.glGetUniformLocation(this.bI, "uSTMatrix");
            this.bP = GLES20.glGetUniformLocation(this.bI, "scale");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (36197 == c0544a.DJ()) {
            ed();
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(36197, c0544a.DH());
            ec(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        ed();
    }

    public void release() {
        GLES20.glDeleteShader(this.bK[0]);
        GLES20.glDeleteShader(this.bK[1]);
        GLES20.glDeleteProgram(this.bI);
    }

    private void ec(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.bI);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.bL, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.bL);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.bM, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.bM);
        GLES20.glUniformMatrix4fv(this.bN, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.bO, 1, false, fArr2, 0);
        GLES20.glUniform1f(this.bP, 0.9f);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return 36197;
    }
}
