package com.android.common.gles;

import android.graphics.RectF;
import android.opengl.GLES20;
import android.opengl.Matrix;
import com.android.common.C0773z;
import com.android.p035d.C0774a;
import com.p010a.C0090a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.Arrays;
import java.util.HashMap;

public class C0550g {
    private int GA = -1;
    private FloatBuffer GB;
    final float[] GC = new float[]{-1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
    private final C0773z GD = new C0773z();
    private float[] GE = new float[16];
    private float[] Gb = new float[]{1.0f, 0.0f, 0.0f, 0.0f};
    private float[] Gc = new float[]{-1.0f, 1.0f, -1.0f, 1.0f};
    private float[] Gd = new float[8];
    private int Ge = 0;
    private int Gf = 0;
    private int Gg = 0;
    C0551h[] Gh = new C0551h[]{new C0553j("aPosition"), new C0552i("uMVPMatrix"), new C0552i("uColor")};
    private int Gi = -1;
    private int[] Gj = null;
    private C0549f Gk = new C0549f();
    private float[] Gl = new float[128];
    C0551h[] Gm = new C0551h[]{new C0553j("aPosition"), new C0552i("uMVPMatrix"), new C0553j("aTextureCoord"), new C0552i("uSTMatrix"), new C0552i("uAlpha")};
    private int Gn = -1;
    private HashMap Go = new HashMap();
    private float[] Gp = new float[16];
    private FloatBuffer Gq;
    final float[] Gr = new float[]{-1.0f, -1.0f, 0.0f, 1.0f, -1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 1.0f, 1.0f, 0.0f};
    private float[] Gs = new float[8];
    private C0773z Gt = new C0773z();
    private float[] Gu = new float[16];
    private HashMap Gv = new HashMap();
    private final float[] Gw = new float[4];
    private final RectF Gx = new RectF();
    private final RectF Gy = new RectF();
    C0551h[] Gz = new C0551h[]{new C0553j("aPosition"), new C0552i("uMVPMatrix"), new C0553j("aTextureCoord"), new C0552i("uSTMatrix"), new C0552i("uAlpha")};

    public C0550g() {
        this.Gd[this.Ge] = 1.0f;
        this.GB = ByteBuffer.allocateDirect((this.GC.length * 32) / 8).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.GB.put(this.GC).position(0);
        this.Gq = ByteBuffer.allocateDirect((this.Gr.length * 32) / 8).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.Gq.put(this.Gr).position(0);
        Matrix.setIdentityM(this.Gl, this.Gf);
        Matrix.setIdentityM(this.Gp, 0);
        Matrix.setIdentityM(this.Gu, 0);
        GLES20.glBlendFunc(770, 771);
        GLES20.glDisable(2884);
    }

    public void Ev(C0544a c0544a) {
        GLES20.glBindTexture(c0544a.DJ(), c0544a.DH());
        C0550g.Ex();
        GLES20.glTexParameteri(c0544a.DJ(), 10242, 33071);
        GLES20.glTexParameteri(c0544a.DJ(), 10243, 33071);
        GLES20.glTexParameterf(c0544a.DJ(), 10241, 9729.0f);
        GLES20.glTexParameterf(c0544a.DJ(), 10240, 9729.0f);
    }

    private int Ey(int i, int i2, C0551h[] c0551hArr) {
        int i3 = 0;
        int glCreateProgram = GLES20.glCreateProgram();
        C0550g.Ex();
        if (glCreateProgram == 0) {
            throw new RuntimeException("Cannot create GL program: " + GLES20.glGetError());
        }
        GLES20.glAttachShader(glCreateProgram, i);
        C0550g.Ex();
        GLES20.glAttachShader(glCreateProgram, i2);
        C0550g.Ex();
        GLES20.glLinkProgram(glCreateProgram);
        C0550g.Ex();
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            C0090a.m1e("GLCanvas", "Could not link program: ");
            C0090a.m1e("GLCanvas", GLES20.glGetProgramInfoLog(glCreateProgram));
            GLES20.glDeleteProgram(glCreateProgram);
            glCreateProgram = 0;
        }
        while (i3 < c0551hArr.length) {
            c0551hArr[i3].EN(glCreateProgram);
            i3++;
        }
        return glCreateProgram;
    }

