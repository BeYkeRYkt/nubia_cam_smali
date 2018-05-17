package com.android.multiexposure;

import android.os.Handler;
import android.os.Message;

class C0975j extends Handler {
    final /* synthetic */ C0974i alW;

    private C0975j(C0974i c0974i) {
        this.alW = c0974i;
    }

    public void handleMessage(Message message) {
        if (this.alW.isVisible() && !this.alW.adA.SO()) {
            switch (message.what) {
                case 1004:
                    this.alW.awS(false);
                    break;
            }
        }
    }
}
