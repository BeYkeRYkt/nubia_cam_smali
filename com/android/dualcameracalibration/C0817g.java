package com.android.dualcameracalibration;

import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.p010a.C0090a;

class C0817g extends Handler {
    final /* synthetic */ DualCameraCalibrationService awi;

    C0817g(DualCameraCalibrationService dualCameraCalibrationService) {
        this.awi = dualCameraCalibrationService;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                String aKb = this.awi.aJW();
                C0090a.m1e("DualCameraCalibration", "EEPROM信息写入结果：" + aKb);
                if (aKb.equals("OK")) {
                    this.awi.aJY("WriteSuccess");
                } else {
                    this.awi.aJY("WriteFail");
                }
                this.awi.aJX(new Toast(this.awi.getApplicationContext()), 3000, "EEPROM信息写入结果：      " + aKb);
                this.awi.awd.release();
                this.awi.awd = null;
                this.awi.stopSelf();
                return;
            default:
                return;
        }
    }
}
