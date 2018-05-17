package com.android.videomaker;

import android.os.Handler;
import android.os.Message;

class C1189c extends Handler {
    final /* synthetic */ C1179a ayC;

    private C1189c(C1179a c1179a) {
        this.ayC = c1179a;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.ayC.ayp.aNt();
                return;
            case 2:
                this.ayC.ayp.aNo();
                return;
            case 3:
                this.ayC.ayp.aNp();
                return;
            case 4:
                this.ayC.ayp.aNn();
                return;
            case 7:
                this.ayC.ayp.aNr(true);
                return;
            case 8:
                this.ayC.ayp.aNr(false);
                return;
            case 9:
                this.ayC.aMK();
                return;
            case 10:
                this.ayC.aMs();
                return;
            case 11:
                this.ayC.ayp.aNs(true);
                return;
            case 12:
                this.ayC.ayp.aNs(false);
                return;
            case 13:
                this.ayC.aML();
                return;
            case 14:
                this.ayC.aML();
                this.ayC.aMo();
                this.ayC.aMI();
                return;
            default:
                return;
        }
    }
}
