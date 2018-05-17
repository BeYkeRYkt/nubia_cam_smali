package com.android.camera.cameraFamily;

import android.os.Handler.Callback;
import android.os.Message;

final class C0186n implements Callback {
    final /* synthetic */ C0174b aGl;

    C0186n(C0174b c0174b) {
        this.aGl = c0174b;
    }

    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 1:
                synchronized (this.aGl.aFa) {
                    this.aGl.aFb = true;
                }
                synchronized (this.aGl.aFa) {
                    this.aGl.aFb = false;
                }
                if (!this.aGl.aFc.hasMessages(2)) {
                    this.aGl.aFh.removeMessages(3);
                    this.aGl.aFh.sendEmptyMessage(3);
                    break;
                }
                break;
            case 2:
                synchronized (this.aGl.aFa) {
                    this.aGl.aFb = true;
                }
                this.aGl.aUv();
                synchronized (this.aGl.aFa) {
                    this.aGl.aFb = false;
                }
                this.aGl.aFh.removeMessages(3);
                this.aGl.aFh.sendEmptyMessage(3);
                break;
        }
        return false;
    }
}
