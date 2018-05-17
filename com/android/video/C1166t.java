package com.android.video;

import android.os.Handler;
import android.os.Message;
import com.p010a.C0090a;

final class C1166t extends Handler {
    final /* synthetic */ C1161n aRx;

    C1166t(C1161n c1161n) {
        this.aRx = c1161n;
    }

    public void handleMessage(Message message) {
        if (this.aRx.adC) {
            C0090a.m1e("VideoFragment", "fragment is puased ignore " + message.what);
            return;
        }
        switch (message.what) {
            case 2:
                this.aRx.aQF = true;
                break;
        }
    }
}
