package com.android.startrack;

import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import com.android.common.appService.C0329e;
import com.android.common.camerastate.C0404b;
import com.android.common.camerastate.DeviceState;
import com.android.common.p012e.C0458b;
import com.p010a.C0090a;

public final class C1122k implements PictureCallback {
    private C0329e aLp = null;
    private C0404b aLq = null;
    private C1117f aLr = null;

    public C1122k(C0329e c0329e, C1117f c1117f) {
        this.aLp = c0329e;
        this.aLr = c1117f;
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        C0090a.m1e("wq", "====================================onPictureTaken");
        if (!bca()) {
            this.aLp.Tk(false);
            this.aLp.Vi(1);
            if ("on".equals(this.aLp.Tn().HK())) {
                C0090a.bvo("JpegPictureCallback", "In onPictureTaken , in zslmode");
                this.aLp.SY().tW();
                bcb(this.aLp.UL());
            }
            if ("off".equals(this.aLp.Tn().HK()) && bbZ() == bbX()) {
                bcc();
            } else if (bbZ() == bbX()) {
                bbY().Kd(DeviceState.IDLE);
            }
            if (bbZ() == bbX()) {
                C0458b.adi().adk();
            }
            if (!(this.aLr == null || this.aLr.aLc == null)) {
                this.aLr.aLc.bbd(bArr);
            }
        }
    }

    private C0404b bbY() {
        return this.aLp.SX();
    }

    private int bbZ() {
        return this.aLp.US();
    }

    private int bbX() {
        return this.aLp.Uz();
    }

    private void bcc() {
        this.aLp.TB();
    }

    private void bcb(int i) {
        this.aLp.Ub(i);
    }

    private boolean bca() {
        return this.aLp.SO();
    }
}
