package com.android.captureCamera;

import android.content.Context;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.PictureCallback;
import android.hardware.Camera.Size;
import android.location.Location;
import android.os.Handler;
import com.android.common.C0472e;
import com.android.common.C0616j;
import com.android.common.appService.CameraMember;
import com.android.common.custom.C0421M;
import com.p010a.C0090a;

public class C0233f implements PictureCallback {
    private Context aSG = null;
    private Handler aSH = null;
    private C0228a aSI = null;
    private Location aSJ;
    private int aSK = 0;
    private C0230c aSL = null;

    public C0233f(Location location, Context context, C0230c c0230c, C0228a c0228a, int i) {
        this.aSJ = location;
        this.aSL = c0230c;
        this.aSG = context;
        this.aSI = c0228a;
        this.aSH = this.aSL.biw();
        this.aSK = i;
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        if (bArr == null) {
            this.aSH.sendEmptyMessage(104);
            C0090a.m1e("CaptureCameraJpegCallback", "onPictureTaken jpegData is null");
            return;
        }
        int i;
        int i2;
        if (this.aSL.biz() && this.aSL.bis() == 0) {
            this.aSL.biD(this.aSL.biu() + 1);
            if (this.aSL.biu() >= 3) {
                this.aSH.sendEmptyMessage(106);
                bjO();
                this.aSH.sendEmptyMessage(103);
                this.aSL.biC(CaptureCameraState.IDLE);
            }
        } else {
            this.aSH.sendEmptyMessage(106);
            this.aSH.sendEmptyMessage(103);
            this.aSL.biC(CaptureCameraState.IDLE);
        }
        Size pictureSize = bjN().getPictureSize();
        int aoA = C0472e.aoA(bArr);
        if ((this.aSK + aoA) % 180 == 0) {
            i = pictureSize.width;
            i2 = pictureSize.height;
        } else {
            i = pictureSize.height;
            i2 = pictureSize.width;
        }
        long currentTimeMillis = System.currentTimeMillis();
        String aoP = C0616j.aoP(currentTimeMillis);
        int aan = CameraMember.NORMAL.aan();
        if (this.aSL.bis() == 1) {
            if (C0421M.dC().dD().cF()) {
                aan = CameraMember.PRETTYCAMERA.aan();
            } else {
                aan = CameraMember.FRONT.aan();
            }
        }
        this.aSI.bin(bArr, currentTimeMillis, aoP, this.aSJ, i, i2, 0, aoA, aan, null);
    }

    private Parameters bjN() {
        return this.aSL.biy();
    }

    private void bjO() {
        this.aSL.biG();
    }
}
