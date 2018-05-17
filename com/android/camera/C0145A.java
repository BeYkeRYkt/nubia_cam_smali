package com.android.camera;

import com.android.common.p016a.C0144d;

final class C0145A implements C0144d {
    final /* synthetic */ Camera aJk;

    C0145A(Camera camera) {
        this.aJk = camera;
    }

    public void mo321L() {
        this.aJk.ajB.m43u();
        this.aJk.runOnUiThread(new C0146B(this));
    }
}
