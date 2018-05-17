package com.android.common;

import android.os.Handler;
import android.os.Message;

final class C0266H extends Handler {
    final /* synthetic */ C0375c akx;

    C0266H(C0375c c0375c) {
        this.akx = c0375c;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                if (this.akx.agW != null) {
                    this.akx.agW.onTick((long) message.arg1);
                    return;
                }
                return;
            case 2:
                if (this.akx.agW != null) {
                    this.akx.agW.ls();
                    return;
                }
                return;
            default:
                return;
        }
    }
}
