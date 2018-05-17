package com.android.common.gles;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import com.p010a.C0090a;

public class C0548e {
    public static void Ef(EGLDisplay eGLDisplay) {
        if (eGLDisplay == EGL14.EGL_NO_DISPLAY || EGL14.eglGetError() != 12288) {
            throw new Exception("no display");
        }
        C0090a.m1e("info", "eglGetDisplay success: " + eGLDisplay.toString());
    }

    public static EGLConfig Ee(EGLDisplay eGLDisplay) {
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr = new int[]{0};
        EGL14.eglChooseConfig(eGLDisplay, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, 4, 12610, 1, 12344}, 0, eGLConfigArr, 0, 1, iArr, 0);
        if (EGL14.eglGetError() != 0 && iArr[0] != 0) {
            return eGLConfigArr[0];
        }
        throw new Exception("get display config failed");
    }

    public static EGLContext Eg(EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
        EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, new int[]{12440, 2, 12344}, 0);
        int eglGetError = EGL14.eglGetError();
        if (eglGetError == 12288) {
            return eglCreateContext;
        }
        throw new Exception("fail to get EGLContext error: " + eglGetError);
    }

    public static EGLDisplay Eh() {
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        C0548e.Ef(eglGetDisplay);
        int[] iArr = new int[2];
        EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1);
        return eglGetDisplay;
    }
}
