package com.android.objectclear;

import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;

class C1026d implements PreviewCallback {
    final /* synthetic */ C1023a aJE;

    private C1026d(C1023a c1023a) {
        this.aJE = c1023a;
    }

    public void onPreviewFrame(byte[] bArr, Camera camera) {
        if (!this.aJE.aJz) {
            new C1025c(this.aJE, this.aJE.aJw, bArr).start();
        }
    }
}
