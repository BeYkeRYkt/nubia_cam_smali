package com.android.video;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class C1170x extends BroadcastReceiver {
    final /* synthetic */ C1161n aRB;

    C1170x(C1161n c1161n) {
        this.aRB = c1161n;
    }

    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.MEDIA_EJECT")) {
            this.aRB.bhP(false);
        }
    }
}
