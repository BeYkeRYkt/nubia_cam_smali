package com.android.video;

import android.view.View;
import android.view.View.OnClickListener;
import com.android.common.camerastate.DeviceState;

final class C1168v implements OnClickListener {
    final /* synthetic */ C1161n aRz;

    C1168v(C1161n c1161n) {
        this.aRz = c1161n;
    }

    public void onClick(View view) {
        this.aRz.bhR();
        if (this.aRz.alt() == DeviceState.VIDEO_RECORDING || this.aRz.alt() == DeviceState.VIDEO_RECORDING_PAUSED) {
            this.aRz.aRj.bgs();
        }
    }
}
