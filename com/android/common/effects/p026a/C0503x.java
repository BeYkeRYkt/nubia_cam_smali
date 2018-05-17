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

public class C0503x extends C0475a {
    private final float[] fc = new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    private Context fd;
    private int fe;
    private int ff;
    private int fg = 0;
    private int fh;
    private boolean fi = false;
    private int fj;
    private int[] fk = new int[]{0, 0};
    private int fl;
    private int fm;
    private int fn;
    private int fo;
    private int fp;
    private int fq;
    private int fr;
    private int fs;
    private int ft;
    private int fu;
    private int fv;
    private int fw;
    private int fx;
    private final float[] fy = new float[]{0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};

    public C0503x(Context context) {
        this.fd = context;
        this.fk = fb();
        this.fl = C0545b.DX(context, R.drawable.vignette);
        this.fj = C0545b.DX(context, R.drawable.oldfilmscratches);
        this.fe = C0545b.DX(context, R.drawable.oldfilmdust);
        this.ff = C0545b.DX(context, R.drawable.noise);
    }

    private int[] fb() {
        return C0545b.DV(C0545b.DT(this.fd, R.raw.simple_vs), C0545b.DT(this.fd, R.raw.oldfilm_fs));
    }

    private void fa() {
        if (!this.fi) {
            this.fi = true;
            this.fh = C0545b.DW(this.fk[0], this.fk[1]);
            if (this.fh == 0) {
                C0090a.bvo("OldFilmEffect", "mProgram = 0");
            }
            this.fm = GLES20.glGetAttribLocation(this.fh, "aPosition");
            this.fn = GLES20.glGetAttribLocation(this.fh, "aTextureCoord");
            this.fq = GLES20.glGetUniformLocation(this.fh, "uMVPMatrix");
            this.ft = GLES20.glGetUniformLocation(this.fh, "uSTMatrix");
            this.fs = GLES20.glGetUniformLocation(this.fh, "uR90Matrix");
            this.fx = GLES20.glGetUniformLocation(this.fh, "width");
            this.fp = GLES20.glGetUniformLocation(this.fh, "height");
            this.fv = GLES20.glGetUniformLocation(this.fh, "offset");
            this.fw = GLES20.glGetUniformLocation(this.fh, "uVignetteTexture");
            this.fu = GLES20.glGetUniformLocation(this.fh, "uScratchesTexture");
            this.fo = GLES20.glGetUniformLocation(this.fh, "uDustTexture");
            this.fr = GLES20.glGetUniformLocation(this.fh, "uNoiseTexture");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (36197 == c0544a.DJ()) {
            fa();
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(36197, c0544a.DH());
            eZ(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        fa();
    }

    public void release() {
        GLES20.glDeleteShader(this.fk[0]);
        GLES20.glDeleteShader(this.fk[1]);
        GLES20.glDeleteProgram(this.fh);
        GLES20.glDeleteTextures(1, new int[]{this.fl}, 0);
        GLES20.glDeleteTextures(1, new int[]{this.fj}, 0);
        GLES20.glDeleteTextures(1, new int[]{this.fe}, 0);
        GLES20.glDeleteTextures(1, new int[]{this.ff}, 0);
    }

    private void eZ(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.fh);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.fm, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.fm);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.fn, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.fn);
        GLES20.glUniformMatrix4fv(this.fq, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.ft, 1, false, fArr2, 0);
        GLES20.glUniform1f(this.fx, (float) i3);
        GLES20.glUniform1f(this.fp, (float) i4);
        GLES20.glUniform1f(this.fv, (float) (System.currentTimeMillis() % 100));
        if (this.fg % 180 == 0) {
            GLES20.glUniformMatrix4fv(this.fs, 1, false, this.fy, 0);
        } else {
            GLES20.glUniformMatrix4fv(this.fs, 1, false, this.fc, 0);
        }
        GLES20.glActiveTexture(33987);
        GLES20.glBindTexture(3553, this.fl);
        GLES20.glUniform1i(this.fw, 3);
        GLES20.glActiveTexture(33988);
        GLES20.glBindTexture(3553, this.fj);
        GLES20.glUniform1i(this.fu, 4);
        GLES20.glActiveTexture(33989);
        GLES20.glBindTexture(3553, this.fe);
        GLES20.glUniform1i(this.fo, 5);
        GLES20.glActiveTexture(33990);
        GLES20.glBindTexture(3553, this.ff);
        GLES20.glUniform1i(this.fr, 6);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return 36197;
    }

    public void fc(int i, boolean z) {
        this.fg = i;
    }
}
