package com.android.p017c;

import android.os.Handler;
import android.os.Message;

final class C0137j extends Handler {
    final /* synthetic */ C0131d aWV;

    C0137j(C0131d c0131d) {
        this.aWV = c0131d;
    }

    public void handleMessage(Message message) {
        if (!this.aWV.adA.SO()) {
            this.aWV.adA.Tt();
        }
    }
}
