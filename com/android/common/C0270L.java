package com.android.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class C0270L extends BroadcastReceiver {
    final /* synthetic */ ActivityBase akB;

    C0270L(ActivityBase activityBase) {
        this.akB = activityBase;
    }

    public void onReceive(Context context, Intent intent) {
        this.akB.aix.afp();
        this.akB.aiG.Ti().alY(null);
    }
}
