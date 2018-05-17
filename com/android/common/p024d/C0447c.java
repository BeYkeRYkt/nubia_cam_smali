package com.android.common.p024d;

import android.os.Handler;
import android.os.Message;

class C0447c extends Handler {
    final /* synthetic */ C0445a Od;

    C0447c(C0445a c0445a) {
        this.Od = c0445a;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 0:
                if (!(this.Od.NT == null || this.Od.NS)) {
                    this.Od.NT.Ks();
                    break;
                }
        }
        super.handleMessage(message);
    }
}
