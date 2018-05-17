package com.android.video;

import android.os.Handler;
import android.os.Message;
import com.p010a.C0090a;

class C1155h extends Handler {
    final /* synthetic */ C1152e aQz;

    private C1155h(C1152e c1152e) {
        this.aQz = c1152e;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.aQz.bgF();
                return;
            default:
                C0090a.bvo("VideoRecordManager", "Unhandled message: " + message.what);
                return;
        }
    }
}
