package com.android.panorama;

import android.os.Handler;
import android.os.Message;

class C1040c extends Handler {
    final /* synthetic */ C1039b aUm;

    private C1040c(C1039b c1039b) {
        this.aUm = c1039b;
    }

    public void handleMessage(Message message) {
        this.aUm.bkh(message.what);
    }
}
