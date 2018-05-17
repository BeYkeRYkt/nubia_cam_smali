package com.android.delaygenerator;

import android.os.Handler;
import android.os.Message;

class C0776b extends Handler {
    final /* synthetic */ DelayRecorder asi;

    private C0776b(DelayRecorder delayRecorder) {
        this.asi = delayRecorder;
    }

    public void handleMessage(Message message) {
        this.asi.mListener.aFW(message.what);
    }
}
