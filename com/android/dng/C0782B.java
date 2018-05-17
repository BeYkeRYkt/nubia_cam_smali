package com.android.dng;

import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.CameraStartUpThread$CameraOpenState;
import com.android.common.camerastate.FunctionState;
import com.android.common.p012e.C0458b;

final class C0782B implements Runnable {
    final /* synthetic */ C0810z aNG;
    final /* synthetic */ CameraStartUpThread$CameraOpenState aNH;

    C0782B(C0810z c0810z, CameraStartUpThread$CameraOpenState cameraStartUpThread$CameraOpenState) {
        this.aNG = c0810z;
        this.aNH = cameraStartUpThread$CameraOpenState;
    }

    public void run() {
        this.aNG.aND.adA.WD(null);
        C0458b.adi().adk();
        if (this.aNH == CameraStartUpThread$CameraOpenState.FAIL_CAMERA_DISABLED) {
            this.aNG.aND.aMT = C0616j.aqj(this.aNG.aND.getActivity(), R.string.camera_disabled);
            this.aNG.aND.adD.JW(FunctionState.SWITCHING_CAMERA);
        } else if (this.aNH == CameraStartUpThread$CameraOpenState.FAIL_CAMERA_ERROR) {
            this.aNG.aND.aMT = C0616j.aqj(this.aNG.aND.getActivity(), R.string.ztemt_cannot_connect_camera);
            this.aNG.aND.adD.JW(FunctionState.SWITCHING_CAMERA);
        } else {
            this.aNG.aND.adA.TE().Lx();
            this.aNG.aND.adA.Tc().ML();
            this.aNG.aND.bdl();
            this.aNG.aND.adA.UQ().XL();
        }
    }
}
