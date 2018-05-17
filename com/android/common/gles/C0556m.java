package com.android.common.gles;

import android.opengl.GLES20;
import com.p010a.C0090a;

public class C0556m {
    public static int ET(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        if (glCreateShader != 0) {
            GLES20.glShaderSource(glCreateShader, str);
            GLES20.glCompileShader(glCreateShader);
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
            if (iArr[0] == 0) {
                C0090a.m1e("==wq", "Could not compile shader " + i + ":");
                C0090a.m1e("==wq", GLES20.glGetShaderInfoLog(glCreateShader));
                GLES20.glDeleteShader(glCreateShader);
                return 0;
            }
        }
        return glCreateShader;
    }

    public static int ES(String str, String str2) {
        int i = 0;
        int ET = C0556m.ET(35633, str);
        if (ET == 0) {
            return 0;
        }
        int ET2 = C0556m.ET(35632, str2);
        if (ET2 == 0) {
            return 0;
        }
        int glCreateProgram = GLES20.glCreateProgram();
        if (glCreateProgram != 0) {
            GLES20.glAttachShader(glCreateProgram, ET);
            GLES20.glAttachShader(glCreateProgram, ET2);
            GLES20.glLinkProgram(glCreateProgram);
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
            if (iArr[0] != 1) {
                C0090a.m1e("==wq", "Could not link program: ");
                C0090a.m1e("==wq", GLES20.glGetProgramInfoLog(glCreateProgram));
                GLES20.glDeleteProgram(glCreateProgram);
                return i;
            }
        }
        i = glCreateProgram;
        return i;
    }
}
