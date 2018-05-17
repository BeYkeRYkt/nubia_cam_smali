package com.android.common.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class be extends BroadcastReceiver {
    final /* synthetic */ C0744T yw;

    be(C0744T c0744t) {
        this.yw = c0744t;
    }

    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.BATTERY_CHANGED")) {
            int intExtra = intent.getIntExtra("level", 0);
            this.yw.sS = (intExtra * 100) / intent.getIntExtra("scale", 100);
            this.yw.qx("Battery: " + this.yw.sS);
            this.yw.qy();
        }
    }
}
