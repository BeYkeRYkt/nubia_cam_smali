package com.android.p037f;

import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import com.android.common.appService.C0329e;
import com.android.common.camerastate.DeviceState;
import com.android.common.p012e.C0458b;
import com.p010a.C0090a;

public class C0855j implements PictureCallback {
    private C0329e bas;
    private int bat;

    public C0855j(int i, C0329e c0329e) {
        this.bat = i;
        this.bas = c0329e;
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        C0090a.bvo("Photo3DJpegPictureCallback", "onPictureTaken mCameraId " + this.bat);
        this.bas.Vi(1);
        if (this.bas.US() == this.bas.Uz()) {
            C0458b.adi().adk();
            this.bas.SX().Kd(DeviceState.IDLE);
        }
    }
}
