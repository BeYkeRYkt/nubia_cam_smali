package com.android.captureCamera;

import android.widget.Toast;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.storagemanager.C0236g;
import com.p010a.C0090a;

final class C0237i implements C0236g {
    final /* synthetic */ CaptureCameraService aSO;

    C0237i(CaptureCameraService captureCameraService) {
        this.aSO = captureCameraService;
    }

    public void amp(long j, boolean z) {
        C0090a.m0d("CaptureCameraService", "onUpdateStorageFinish " + j + " " + z);
        if (!this.aSO.aSo) {
            C0090a.m1e("CaptureCameraService", "mIsServiceCreated " + this.aSO.aSo);
        } else if (z) {
            this.aSO.aSj.removeMessages(104);
            if (!this.aSO.biM()) {
                try {
                    C0090a.m1e("CaptureCameraService", "startCamera");
                    this.aSO.bjg();
                    this.aSO.aSn = true;
                } catch (Throwable e) {
                    this.aSO.biU(false);
                    C0090a.bvi("CaptureCameraService", "startCamera failed", e);
                    if (C0616j.apL(this.aSO.aSe)) {
                        Toast.makeText(this.aSO.aSe, R.string.cannot_conflic_close_light, 1).show();
                    } else {
                        Toast.makeText(this.aSO.aSe, R.string.ztemt_cannot_connect_camera, 0).show();
                    }
                    return;
                }
            }
            this.aSO.bjh();
        } else {
            C0090a.m1e("CaptureCameraService", "It is have no storage!");
        }
    }
}
