package com.android.common.p012e;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class C0459c extends Handler {
    final /* synthetic */ C0458b VG;

    public C0459c(C0458b c0458b) {
        this.VG = c0458b;
        super(Looper.getMainLooper());
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 28:
                this.VG.ads(true);
                return;
            default:
                return;
        }
    }
}
