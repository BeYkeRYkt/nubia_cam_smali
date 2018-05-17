package com.android.electronicfno;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;

final class C0845q extends Handler {
    final /* synthetic */ C0839j aYf;

    C0845q(C0839j c0839j) {
        this.aYf = c0839j;
    }

    public void handleMessage(Message message) {
        if (this.aYf.aXQ != null) {
            switch (message.what) {
                case 0:
                    this.aYf.aXQ.bnP(0);
                    break;
                case 1:
                    this.aYf.aXQ.bnO(0);
                    break;
                case 2:
                    C0841m c0841m = (C0841m) message.obj;
                    this.aYf.aXQ.bnM(c0841m.aYb, c0841m.aYa);
                    break;
                case 3:
                    this.aYf.aXQ.bnK();
                    break;
                case 4:
                    this.aYf.aXQ.bnL((Bitmap) message.obj);
                    break;
                case 5:
                    this.aYf.aXQ.bnN();
                    break;
            }
        }
    }
}
