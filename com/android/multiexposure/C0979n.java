package com.android.multiexposure;

import android.os.Handler;
import android.os.Message;

public class C0979n extends Handler {
    private final String TAG = "MultiExposureFragmentHandler";
    C0974i ama = null;

    public C0979n(C0974i c0974i) {
        this.ama = c0974i;
    }

    public void handleMessage(Message message) {
        super.handleMessage(message);
        switch (message.what) {
            case 2:
                this.ama.awo(false);
                return;
            default:
                return;
        }
    }
}
