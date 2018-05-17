package com.android.common.p015f;

import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import com.android.common.appService.C0329e;
import com.p010a.C0090a;

public final class C0529d implements PictureCallback {
    private C0329e VX = null;

    public C0529d(C0329e c0329e) {
        this.VX = c0329e;
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        adT(System.currentTimeMillis());
        C0090a.bvo("PostViewPictureCallback", "mShutterToPostViewCallbackTime = " + (adR() - adS()) + "ms");
    }

    private C0329e adQ() {
        return this.VX;
    }

    private void adT(long j) {
        adQ().WT(j);
    }

    private long adR() {
        return adQ().Vd();
    }

    private long adS() {
        return adQ().TM();
    }
}
