package com.android.common.storagemanager;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class C0723h extends Handler {
    final /* synthetic */ C0722e afk;

    public C0723h(C0722e c0722e, Looper looper) {
        this.afk = c0722e;
        super(looper);
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 2:
                long amb = this.afk.amb();
                synchronized (this.afk.aeT) {
                    removeMessages(2);
                    if (!this.afk.aeT.isEmpty()) {
                        amq(amb);
                    }
                }
                return;
            default:
                return;
        }
    }

    private void amq(long j) {
        Message obtainMessage = this.afk.aeS.obtainMessage(3);
        Bundle bundle = new Bundle();
        bundle.putLong("capacity", j);
        bundle.putBoolean("enough", j > 104857600);
        obtainMessage.setData(bundle);
        obtainMessage.obj = this.afk.aeT.clone();
        this.afk.aeT.clear();
        obtainMessage.sendToTarget();
    }
}
