package com.android.objectclear;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class C1032j extends Handler {
    final /* synthetic */ C1031i aKi;

    public C1032j(C1031i c1031i) {
        this.aKi = c1031i;
        super(Looper.getMainLooper());
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 0:
                this.aKi.aKe.setVisibility(0);
                this.aKi.aKg.sendEmptyMessage(1);
                return;
            case 1:
                this.aKi.aKe.setVisibility(8);
                return;
            case 2:
                this.aKi.aJR = (Bitmap) message.obj;
                this.aKi.aJS.setImageBitmap((Bitmap) message.obj);
                return;
            case 3:
                this.aKi.aJJ = true;
                this.aKi.baa();
                this.aKi.adA.TA();
                this.aKi.alz();
                this.aKi.aJU.aWC();
                this.aKi.aZW();
                return;
            case 4:
                this.aKi.adA.Wb(0);
                this.aKi.bah(message.arg1);
                return;
            case 5:
                this.aKi.bac();
                return;
            default:
                return;
        }
    }
}
