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

public class C0542h implements C0126g {
    String TAG = "ColorFilterRenderer";
    private int XQ;
    private int XR = 0;
    private Context XS;
    private Object XT = new Object();
    private float[] XU = new float[16];
    private int XV;
    private float[] XW = new float[16];
    private FloatBuffer XX;
    private int XY;
    private int XZ;
    private int Ya;
    private int Yb;
    private int Yc;

    public C0542h(Context context) {
        this.XS = context;
        float[] fArr = new float[]{-1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
        this.XX = ByteBuffer.allocateDirect((fArr.length * 32) / 8).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.XX.put(fArr).position(0);
    }

    public boolean aJ(C0290f c0290f, C0550g c0550g) {
        synchronized (this.XT) {
            this.XQ = c0290f.aj();
            c0290f.ae().getTransformMatrix(this.XW);
            Matrix.setIdentityM(this.XU, 0);
            GLES20.glBindTexture(36197, this.XQ);
            if (this.XV == 0) {
                C0090a.m0d(this.TAG, "createProgram");
                this.XV = C0556m.ES(C0545b.DT(this.XS, R.raw.simple_vs), C0545b.DT(this.XS, R.raw.color_filter_fs));
                if (this.XV == 0) {
                    C0090a.bvo(this.TAG, "mProgram = 0");
                    return false;
                }
                this.XY = GLES20.glGetAttribLocation(this.XV, "aPosition");
                this.XZ = GLES20.glGetAttribLocation(this.XV, "aTextureCoord");
                this.Yb = GLES20.glGetUniformLocation(this.XV, "uMVPMatrix");
                this.Yc = GLES20.glGetUniformLocation(this.XV, "uSTMatrix");
                this.Ya = GLES20.glGetUniformLocation(this.XV, "uColorFilter");
            }
            GLES20.glViewport(c0290f.al().left, c0290f.al().top, c0290f.al().width(), c0290f.al().height());
            GLES20.glUseProgram(this.XV);
            this.XX.position(0);
            GLES20.glVertexAttribPointer(this.XY, 3, 5126, false, 20, this.XX);
            GLES20.glEnableVertexAttribArray(this.XY);
            this.XX.position(3);
            GLES20.glVertexAttribPointer(this.XZ, 2, 5126, false, 20, this.XX);
            GLES20.glEnableVertexAttribArray(this.XZ);
            GLES20.glUniformMatrix4fv(this.Yb, 1, false, this.XU, 0);
            GLES20.glUniformMatrix4fv(this.Yc, 1, false, this.XW, 0);
            GLES20.glUniform1i(this.Ya, this.XR);
            GLES20.glDrawArrays(5, 0, 4);
            return true;
        }
    }

    public boolean aL(C0290f c0290f, C0550g c0550g) {
        return false;
    }

    public int aI() {
        return 1;
    }

    public void afg(int i) {
        this.XR = i;
    }

    public void aK(C0290f c0290f) {
    }
}
