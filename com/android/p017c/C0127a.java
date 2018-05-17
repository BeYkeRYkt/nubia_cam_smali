package com.android.p017c;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.opengl.Matrix;
import com.android.camera.R;
import com.android.common.gles.C0545b;
import com.android.common.gles.C0547d;
import com.android.common.gles.C0550g;
import com.android.common.p016a.C0126g;
import com.android.common.p016a.C0290f;
import com.android.common.p027g.C0541g;
import com.p010a.C0090a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public class C0127a implements C0126g {
    float aVA = 720.0f;
    float aVB = 720.0f;
    private int aVC;
    private int aVD;
    private int aVE;
    private int aVF;
    private int aVG;
    private int aVH;
    private int aVI;
    private int aVJ;
    private int aVK;
    private int aVL;
    private int aVM;
    private int aVN;
    private int aVO;
    private int aVP;
    private int aVQ;
    float[] aVR = new float[16];
    FloatBuffer aVS;
    private int aVn = 1;
    Context aVo;
    int aVp = 1;
    float[] aVq = new float[16];
    C0547d aVr;
    private int aVs;
    private boolean aVt = false;
    float aVu = 180.0f;
    float aVv = 232.5f;
    float aVw = 2.0f;
    private int[] aVx = new int[]{0, 0};
    float aVy = 540.0f;
    float aVz = 540.0f;

    public C0127a(Context context) {
        this.aVo = context;
        float[] fArr = new float[]{-1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
        this.aVS = ByteBuffer.allocateDirect((fArr.length * 32) / 8).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.aVS.put(fArr).position(0);
        Matrix.setIdentityM(this.aVq, 0);
    }

    public boolean aJ(C0290f c0290f, C0550g c0550g) {
        blN();
        Rect ap = c0290f.ap();
        GLES20.glViewport(ap.left, ap.top, ap.width(), ap.height());
        GLES20.glUseProgram(this.aVs);
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        this.aVS.position(0);
        GLES20.glVertexAttribPointer(this.aVC, 3, 5126, false, 20, this.aVS);
        GLES20.glEnableVertexAttribArray(this.aVC);
        this.aVS.position(3);
        GLES20.glVertexAttribPointer(this.aVD, 2, 5126, false, 20, this.aVS);
        GLES20.glEnableVertexAttribArray(this.aVD);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, c0290f.aj());
        GLES20.glUniform1i(this.aVL, 0);
        GLES20.glUniformMatrix4fv(this.aVH, 1, false, this.aVq, 0);
        c0290f.ae().getTransformMatrix(this.aVR);
        GLES20.glUniformMatrix4fv(this.aVK, 1, false, this.aVR, 0);
        GLES20.glUniform1f(this.aVN, this.aVy);
        GLES20.glUniform1f(this.aVP, this.aVA);
        GLES20.glUniform1f(this.aVM, (float) ap.width());
        GLES20.glUniform1f(this.aVG, (float) ap.height());
        GLES20.glUniform1f(this.aVI, this.aVu);
        GLES20.glUniform1f(this.aVJ, this.aVw);
        GLES20.glUniform1i(this.aVF, this.aVp);
        GLES20.glUniform1f(this.aVO, this.aVz);
        GLES20.glUniform1f(this.aVQ, this.aVB);
        if (this.aVn == 1) {
            GLES20.glUniform4fv(this.aVE, 1, C0541g.XB, 0);
        } else {
            GLES20.glUniform4fv(this.aVE, 1, C0541g.XC, 0);
        }
        GLES20.glDrawArrays(5, 0, 4);
        blO(c0550g);
        c0550g.Ek();
        c0550g.Em(1.0f, -1.0f, 1.0f);
        c0550g.En(this.aVr, this.aVq, (int) (this.aVz - this.aVv), (int) ((this.aVB - this.aVv) + ((float) ap.top)), (int) (this.aVv * 2.0f), (int) (this.aVv * 2.0f));
        c0550g.Eo();
        return true;
    }

    public boolean aL(C0290f c0290f, C0550g c0550g) {
        return false;
    }

    public int aI() {
        return 1000;
    }

    public void aK(C0290f c0290f) {
        release();
    }

    public void release() {
        if (this.aVt) {
            GLES20.glDeleteShader(this.aVx[0]);
            GLES20.glDeleteShader(this.aVx[1]);
            GLES20.glDeleteProgram(this.aVs);
            this.aVt = false;
        }
        if (this.aVr != null) {
            this.aVr.Ec();
            this.aVr = null;
        }
    }

    public void blP(int i) {
        this.aVn = i;
    }

    public void blQ(float f, float f2) {
        this.aVy = f;
        this.aVA = f2;
    }

    public void blR(float f, float f2) {
        this.aVz = f;
        this.aVB = f2;
    }

    public void blS(float f) {
        this.aVu = f;
    }

    private void blO(C0550g c0550g) {
        if (this.aVr == null) {
            Bitmap decodeResource = BitmapFactory.decodeResource(this.aVo.getResources(), R.drawable.nubia_magnifier_mask);
            this.aVr = new C0547d(decodeResource.getWidth(), decodeResource.getHeight());
            this.aVv = (float) (decodeResource.getWidth() / 2);
            this.aVr.Eb(c0550g);
            GLES20.glBindTexture(3553, this.aVr.DH());
            GLES20.glTexParameteri(3553, 10241, 9729);
            GLES20.glTexParameteri(3553, 10240, 9729);
            GLUtils.texImage2D(3553, 0, decodeResource, 0);
            decodeResource.recycle();
        }
    }

    private void blN() {
        if (!this.aVt) {
            this.aVt = true;
            this.aVx = C0545b.DV(C0545b.DT(this.aVo, R.raw.fangda_vs), C0545b.DT(this.aVo, R.raw.fangda_fs));
            this.aVs = C0545b.DW(this.aVx[0], this.aVx[1]);
            if (this.aVs == 0) {
                C0090a.m1e("FangDaRenderer", "mProgram = 0");
            }
            this.aVC = GLES20.glGetAttribLocation(this.aVs, "aPosition");
            this.aVD = GLES20.glGetAttribLocation(this.aVs, "aTextureCoord");
            this.aVH = GLES20.glGetUniformLocation(this.aVs, "uMVPMatrix");
            this.aVK = GLES20.glGetUniformLocation(this.aVs, "uSTMatrix");
            this.aVL = GLES20.glGetUniformLocation(this.aVs, "sTexture");
            this.aVN = GLES20.glGetUniformLocation(this.aVs, "uX");
            this.aVP = GLES20.glGetUniformLocation(this.aVs, "uY");
            this.aVM = GLES20.glGetUniformLocation(this.aVs, "uWidth");
            this.aVG = GLES20.glGetUniformLocation(this.aVs, "uHeight");
            this.aVI = GLES20.glGetUniformLocation(this.aVs, "uRadius");
            this.aVJ = GLES20.glGetUniformLocation(this.aVs, "uRatio");
            this.aVF = GLES20.glGetUniformLocation(this.aVs, "uFangZhi");
            this.aVO = GLES20.glGetUniformLocation(this.aVs, "uXOfShow");
            this.aVQ = GLES20.glGetUniformLocation(this.aVs, "uYOfShow");
            this.aVE = GLES20.glGetUniformLocation(this.aVs, "v4Color");
        }
    }
}
