package com.android.videomaker;

import android.os.Handler;
import android.os.Message;

class C1200n extends Handler {
    final /* synthetic */ C1198k aAt;

    private C1200n(C1198k c1198k) {
        this.aAt = c1198k;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                if (this.aAt.aAo != null) {
                    this.aAt.aAo.aOL();
                    return;
                }
                return;
            default:
                return;
        }
    }
}
