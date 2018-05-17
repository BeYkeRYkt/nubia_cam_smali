package com.loc;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Messenger;

class bm implements ServiceConnection {
    final /* synthetic */ bR bhi;

    bm(bR bRVar) {
        this.bhi = bRVar;
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.bhi.biE = new Messenger(iBinder);
    }

    public void onServiceDisconnected(ComponentName componentName) {
        this.bhi.biE = null;
    }
}
