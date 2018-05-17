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

public class C0498s extends C0475a {
    private Context ef;
    private int eg;
    private int eh;
    private int ei;
    private boolean ej = false;
    private int[] ek = new int[]{0, 0};
    private int el;
    private int em;
    private int en;
    private int eo;
    private int ep;
    private int eq;
    private int er;

    public C0498s(Context context) {
        this.ef = context;
        this.ek = eM();
        this.eh = C0545b.DX(context, R.drawable.fun_effect_colorpaint);
        this.eg = C0545b.DX(context, R.drawable.fun_effect_area_effect);
    }

    private int[] eM() {
        return C0545b.DV(C0545b.DT(this.ef, R.raw.color_paint_vs), C0545b.DT(this.ef, R.raw.color_paint_fs));
    }

    private void eL() {
        if (!this.ej) {
            this.ej = true;
            this.ei = C0545b.DW(this.ek[0], this.ek[1]);
            if (this.ei == 0) {
                C0090a.bvo("ColorPaintEffect", "mProgram = 0");
            }
            this.el = GLES20.glGetAttribLocation(this.ei, "aPosition");
            this.em = GLES20.glGetAttribLocation(this.ei, "aTextureCoord");
            this.eq = GLES20.glGetUniformLocation(this.ei, "uMVPMatrix");
            this.er = GLES20.glGetUniformLocation(this.ei, "uSTMatrix");
            this.en = GLES20.glGetUniformLocation(this.ei, "uEAMatrix");
            this.ep = GLES20.glGetUniformLocation(this.ei, "uFrontTexture");
            this.eo = GLES20.glGetUniformLocation(this.ei, "uEffectAreaTexture");
        }
    }

    public void dF(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, C0544a c0544a, C0550g c0550g) {
        if (36197 == c0544a.DJ()) {
            eL();
            Matrix.setIdentityM(fArr, 0);
            GLES20.glBindTexture(36197, c0544a.DH());
            eK(fArr, fArr2, floatBuffer, i, i2, i3, i4, c0544a.DH());
        }
    }

    public void dJ() {
        eL();
    }

    public void release() {
        GLES20.glDeleteShader(this.ek[0]);
        GLES20.glDeleteShader(this.ek[1]);
        GLES20.glDeleteProgram(this.ei);
        GLES20.glDeleteTextures(2, new int[]{this.eh, this.eg}, 0);
    }

    private void eK(float[] fArr, float[] fArr2, FloatBuffer floatBuffer, int i, int i2, int i3, int i4, int i5) {
        GLES20.glViewport(i, i2, i3, i4);
        GLES20.glUseProgram(this.ei);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.el, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.el);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.em, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.em);
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, this.eg);
        GLES20.glUniform1i(this.eo, 2);
        GLES20.glActiveTexture(33987);
        GLES20.glBindTexture(3553, this.eh);
        GLES20.glUniform1i(this.ep, 3);
        float[] fArr3 = new float[16];
        Matrix.setIdentityM(fArr3, 0);
        Matrix.translateM(fArr3, 0, 0.0f, 0.5f, 0.0f);
        Matrix.scaleM(fArr3, 0, 1.0f, -1.0f, 1.0f);
        Matrix.translateM(fArr3, 0, 0.0f, -0.5f, 0.0f);
        GLES20.glUniformMatrix4fv(this.en, 1, false, fArr3, 0);
        GLES20.glUniformMatrix4fv(this.eq, 1, false, fArr, 0);
        GLES20.glUniformMatrix4fv(this.er, 1, false, fArr2, 0);
        GLES20.glDrawArrays(5, 0, 4);
    }

    public int dG() {
        return 36197;
    }
}
