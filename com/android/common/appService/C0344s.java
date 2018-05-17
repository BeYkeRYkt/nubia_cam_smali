package com.android.common.appService;

import android.os.Handler;
import android.os.Message;

class C0344s extends Handler {
    final /* synthetic */ C0341p Rj;

    private C0344s(C0341p c0341p) {
        this.Rj = c0341p;
    }

    public void handleMessage(Message message) {
        if (this.Rj.YT()) {
            switch (message.what) {
                case 101:
                    this.Rj.Ze();
                    break;
                case 102:
                    this.Rj.QY.setVisibility(0);
                    break;
                case 103:
                    this.Rj.Zb();
                    this.Rj.QY.setVisibility(8);
                    break;
                case 104:
                    this.Rj.Zd();
                    break;
            }
        }
    }
}
