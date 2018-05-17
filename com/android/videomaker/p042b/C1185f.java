package com.android.videomaker.p042b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.p010a.C0090a;

final class C1185f extends Handler {
    final /* synthetic */ C1181b axo;

    C1185f(C1181b c1181b, Looper looper) {
        this.axo = c1181b;
        super(looper);
    }

    public void handleMessage(Message message) {
        this.axo.aKY(" handlerMessage what: " + message.what + "  msg.arg1: " + message.arg1);
        switch (message.what) {
            case 1:
                this.axo.aLa(message.arg1);
                return;
            default:
                C0090a.m1e("VideoGenerator", "UNKNOWN MESSAGE!");
                return;
        }
    }
}
