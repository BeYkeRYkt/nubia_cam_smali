package com.android.pretty;

import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import com.android.common.appService.C0329e;

public class C1081l implements PictureCallback {
    private C0329e aui = null;
    private C1084p auj = null;

    public C1081l(C0329e c0329e, C1084p c1084p) {
        this.aui = c0329e;
        this.auj = c1084p;
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        if (!aHT()) {
            this.auj.aIv(bArr);
        }
    }

    private boolean aHT() {
        return this.aui.SO();
    }
}
