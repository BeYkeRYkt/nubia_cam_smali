package com.android.video;

import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import android.location.Location;
import com.p010a.C0090a;

final class C1157j implements PictureCallback {
    Location aQB;
    final /* synthetic */ C1152e aQC;

    public C1157j(C1152e c1152e, Location location) {
        this.aQC = c1152e;
        this.aQB = location;
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        C0090a.bvo("VideoRecordManager", "onPictureTaken");
        this.aQC.bgC(bArr, this.aQB);
        if (this.aQC.aPZ != null) {
            this.aQC.aPZ.bgW();
        }
        this.aQC.mState = 1;
    }
}
