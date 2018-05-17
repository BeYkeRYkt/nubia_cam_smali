package com.android.common.appService;

import android.os.Handler;
import android.os.Message;

class C0317W extends Handler {
    final /* synthetic */ C0316U Ui;

    private C0317W(C0316U c0316u) {
        this.Ui = c0316u;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 0:
                this.Ui.acs();
                break;
            case 1:
                this.Ui.acr();
                break;
        }
        super.handleMessage(message);
    }
}
