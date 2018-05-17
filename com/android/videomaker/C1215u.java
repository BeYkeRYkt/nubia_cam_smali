package com.android.videomaker;

import android.os.Handler;
import android.os.Message;

final class C1215u extends Handler {
    final /* synthetic */ LooperShowView aAQ;

    C1215u(LooperShowView looperShowView) {
        this.aAQ = looperShowView;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.aAQ.invalidate();
                this.aAQ.axU.sendEmptyMessageDelayed(1, this.aAQ.axW);
                return;
            default:
                throw new AssertionError(message.what);
        }
    }
}
