package com.android.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class C0272N extends BroadcastReceiver {
    final /* synthetic */ ActivityBase akD;

    C0272N(ActivityBase activityBase) {
        this.akD = activityBase;
    }

    public void onReceive(Context context, Intent intent) {
        if (this.akD.atq()) {
            this.akD.finish();
        }
    }
}