    private static int EG(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        GLES20.glShaderSource(glCreateShader, str);
        C0550g.Ex();
        GLES20.glCompileShader(glCreateShader);
        C0550g.Ex();
        return glCreateShader;
    }

    private C0551h[] EJ(C0544a c0544a) {
        C0551h[] c0551hArr;
        int i;
        EF();
        if (c0544a.DJ() == 3553) {
            c0551hArr = this.Gz;
            i = this.GA;
        } else {
            c0551hArr = this.Gm;
            i = this.Gn;
        }
        EK(c0544a, i, c0551hArr);
        return c0551hArr;
    }

    private C0551h[] EI(C0544a c0544a, String str) {
        C0551h[] c0551hArr;
        int Ey;
        if (this.Go.get(str) == null || this.Gv.get(str) == null) {
            if (this.Go.get(str) != null) {
                this.Go.remove(str);
            }
            if (this.Gv.get(str) != null) {
                this.Gv.remove(str);
            }
            c0551hArr = new C0551h[]{new C0553j("aPosition"), new C0552i("uMVPMatrix"), new C0553j("aTextureCoord"), new C0552i("uSTMatrix"), new C0552i("uAlpha")};
            Ey = Ey(C0550g.EG(35633, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).st;\n}\n"), C0550g.EG(35632, str), c0551hArr);
            this.Go.put(str, Integer.valueOf(Ey));
            this.Gv.put(str, c0551hArr);
        } else {
            int intValue = ((Integer) this.Go.get(str)).intValue();
            c0551hArr = (C0551h[]) this.Gv.get(str);
            Ey = intValue;
        }
        EK(c0544a, Ey, c0551hArr);
        return c0551hArr;
    }

    private void EK(C0544a c0544a, int i, C0551h[] c0551hArr) {
        boolean z = true;
        GLES20.glUseProgram(i);
        C0550g.Ex();
        if (!c0544a.DO() && EE() >= 0.95f) {
            z = false;
        }
        ED(z);
        this.GB.position(0);
        GLES20.glVertexAttribPointer(c0551hArr[0].GF, 3, 5126, false, 20, this.GB);
        C0550g.Ex();
        this.GB.position(3);
        GLES20.glVertexAttribPointer(c0551hArr[2].GF, 2, 5126, false, 20, this.GB);
        C0550g.Ex();
        GLES20.glUniform1f(c0551hArr[4].GF, EE());
        C0550g.Ex();
        GLES20.glActiveTexture(33984);
        C0550g.Ex();
        Ev(c0544a);
    }

