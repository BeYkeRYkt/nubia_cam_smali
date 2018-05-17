package com.android.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

final class C0277S implements ServiceConnection {
    final /* synthetic */ ActivityBase akJ;

    C0277S(ActivityBase activityBase) {
        this.akJ = activityBase;
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.akJ.aiG.WI(true);
    }

    public void onServiceDisconnected(ComponentName componentName) {
        this.akJ.aiG.WI(false);
        this.akJ.finish();
    }
}
