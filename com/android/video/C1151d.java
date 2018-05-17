package com.android.video;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.view.Surface;
import com.android.camera.R;
import com.android.common.gles.C0545b;
import com.android.common.gles.C0548e;
import com.android.common.gles.C0550g;
import com.android.common.p016a.C0126g;
import com.android.common.p016a.C0290f;
import com.p010a.C0090a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public class C1151d implements C0126g {
    private static String TAG = "VideoEffectRenderer";
    private static final /* synthetic */ int[] aPM = null;
    private Surface aPA;
    private int aPB;
    private int aPC;
    private long aPD = 0;
    private FloatBuffer aPE;
    private FloatBuffer aPF;
    private FloatBuffer aPG;
    private int aPH;
    private int aPI;
    private int aPJ;
    private int aPK;
    private int aPL;
    private SurfaceTexture aPi;
    private Context aPj;
    private EGLConfig aPk;
    private EGLContext aPl;
    private EGLDisplay aPm;
    private EGLSurface aPn;
    private float[] aPo = new float[16];
    private VideoEffectRenderer$Mirror aPp = VideoEffectRenderer$Mirror.NONE;
    private boolean aPq = false;
    private boolean aPr = false;
    private long aPs = 0;
    private int aPt;
    private boolean aPu = false;
    private float[] aPv = new float[16];
    private EGLSurface aPw;
    private EGLSurface aPx;
    private int[] aPy = new int[]{0, 0};
    private Boolean aPz = Boolean.valueOf(false);

    private static /* synthetic */ int[] bfO() {
        if (aPM != null) {
            return aPM;
        }
        int[] iArr = new int[VideoEffectRenderer$Mirror.values().length];
        try {
            iArr[VideoEffectRenderer$Mirror.LANDSCAPE.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            iArr[VideoEffectRenderer$Mirror.NONE.ordinal()] = 3;
        } catch (NoSuchFieldError e2) {
        }
        try {
            iArr[VideoEffectRenderer$Mirror.VERTICAL.ordinal()] = 2;
        } catch (NoSuchFieldError e3) {
        }
        aPM = iArr;
        return iArr;
    }

    public C1151d(Context context) {
        this.aPj = context;
        Matrix.setIdentityM(this.aPv, 0);
        Matrix.setIdentityM(this.aPo, 0);
        bfB();
    }

    public boolean aJ(C0290f c0290f, C0550g c0550g) {
        return false;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean aL(com.android.common.p016a.C0290f r7, com.android.common.gles.C0550g r8) {
        /*
        r6 = this;
        r2 = 0;
        r6.bfC();
        r1 = r6.aPz;
        monitor-enter(r1);
        r0 = r6.aPz;	 Catch:{ all -> 0x0079 }
        r0 = r0.booleanValue();	 Catch:{ all -> 0x0079 }
        if (r0 == 0) goto L_0x001e;
    L_0x000f:
        r6.bfJ(r7);	 Catch:{ all -> 0x0079 }
        r0 = r6.aPq;	 Catch:{ all -> 0x0079 }
        if (r0 == 0) goto L_0x001e;
    L_0x0016:
        r0 = r6.aPA;	 Catch:{ all -> 0x0079 }
        r6.bfz(r0);	 Catch:{ all -> 0x0079 }
        r0 = 0;
        r6.aPq = r0;	 Catch:{ all -> 0x0079 }
    L_0x001e:
        r0 = r6.aPz;	 Catch:{ all -> 0x0079 }
        r0 = r0.booleanValue();	 Catch:{ all -> 0x0079 }
        if (r0 == 0) goto L_0x002a;
    L_0x0026:
        r0 = r6.aPr;	 Catch:{ all -> 0x0079 }
        if (r0 == 0) goto L_0x002c;
    L_0x002a:
        monitor-exit(r1);
        return r2;
    L_0x002c:
        r7.aq(r8);	 Catch:{ all -> 0x0079 }
        r6.bfK();	 Catch:{ all -> 0x0079 }
        r0 = r6.aPE;	 Catch:{ all -> 0x0079 }
        r2 = com.android.video.C1151d.bfO();	 Catch:{ all -> 0x0079 }
        r3 = r6.aPp;	 Catch:{ all -> 0x0079 }
        r3 = r3.ordinal();	 Catch:{ all -> 0x0079 }
        r2 = r2[r3];	 Catch:{ all -> 0x0079 }
        switch(r2) {
            case 1: goto L_0x0064;
            case 2: goto L_0x0067;
            default: goto L_0x0043;
        };	 Catch:{ all -> 0x0079 }
    L_0x0043:
        r6.bfA(r7, r0);	 Catch:{ all -> 0x0079 }
        r0 = com.android.common.C0616j.ahq;	 Catch:{ all -> 0x0079 }
        if (r0 != 0) goto L_0x0050;
    L_0x004a:
        r0 = android.os.Build.VERSION.SDK_INT;	 Catch:{ all -> 0x0079 }
        r2 = 23;
        if (r0 <= r2) goto L_0x006a;
    L_0x0050:
        r0 = r7.ae();	 Catch:{ all -> 0x0079 }
        r2 = r0.getTimestamp();	 Catch:{ all -> 0x0079 }
        r6.bfL(r2);	 Catch:{ all -> 0x0079 }
    L_0x005b:
        r6.bfN();	 Catch:{ all -> 0x0079 }
        r6.bfH();	 Catch:{ all -> 0x0079 }
        r0 = 1;
        monitor-exit(r1);
        return r0;
    L_0x0064:
        r0 = r6.aPF;	 Catch:{ all -> 0x0079 }
        goto L_0x0043;
    L_0x0067:
        r0 = r6.aPG;	 Catch:{ all -> 0x0079 }
        goto L_0x0043;
    L_0x006a:
        r0 = r7.ae();	 Catch:{ all -> 0x0079 }
        r2 = r0.getTimestamp();	 Catch:{ all -> 0x0079 }
        r4 = r6.aPD;	 Catch:{ all -> 0x0079 }
        r2 = r2 - r4;
        r6.bfL(r2);	 Catch:{ all -> 0x0079 }
        goto L_0x005b;
    L_0x0079:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.video.d.aL(com.android.common.a.f, com.android.common.gles.g):boolean");
    }

    public int aI() {
        return 0;
    }

    public void bfM(Surface surface, int i, int i2, VideoEffectRenderer$Mirror videoEffectRenderer$Mirror) {
        this.aPA = surface;
        this.aPC = i;
        this.aPB = i2;
        this.aPp = videoEffectRenderer$Mirror;
        this.aPq = true;
        this.aPz = Boolean.valueOf(true);
        this.aPs = 0;
        this.aPD = 0;
    }

    public void stop() {
        synchronized (this.aPz) {
            this.aPz = Boolean.valueOf(false);
            bfF();
        }
    }

    public void bfD() {
        this.aPr = true;
        this.aPs = System.nanoTime();
    }

    public void bfI() {
        this.aPr = false;
        this.aPD += System.nanoTime() - this.aPs;
    }

    public void bfG() {
        synchronized (this.aPz) {
            this.aPz = Boolean.valueOf(false);
            this.aPq = false;
            this.aPr = false;
            this.aPA = null;
            bfF();
            this.aPl = null;
            this.aPk = null;
            this.aPm = null;
            this.aPw = null;
            this.aPx = null;
            this.aPi = null;
            this.aPu = false;
        }
    }

    private void bfB() {
        float[] fArr = new float[]{-1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
        this.aPE = ByteBuffer.allocateDirect((fArr.length * 32) / 8).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.aPE.put(fArr).position(0);
        fArr = new float[]{-1.0f, -1.0f, 0.0f, 1.0f, 0.0f, 1.0f, -1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 1.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f};
        this.aPF = ByteBuffer.allocateDirect((fArr.length * 32) / 8).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.aPF.put(fArr).position(0);
        fArr = new float[]{-1.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f, -1.0f, 0.0f, 1.0f, 1.0f, -1.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f};
        this.aPG = ByteBuffer.allocateDirect((fArr.length * 32) / 8).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.aPG.put(fArr).position(0);
    }

    private EGLSurface bfz(Surface surface) {
        bfF();
        this.aPn = EGL14.eglCreateWindowSurface(this.aPm, this.aPk, surface, new int[]{12344}, 0);
        if (EGL14.eglGetError() != 12288) {
            C0090a.m1e(TAG, "createVideoRecordSurface fail");
        }
        return this.aPn;
    }

    private void bfF() {
        if (this.aPn != null) {
            if (!EGL14.eglDestroySurface(this.aPm, this.aPn)) {
                C0090a.m1e(TAG, "destorySurface fail " + EGL14.eglGetError());
            }
            this.aPn = null;
        }
    }

    private void bfN() {
        EGL14.eglSwapBuffers(this.aPm, this.aPn);
    }

    private void bfL(long j) {
        EGLExt.eglPresentationTimeANDROID(this.aPm, this.aPn, j);
    }

    private void bfJ(C0290f c0290f) {
        if (this.aPm == null) {
            this.aPm = EGL14.eglGetCurrentDisplay();
        }
        if (this.aPk == null) {
            try {
                this.aPk = C0548e.Ee(this.aPm);
            } catch (Exception e) {
                C0090a.m1e(TAG, "getEGLConfig fail " + e.getLocalizedMessage());
            }
        }
        if (this.aPl == null) {
            this.aPl = EGL14.eglGetCurrentContext();
        }
        if (this.aPw == null) {
            this.aPw = EGL14.eglGetCurrentSurface(12377);
        }
        if (this.aPx == null) {
            this.aPx = EGL14.eglGetCurrentSurface(12378);
        }
        if (this.aPi == null) {
            this.aPi = c0290f.ae();
        }
    }

    private void bfK() {
        if (!EGL14.eglMakeCurrent(this.aPm, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT)) {
            C0090a.m1e(TAG, "saveRenderContext unregister fail");
        }
        if (!EGL14.eglMakeCurrent(this.aPm, this.aPn, this.aPn, this.aPl)) {
            C0090a.m1e(TAG, "saveRenderContext register fail");
        }
    }

    private void bfH() {
        if (!EGL14.eglMakeCurrent(this.aPm, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT)) {
            C0090a.m1e(TAG, "restoreRenderContext unregister fail");
        }
        if (!EGL14.eglMakeCurrent(this.aPm, this.aPw, this.aPx, this.aPl)) {
            C0090a.m1e(TAG, "restoreRenderContext register fail");
        }
    }

    private void bfC() {
        if (!this.aPu) {
            if (this.aPt != 0) {
                bfE();
            }
            this.aPu = true;
            this.aPy = C0545b.DV(C0545b.DT(this.aPj, R.raw.simple_vs), C0545b.DT(this.aPj, R.raw.simple_fs));
            this.aPt = C0545b.DW(this.aPy[0], this.aPy[1]);
            if (this.aPt == 0) {
                C0090a.m1e(TAG, "mProgram = 0");
            }
            this.aPH = GLES20.glGetAttribLocation(this.aPt, "aPosition");
            this.aPI = GLES20.glGetAttribLocation(this.aPt, "aTextureCoord");
            this.aPK = GLES20.glGetUniformLocation(this.aPt, "uMVPMatrix");
            this.aPL = GLES20.glGetUniformLocation(this.aPt, "uSTMatrix");
            this.aPJ = GLES20.glGetUniformLocation(this.aPt, "sTexture");
        }
    }

    public void aK(C0290f c0290f) {
        bfE();
    }

    private void bfE() {
        GLES20.glDeleteShader(this.aPy[0]);
        GLES20.glDeleteShader(this.aPy[1]);
        GLES20.glDeleteProgram(this.aPt);
        this.aPy[1] = 0;
        this.aPy[0] = 0;
        this.aPt = 0;
    }

    private void bfA(C0290f c0290f, FloatBuffer floatBuffer) {
        GLES20.glViewport(0, 0, this.aPC, this.aPB);
        GLES20.glUseProgram(this.aPt);
        floatBuffer.position(0);
        GLES20.glVertexAttribPointer(this.aPH, 3, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.aPH);
        floatBuffer.position(3);
        GLES20.glVertexAttribPointer(this.aPI, 2, 5126, false, 20, floatBuffer);
        GLES20.glEnableVertexAttribArray(this.aPI);
        GLES20.glActiveTexture(33988);
        GLES20.glBindTexture(3553, c0290f.ar().DH());
        GLES20.glUniform1i(this.aPJ, 4);
        GLES20.glUniformMatrix4fv(this.aPK, 1, false, this.aPo, 0);
        GLES20.glUniformMatrix4fv(this.aPL, 1, false, this.aPv, 0);
        GLES20.glDrawArrays(5, 0, 4);
    }
}
