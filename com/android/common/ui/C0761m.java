package com.android.common.ui;

import android.os.Handler;
import android.os.Message;

class C0761m extends Handler {
    final /* synthetic */ CameraSelectButton mb;

    private C0761m(CameraSelectButton cameraSelectButton) {
        this.mb = cameraSelectButton;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 0:
                if (this.mb.lB != null) {
                    this.mb.lB.jK(this.mb.lQ);
                    return;
                }
                return;
            default:
                return;
        }
    }
}
