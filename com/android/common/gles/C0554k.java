package com.android.common.gles;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.view.SurfaceHolder;

public class C0554k {
    private EGLConfig GG;
    private EGLContext GH;
    private EGLDisplay GI;
    private EGLSurface GJ;
    private EGLSurface GK;
    private EGLManager$State GL;

    public C0554k() {
        this.GJ = null;
        this.GL = EGLManager$State.UNINIT;
        this.GI = C0548e.Eh();
        this.GG = C0548e.Ee(this.GI);
        this.GH = C0548e.Eg(this.GI, this.GG);
        this.GL = EGLManager$State.INITED;
    }

    public void release() {
        if (this.GL.ordinal() > EGLManager$State.UNINIT.ordinal()) {
            EGL14.eglDestroyContext(this.GI, this.GH);
            this.GH = null;
            EGL14.eglDestroySurface(this.GI, this.GK);
            this.GK = null;
            if (this.GJ != null) {
                EGL14.eglDestroySurface(this.GI, this.GJ);
                this.GJ = null;
            }
            EGL14.eglTerminate(this.GI);
        }
        this.GI = null;
        this.GG = null;
        this.GL = EGLManager$State.UNINIT;
    }

    public void EQ() {
        EGL14.eglSwapBuffers(this.GI, this.GK);
    }

    public boolean EP() {
        return EGL14.eglMakeCurrent(this.GI, this.GK, this.GK, this.GH);
    }

    public void ER() {
        EGL14.eglMakeCurrent(this.GI, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
    }

    public EGLSurface EO(SurfaceHolder surfaceHolder) {
        this.GK = EGL14.eglCreateWindowSurface(this.GI, this.GG, surfaceHolder, new int[]{12344}, 0);
        int eglGetError = EGL14.eglGetError();
        if (eglGetError == 12288) {
            return this.GK;
        }
        throw new Exception("fail to get window surface  error: " + eglGetError);
    }
}
