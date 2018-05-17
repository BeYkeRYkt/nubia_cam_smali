package com.android.dualcameracalibration;

import android.widget.Toast;
import java.util.TimerTask;

final class C0821k extends TimerTask {
    final /* synthetic */ Toast awA;
    final /* synthetic */ DualCameraCalibrationService awz;

    C0821k(DualCameraCalibrationService dualCameraCalibrationService, Toast toast) {
        this.awz = dualCameraCalibrationService;
        this.awA = toast;
    }

    public void run() {
        this.awA.show();
    }
}
