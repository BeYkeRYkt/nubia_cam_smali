package com.android.common.gles;

import android.opengl.GLES20;

class C0552i extends C0551h {
    public C0552i(String str) {
        super(str);
    }

    public void EN(int i) {
        this.GF = GLES20.glGetUniformLocation(i, this.mName);
        C0550g.Ex();
    }
}
