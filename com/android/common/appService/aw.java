package com.android.common.appService;

import android.os.Handler;
import android.os.Message;

final class aw extends Handler {
    final /* synthetic */ C0303E Vf;

    aw(C0303E c0303e) {
        this.Vf = c0303e;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.Vf.aaA();
                return;
            case 2:
                this.Vf.Td.gv(0);
                this.Vf.SW.setText(this.Vf.aaB(0));
                return;
            default:
                return;
        }
    }
}
