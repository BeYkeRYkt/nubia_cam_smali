package com.android.common.cameradevice;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class C0386q extends Handler {
    final /* synthetic */ C0385p HT;

    C0386q(C0385p c0385p, Looper looper) {
        this.HT = c0385p;
        super(looper);
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                synchronized (this.HT.HS) {
                    if (!this.HT.HN) {
                        this.HT.release();
                    }
                }
                return;
            default:
                return;
        }
    }
}
