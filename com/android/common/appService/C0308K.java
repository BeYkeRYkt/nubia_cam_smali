package com.android.common.appService;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.p010a.C0090a;

final class C0308K extends Handler {
    final /* synthetic */ C0307J TG;

    public C0308K(C0307J c0307j, Looper looper) {
        this.TG = c0307j;
        super(looper);
    }

    public void handleMessage(Message message) {
        C0090a.bvm("SmileShot", "[handleMessage]msg.what =" + message.what);
        switch (message.what) {
            case 1000:
                this.TG.abv();
                return;
            default:
                return;
        }
    }
}
