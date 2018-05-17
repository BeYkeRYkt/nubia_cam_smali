package com.android.video;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class C1171y extends BroadcastReceiver {
    final /* synthetic */ C1161n aRC;

    C1171y(C1161n c1161n) {
        this.aRC = c1161n;
    }

    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (!action.equals("android.media.action.STOP_CAMCORDER") && action.equals("com.android.mms.NOTIFY_RECEIVER_SMS_OR_MMS")) {
            int state = this.aRC.aRj.getState();
            if (!(state == 1 || state == 3)) {
                if (state != 4) {
                    return;
                }
            }
            this.aRC.bhK(100001);
        }
    }
}
