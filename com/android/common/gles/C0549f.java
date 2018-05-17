package com.android.common.gles;

import android.opengl.GLES20;

public class C0549f {
    private final int[] Ga = new int[1];

    public int Ei() {
        GLES20.glGenTextures(1, this.Ga, 0);
        C0550g.Ex();
        return this.Ga[0];
    }

    public void Ej(int i, int[] iArr, int i2) {
        GLES20.glDeleteTextures(i, iArr, i2);
        C0550g.Ex();
    }
}