    private void EM(C0551h[] c0551hArr, int i, int i2, int i3, int i4, float[] fArr) {
        GLES20.glViewport(i, i2, i3, i4);
        C0550g.Ex();
        Matrix.setIdentityM(this.Gp, 0);
        Matrix.setIdentityM(this.GE, 0);
        if (EH()) {
            Matrix.orthoM(this.Gp, 0, fArr[0], fArr[1], fArr[2], fArr[3], 3.0f, 6.0f);
        } else {
            Matrix.frustumM(this.Gp, 0, fArr[0], fArr[1], fArr[2], fArr[3], 3.0f, 6.0f);
        }
        Matrix.setLookAtM(this.GE, 0, 0.0f, 0.0f, 3.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
        Matrix.multiplyMM(this.Gl, this.Gf, this.GE, 0, this.Gl, this.Gf);
        Matrix.multiplyMM(this.Gl, this.Gf, this.Gp, 0, this.Gl, this.Gf);
        GLES20.glUniformMatrix4fv(c0551hArr[1].GF, 1, false, this.Gl, this.Gf);
        C0550g.Ex();
    }

    private void EB(C0544a c0544a, float[] fArr, RectF rectF) {
        C0551h[] EJ = EJ(c0544a);
        EM(EJ, (int) rectF.left, (int) rectF.top, (int) rectF.width(), (int) rectF.height(), c0544a.DI());
        GLES20.glEnableVertexAttribArray(EJ[0].GF);
        C0550g.Ex();
        GLES20.glEnableVertexAttribArray(EJ[2].GF);
        C0550g.Ex();
        GLES20.glUniformMatrix4fv(EJ[3].GF, 1, false, fArr, 0);
        C0550g.Ex();
        GLES20.glDrawArrays(5, 0, 4);
        C0550g.Ex();
        GLES20.glDisableVertexAttribArray(EJ[0].GF);
        C0550g.Ex();
        GLES20.glDisableVertexAttribArray(EJ[2].GF);
        C0550g.Ex();
    }

    private void EC(C0544a c0544a, float[] fArr, RectF rectF, String str) {
        C0551h[] EI = EI(c0544a, str);
        EM(EI, (int) rectF.left, (int) rectF.top, (int) rectF.width(), (int) rectF.height(), c0544a.DI());
        GLES20.glEnableVertexAttribArray(EI[0].GF);
        C0550g.Ex();
        GLES20.glEnableVertexAttribArray(EI[2].GF);
        C0550g.Ex();
        GLES20.glUniformMatrix4fv(EI[3].GF, 1, false, fArr, 0);
        C0550g.Ex();
        GLES20.glDrawArrays(5, 0, 4);
        C0550g.Ex();
        GLES20.glDisableVertexAttribArray(EI[0].GF);
        C0550g.Ex();
        GLES20.glDisableVertexAttribArray(EI[2].GF);
        C0550g.Ex();
    }

    public void En(C0544a c0544a, float[] fArr, int i, int i2, int i3, int i4) {
        if (i3 > 0 && i4 > 0) {
            this.Gy.set((float) i, (float) i2, (float) (i + i3), (float) (i2 + i4));
            EB(c0544a, fArr, this.Gy);
        }
    }

    public void Es(C0544a c0544a, String str, float[] fArr, int i, int i2, int i3, int i4) {
        if (i3 > 0 && i4 > 0) {
            this.Gy.set((float) i, (float) i2, (float) (i + i3), (float) (i2 + i4));
            EC(c0544a, fArr, this.Gy, str);
        }
    }

    public void Eu(C0544a c0544a, int i, int i2) {
        int DJ = c0544a.DJ();
        GLES20.glBindTexture(DJ, c0544a.DH());
        C0550g.Ex();
        GLES20.glTexImage2D(DJ, 0, i, c0544a.DL(), c0544a.DK(), 0, i, i2, null);
    }

    public void Ep(C0547d c0547d) {
        if (this.Gj == null) {
            this.Gj = new int[1];
            GLES20.glGenFramebuffers(1, this.Gj, 0);
        }
        C0550g.Ex();
        GLES20.glBindFramebuffer(36160, this.Gj[0]);
        C0550g.Ex();
        if (!c0547d.DN()) {
            c0547d.Eb(this);
        }
        GLES20.glFramebufferTexture2D(36160, 36064, c0547d.DJ(), c0547d.DH(), 0);
        C0550g.Ex();
        Ez();
    }

    public void Eq() {
        GLES20.glBindFramebuffer(36160, 0);
        C0550g.Ex();
        C0550g.Ex();
    }

    public void release() {
        if (this.Gj != null) {
            GLES20.glDeleteFramebuffers(1, this.Gj, 0);
            this.Gj = null;
        }
    }

    public void Ew() {
        EA(this.Gb);
    }

    public void EA(float[] fArr) {
        GLES20.glClearColor(fArr[1], fArr[2], fArr[3], fArr[0]);
        C0550g.Ex();
        GLES20.glClear(16384);
        C0550g.Ex();
    }

    public static void Ex() {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            String str = "";
            switch (glGetError) {
                case 1280:
                    str = "GL_INVALID_ENUM";
                    break;
                case 1281:
                    str = "GL_INVALID_VALUE";
                    break;
                case 1282:
                    str = "GL_INVALID_OPERATION";
                    break;
                case 1285:
                    str = "GL_OUT_OF_MEMORY";
                    break;
                case 1286:
                    str = "GL_INVALID_FRAMEBUFFER_OPERATION";
                    break;
            }
            C0090a.bvi("GLCanvas", "GL error: " + glGetError + " " + str, new Throwable());
        }
    }

    private void Ez() {
        int glCheckFramebufferStatus = GLES20.glCheckFramebufferStatus(36160);
        if (glCheckFramebufferStatus != 36053) {
            String str = "";
            switch (glCheckFramebufferStatus) {
                case 36054:
                    str = "GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT";
                    break;
                case 36055:
                    str = "GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT";
                    break;
                case 36057:
                    str = "GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS";
                    break;
                case 36061:
                    str = "GL_FRAMEBUFFER_UNSUPPORTED";
                    break;
            }
            throw new RuntimeException(str + ":" + Integer.toHexString(glCheckFramebufferStatus));
        }
    }

