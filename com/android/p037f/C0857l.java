package com.android.p037f;

import android.os.Handler;
import android.os.Message;

final class C0857l extends Handler {
    final /* synthetic */ C0847b bax;

    C0857l(C0847b c0847b) {
        this.bax = c0847b;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 0:
                if (this.bax.aZW != null) {
                    this.bax.aZW.bra();
                    return;
                }
                return;
            case 1:
                if (this.bax.aZW != null) {
                    this.bax.aZW.bqZ();
                    return;
                }
                return;
            default:
                return;
        }
    }
}
