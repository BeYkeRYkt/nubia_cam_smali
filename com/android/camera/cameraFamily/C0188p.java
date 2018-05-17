package com.android.camera.cameraFamily;

import android.os.Message;

final class C0188p extends Thread {
    final /* synthetic */ C0181h aGn;

    C0188p(C0181h c0181h) {
        this.aGn = c0181h;
    }

    public void run() {
        Message message = new Message();
        message.what = 1;
        this.aGn.aGa = this.aGn.aVy();
        this.aGn.aFM.sendMessage(message);
    }
}
