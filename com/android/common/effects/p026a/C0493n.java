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

public class C0493n extends C0475a {
    private Context cO;
    private int cP;
    private int cQ;
    private boolean cR = false;
    private int[] cS = new int[]{0, 0};
    private int cT = 3553;
    private int cU;
    private int cV;
    private int cW;
    private int cX;
    private int cY;
    private int cZ;
    private int da;
    private int db;

    public C0493n(Context context, int i) {
        this.cT = i;
        this.cO = context;
        this.cS = ex();
        this.cP = C0545b.DX(context, R.drawable.beauty_effect_sucai0);
    }

    private int[] ex() {
        return C0545b.DV(C0545b.DT(this.cO, R.raw.newsketch_vs), C0545b.DU(this.cO, R.raw.beautypink_fs, this.cT));
    }

    private void ew() {
        if (!this.cR) {
            this.cR = true;
            this.cQ = C0545b.DW(this.cS[0], this.cS[1]);
            if (this.cQ == 0) {
                C0090a.bvo("PrettyPinkEffect", "mProgram = 0");
            }
            this.cU = GLES20.glGetAttribLocation(this.cQ, "aPosition");
            this.cV = GLES20.glGetAttribLocation(this.cQ, "aTextureCoord");
            this.cZ = GLES20.glGetUniformLocation(this.cQ, "uMVPMatrix");
            this.da = GLES20.glGetUniformLocation(this.cQ, "uSTMatrix");
            this.db = GLES20.glGetUniformLocation(this.cQ, "width");
            this.cY = GLES20.glGetUniformLocation(this.cQ, "height");
            this.cW = GLES20.glGetUniformLocation(this.cQ, "uEAMatrix");
            this.cX = GLES20.glGetUniformLocation(this.cQ, "uFrontTexture");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (dG() == c0544a.DJ()) {
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(c0544a.DJ(), c0544a.DH());
            ev(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        ew();
    }

    public void release() {
        GLES20.glDeleteShader(this.cS[0]);
        GLES20.glDeleteShader(this.cS[1]);
        GLES20.glDeleteProgram(this.cQ);
        GLES20.glDeleteTextures(1, new int[]{this.cP}, 0);
    }

    private void ev(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        ew();
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.cQ);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.cU, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.cU);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.cV, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.cV);
        GLES20.glUniformMatrix4fv(this.cZ, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.da, 1, false, fArr2, 0);
        GLES20.glUniform1f(this.db, (float) i3);
        GLES20.glUniform1f(this.cY, (float) i4);
        float[] fArr3 = new float[16];
        Matrix.setIdentityM(fArr3, 0);
        Matrix.translateM(fArr3, 0, 0.0f, 0.5f, 0.0f);
        Matrix.scaleM(fArr3, 0, 1.0f, -1.0f, 1.0f);
        Matrix.translateM(fArr3, 0, 0.0f, -0.5f, 0.0f);
        GLES20.glUniformMatrix4fv(this.cW, 1, false, fArr3, 0);
        GLES20.glActiveTexture(33987);
        GLES20.glBindTexture(3553, this.cP);
        GLES20.glUniform1i(this.cX, 3);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return this.cT;
    }
}
