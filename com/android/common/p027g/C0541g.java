package com.android.common.p027g;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.Matrix;
import com.android.camera.R;
import com.android.common.gles.C0545b;
import com.android.common.gles.C0550g;
import com.android.common.gles.C0556m;
import com.android.common.p016a.C0126g;
import com.android.common.p016a.C0290f;
import com.p010a.C0090a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public class C0541g implements C0126g {
    public static final float[] XB = new float[]{1.0f, 0.0f, 0.0f, 1.0f};
    public static final float[] XC = new float[]{0.0f, 1.0f, 0.0f, 1.0f};
    String TAG = "Fengzhi4";
    private int XD;
    private int XE = 1;
    private Context XF;
    private Object XG = new Object();
    private float[] XH = new float[16];
    private int XI;
    private float[] XJ = new float[16];
    private FloatBuffer XK;
    private int XL;
    private int XM;
    private int XN;
    private int XO;
    private int XP;

    public C0541g(Context context) {
        this.XF = context;
        float[] fArr = new float[]{-1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
        this.XK = ByteBuffer.allocateDirect((fArr.length * 32) / 8).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.XK.put(fArr).position(0);
    }

    public boolean aJ(C0290f c0290f, C0550g c0550g) {
        synchronized (this.XG) {
            this.XD = c0290f.aj();
            c0290f.ae().getTransformMatrix(this.XJ);
            Matrix.setIdentityM(this.XH, 0);
            GLES20.glBindTexture(36197, this.XD);
            if (this.XI == 0) {
                C0090a.m0d(this.TAG, "createProgram");
                this.XI = C0556m.ES(C0545b.DT(this.XF, R.raw.fengzhi_vs), C0545b.DT(this.XF, R.raw.fengzhi_fs));
                if (this.XI == 0) {
                    C0090a.bvo(this.TAG, "mProgram = 0");
                    return false;
                }
                this.XL = GLES20.glGetAttribLocation(this.XI, "aPosition");
                this.XM = GLES20.glGetAttribLocation(this.XI, "aTextureCoord");
                this.XO = GLES20.glGetUniformLocation(this.XI, "uMVPMatrix");
                this.XP = GLES20.glGetUniformLocation(this.XI, "uSTMatrix");
                this.XN = GLES20.glGetUniformLocation(this.XI, "v4Color");
            }
            GLES20.glViewport(c0290f.al().left, c0290f.al().top, c0290f.al().width(), c0290f.al().height());
            GLES20.glUseProgram(this.XI);
            this.XK.position(0);
            GLES20.glVertexAttribPointer(this.XL, 3, 5126, false, 20, this.XK);
            GLES20.glEnableVertexAttribArray(this.XL);
            this.XK.position(3);
            GLES20.glVertexAttribPointer(this.XM, 2, 5126, false, 20, this.XK);
            GLES20.glEnableVertexAttribArray(this.XM);
            GLES20.glUniformMatrix4fv(this.XO, 1, false, this.XH, 0);
            GLES20.glUniformMatrix4fv(this.XP, 1, false, this.XJ, 0);
            if (this.XE == 1) {
                GLES20.glUniform4fv(this.XN, 1, XB, 0);
            } else {
                GLES20.glUniform4fv(this.XN, 1, XC, 0);
            }
            GLES20.glDrawArrays(5, 0, 4);
            return true;
        }
    }

    public boolean aL(C0290f c0290f, C0550g c0550g) {
        return false;
    }

    public int aI() {
        return 100;
    }

    public void aK(C0290f c0290f) {
    }

    public void aff(int i) {
        this.XE = i;
    }
}
