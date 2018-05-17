package com.android.common.p015f;

import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import android.os.Environment;
import com.android.common.appService.C0329e;
import com.android.common.camerastate.DeviceState;
import com.p010a.C0090a;
import java.io.File;
import java.io.FileOutputStream;

public final class C0530e implements PictureCallback {
    private C0329e VY = null;

    public C0530e(C0329e c0329e) {
        this.VY = c0329e;
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        C0090a.bvo("JpegPictureCallbackForThirdParty", "JpegPictureCallbackForThirdParty");
        if (!this.VY.SO()) {
            this.VY.Vi(1);
            if (this.VY.US() == this.VY.Uz()) {
                this.VY.Um();
            }
            if (this.VY.US() == 1) {
                this.VY.SU().St(false);
                this.VY.WQ(bArr);
                if (this.VY.SM().getIntent().getBooleanExtra("autotest", false)) {
                    try {
                        adU(bArr, "AutoTest.jpeg");
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    this.VY.SX().Kd(DeviceState.IDLE);
                } else {
                    this.VY.TA();
                }
                this.VY.SU().Se();
            }
        }
    }

    private void adU(byte[] bArr, String str) {
        C0090a.m1e("JpegPictureCallbackForThirdParty", "saveJpeg=" + str);
        FileOutputStream fileOutputStream = new FileOutputStream(new File(Environment.getExternalStorageDirectory(), str));
        fileOutputStream.write(bArr);
        fileOutputStream.close();
    }
}
