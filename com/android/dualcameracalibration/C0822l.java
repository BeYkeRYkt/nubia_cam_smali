package com.android.dualcameracalibration;

import android.widget.Toast;
import java.util.Timer;
import java.util.TimerTask;

final class C0822l extends TimerTask {
    final /* synthetic */ DualCameraCalibrationService awB;
    final /* synthetic */ Toast awC;
    final /* synthetic */ Timer awD;

    C0822l(DualCameraCalibrationService dualCameraCalibrationService, Toast toast, Timer timer) {
        this.awB = dualCameraCalibrationService;
        this.awC = toast;
        this.awD = timer;
    }

    public void run() {
        this.awC.cancel();
        this.awD.cancel();
    }
}
