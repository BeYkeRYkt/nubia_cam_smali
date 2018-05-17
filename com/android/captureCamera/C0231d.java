package com.android.captureCamera;

import android.content.Context;
import android.view.OrientationEventListener;
import com.android.common.C0616j;

class C0231d extends OrientationEventListener {
    final /* synthetic */ CaptureCameraService aSA;

    public C0231d(CaptureCameraService captureCameraService, Context context) {
        this.aSA = captureCameraService;
        super(context);
    }

    public void onOrientationChanged(int i) {
        this.aSA.aSx.setOrientation(C0616j.aqe(i, this.aSA.aSx.bix()));
    }
}
