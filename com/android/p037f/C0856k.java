package com.android.p037f;

import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import android.hardware.Camera.Size;
import cn.nubia.bigAperture.C0027c;
import cn.nubia.bigAperture.C0039o;
import com.android.common.appService.C0329e;
import com.android.common.cameradevice.C0384o;
import com.p010a.C0090a;

public class C0856k implements PictureCallback {
    private C0329e bau;
    private int bav;
    private C0847b baw;

    public C0856k(int i, C0329e c0329e, C0847b c0847b) {
        this.bav = i;
        this.bau = c0329e;
        this.baw = c0847b;
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        C0090a.bvo("Photo3DRawPictureCallback", "Raw onPictureTaken mCameraId: " + this.bav + " " + bArr);
        this.bau.UM(this.bav).tW();
        Size Gr = this.bau.Ud(this.bav).Gr();
        if (this.bav == C0384o.Jr().Js()) {
            this.baw.bqV(bArr, Gr.width, Gr.height, brl(this.bav, "cur-dac"), brm(), this.bau.TW());
            return;
        }
        this.baw.bqW(bArr, Gr.width, Gr.height, brl(this.bav, "cur-dac-aux"), brk());
    }

    private int brl(int i, String str) {
        String FX = this.bau.Ud(i).FX(str);
        if (FX != null) {
            return Integer.parseInt(FX);
        }
        return -1;
    }

    private int brm() {
        return this.bau.Tn().FZ();
    }

    private C0039o brk() {
        return C0027c.bKu(this.bau.Ud(this.bav).FX("altek-back-sub-crop-size"));
    }
}