    public void Er(float f, float f2, float f3, float f4) {
        this.Gs[this.Ge] = f;
        Matrix.rotateM(this.Gl, this.Gf, f, f2, f3, f4);
    }

    public void El(float f, float f2, float f3) {
        Matrix.translateM(this.Gl, this.Gf, f, f2, f3);
    }

    public float EE() {
        return this.Gd[this.Ge];
    }

    public void setAlpha(float f) {
        this.Gd[this.Ge] = f;
    }

    public void Ek() {
        EL(-1);
    }

    public void EL(int i) {
        Object obj;
        Object obj2 = 1;
        if ((i & 1) == 1) {
            obj = 1;
        } else {
            obj = null;
        }
        if (obj != null) {
            float EE = EE();
            this.Ge++;
            if (this.Gd.length <= this.Ge) {
                this.Gd = Arrays.copyOf(this.Gd, this.Gd.length * 2);
            }
            this.Gd[this.Ge] = EE;
        }
        if ((i & 2) == 2) {
            obj = 1;
        } else {
            obj = null;
        }
        if (obj != null) {
            int i2 = this.Gf;
            this.Gf += 16;
            if (this.Gl.length <= this.Gf) {
                this.Gl = Arrays.copyOf(this.Gl, this.Gl.length * 2);
            }
            C0774a.boH(this.Gl, i2, this.Gl, this.Gf, 16);
        }
        if ((i & 4) != 4) {
            obj2 = null;
        }
        if (obj2 != null) {
            float f = this.Gs[this.Gg];
            this.Gg++;
            if (this.Gs.length <= this.Gg) {
                this.Gs = Arrays.copyOf(this.Gs, this.Gs.length * 2);
            }
            this.Gs[this.Gg] = f;
        }
        this.Gt.avz(i);
    }

    public void Eo() {
        Object obj;
        Object obj2 = 1;
        int avC = this.Gt.avC();
        if ((avC & 1) == 1) {
            obj = 1;
        } else {
            obj = null;
        }
        if (obj != null) {
            this.Ge--;
        }
        if ((avC & 2) == 2) {
            obj = 1;
        } else {
            obj = null;
        }
        if (obj != null) {
            this.Gf -= 16;
        }
        if ((avC & 4) != 4) {
            obj2 = null;
        }
        if (obj2 != null) {
            this.Gg--;
        }
    }

    public void Em(float f, float f2, float f3) {
        Matrix.scaleM(this.Gl, this.Gf, f, f2, f3);
    }

    private void ED(boolean z) {
        if (z) {
            GLES20.glEnable(3042);
            C0550g.Ex();
            return;
        }
        GLES20.glDisable(3042);
        C0550g.Ex();
    }

    private boolean EH() {
        if (Math.abs(this.Gs[this.Gg] - 180.0f) < 0.001f || Math.abs(this.Gs[this.Gg]) < 0.001f || Math.abs(this.Gs[this.Gg] + 180.0f) < 0.001f) {
            return true;
        }
        return false;
    }

    protected C0549f Et() {
        return this.Gk;
    }

    private void EF() {
        if (this.GA == -1 && this.Gn == -1 && this.Gi == -1) {
            int EG = C0550g.EG(35633, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n}\n");
            int EG2 = C0550g.EG(35633, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).st;\n}\n");
            int EG3 = C0550g.EG(35632, "precision mediump float;\nuniform vec4 uColor;\nvoid main() {\n  gl_FragColor = uColor;\n}\n");
            int EG4 = C0550g.EG(35632, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform samplerExternalOES uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n");
            this.GA = Ey(EG2, C0550g.EG(35632, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform float uAlpha;\nuniform sampler2D uTextureSampler;\nvoid main() {\n  gl_FragColor = texture2D(uTextureSampler, vTextureCoord);\n  gl_FragColor *= uAlpha;\n}\n"), this.Gz);
            this.Gn = Ey(EG2, EG4, this.Gm);
            this.Gi = Ey(EG, EG3, this.Gh);
        }
    }
}
