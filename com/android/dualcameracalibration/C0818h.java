package com.android.dualcameracalibration;

import android.os.Handler;
import android.os.Message;
import com.p010a.C0090a;

class C0818h extends Handler {
    final /* synthetic */ DualCameraCalibrationFragment aww;

    private C0818h(DualCameraCalibrationFragment dualCameraCalibrationFragment) {
        this.aww = dualCameraCalibrationFragment;
    }

    public void handleMessage(Message message) {
        if (message.what == 1234) {
            this.aww.aKl();
        } else if (message.what == 4321 && this.aww.awl > 0 && this.aww.awl < 6) {
            this.aww.adA.TU();
            C0090a.m0d("DualCameraCalibrationFragment", "handle take picture");
            this.aww.awq = this.aww.awr.obtainMessage();
            this.aww.awq.what = 4321;
            this.aww.awr.sendMessageDelayed(this.aww.awq, 1000);
        }
    }
}
