package com.android.common.appService;

import android.os.Handler;
import android.os.Message;

class C0340o extends Handler {
    final /* synthetic */ C0339n QU;

    private C0340o(C0339n c0339n) {
        this.QU = c0339n;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.QU.Yz();
                return;
            default:
                return;
        }
    }
}
