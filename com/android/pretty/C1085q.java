package com.android.pretty;

import android.os.Handler;
import android.os.Message;

class C1085q extends Handler {
    final /* synthetic */ C1084p auW;

    C1085q(C1084p c1084p) {
        this.auW = c1084p;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.auW.auK.removeMessages(1);
                this.auW.auI = true;
                this.auW.aIW();
                return;
            case 2:
                this.auW.auM = null;
                this.auW.aIU((byte[]) message.obj);
                return;
            case 3:
                this.auW.auK.removeMessages(3);
                this.auW.auS = true;
                this.auW.aIW();
                return;
            default:
                return;
        }
    }
}
