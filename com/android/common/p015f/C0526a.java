package com.android.common.p015f;

import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import com.android.common.appService.C0329e;
import com.p010a.C0090a;

public final class C0526a implements PictureCallback {
    private C0329e VU = null;

    public C0526a(C0329e c0329e) {
        this.VU = c0329e;
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        adF(System.currentTimeMillis());
        C0090a.bvo("RawPictureCallback", "mShutterToRawCallbackTime = " + (adD() - adE()) + "ms");
    }

    private C0329e adC() {
        return this.VU;
    }

    private void adF(long j) {
        adC().TK(j);
    }

    private long adD() {
        return adC().TL();
    }

    private long adE() {
        return adC().TM();
    }
}
