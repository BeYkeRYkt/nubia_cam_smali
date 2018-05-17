package com.android.camera.cameraFamily;

import android.os.Handler;
import android.os.Message;

final class C0185m extends Handler {
    final /* synthetic */ C0174b aGk;

    C0185m(C0174b c0174b) {
        this.aGk = c0174b;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 3:
                this.aGk.aFd = true;
                for (C0176d c0176d : this.aGk.aFk) {
                    if (c0176d != null) {
                        c0176d.aUF(this.aGk.aFj);
                    }
                }
                this.aGk.aFk.clear();
                return;
            default:
                return;
        }
    }
}
