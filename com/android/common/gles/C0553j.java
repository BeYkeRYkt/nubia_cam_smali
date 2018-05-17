package com.android.common.gles;

import android.opengl.GLES20;

class C0553j extends C0551h {
    public C0553j(String str) {
        super(str);
    }

    public void EN(int i) {
        this.GF = GLES20.glGetAttribLocation(i, this.mName);
        C0550g.Ex();
    }
}
