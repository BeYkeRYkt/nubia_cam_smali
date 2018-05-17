package com.android.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.p010a.C0090a;

final class aj extends BroadcastReceiver {
    final /* synthetic */ ActivityBase alb;

    aj(ActivityBase activityBase) {
        this.alb = activityBase;
    }

    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.CLOSE_SYSTEM_DIALOGS")) {
            if ("homekey".equals(intent.getStringExtra("reason"))) {
                C0090a.bvo("ActivityBase", "Home pressed");
                this.alb.finish();
            }
        }
    }
}
