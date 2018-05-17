package com.android.common.p027g;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.Matrix;
import com.android.common.appService.C0329e;
import com.android.common.gles.C0550g;
import com.android.common.gles.C0555l;
import com.android.common.gles.C0556m;
import com.android.common.p016a.C0126g;
import com.android.common.p016a.C0290f;
import com.p010a.C0090a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public class C0540f implements C0126g {
    private int XA;
    private C0329e Xn = null;
    private int Xo;
    private C0555l Xp = null;
    private Object Xq = new Object();
    private float[] Xr = new float[16];
    private int Xs;
    private float[] Xt = new float[16];
    private SurfaceTexture Xu = null;
    private FloatBuffer Xv;
    private int Xw;
    private int Xx;
    private int Xy;
    private int Xz;

    public C0540f(Context context, C0329e c0329e) {
        this.Xn = c0329e;
        float[] fArr = new float[]{-1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
        this.Xv = ByteBuffer.allocateDirect((fArr.length * 32) / 8).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.Xv.put(fArr).position(0);
        Matrix.setIdentityM(this.Xt, 0);
    }

    public boolean aJ(C0290f c0290f, C0550g c0550g) {
        synchronized (this.Xq) {
            this.Xo = c0290f.aj();
            c0290f.ae().getTransformMatrix(this.Xt);
            Matrix.setIdentityM(this.Xr, 0);
            GLES20.glBindTexture(36197, this.Xo);
            if (this.Xs == 0) {
                this.Xs = C0556m.ES("uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n\tgl_Position =  uMVPMatrix * aPosition;\n\tvTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n", "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvec4 color;\nuniform vec4 uColorRatio;\nvec4 temp;\nfloat f = 1.0;\nvec4 pass2(vec2 pos){\n    if(all(lessThan(uColorRatio.rgb, vec3(0.001, 0.001, 0.001)))        && all(greaterThan(uColorRatio.rgb, vec3(-0.001, -0.001, -0.001)))){\n        temp = texture2D(sTexture, pos);\n    } else {\n        temp = texture2D(sTexture, pos) * uColorRatio;\n        temp.a = 1.0;\n    }\n    return temp;\n}\nvoid main() {\n\t vec2 pos = vTextureCoord.st;\n\t color = pass2(pos);\n\t gl_FragColor = color;\n}\n");
                if (this.Xs == 0) {
                    C0090a.bvo("0725", "mProgram = 0");
                }
                this.Xw = GLES20.glGetAttribLocation(this.Xs, "aPosition");
                this.Xx = GLES20.glGetAttribLocation(this.Xs, "aTextureCoord");
                this.Xz = GLES20.glGetUniformLocation(this.Xs, "uMVPMatrix");
                this.XA = GLES20.glGetUniformLocation(this.Xs, "uSTMatrix");
                this.Xy = GLES20.glGetUniformLocation(this.Xs, "uColorRatio");
            }
            GLES20.glViewport(c0290f.al().left, c0290f.al().top, c0290f.al().width(), c0290f.al().height());
            GLES20.glUseProgram(this.Xs);
            GLES20.glEnable(3042);
            GLES20.glBlendFunc(770, 771);
            this.Xv.position(0);
            GLES20.glVertexAttribPointer(this.Xw, 3, 5126, false, 20, this.Xv);
            GLES20.glEnableVertexAttribArray(this.Xw);
            this.Xv.position(3);
            GLES20.glVertexAttribPointer(this.Xx, 2, 5126, false, 20, this.Xv);
            GLES20.glEnableVertexAttribArray(this.Xx);
            GLES20.glUniformMatrix4fv(this.Xz, 1, false, this.Xr, 0);
            GLES20.glUniformMatrix4fv(this.XA, 1, false, this.Xt, 0);
            GLES20.glDrawArrays(5, 0, 4);
            GLES20.glUniform4fv(this.Xy, 1, this.Xn.Te().Pa(), 0);
        }
        return true;
    }

    public boolean aL(C0290f c0290f, C0550g c0550g) {
        synchronized (this.Xq) {
        }
        return true;
    }

    public int aI() {
        return 0;
    }

    public void aK(C0290f c0290f) {
    }
}
