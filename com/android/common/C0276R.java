package com.android.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import com.p010a.C0090a;

final class C0276R extends BroadcastReceiver {
    final /* synthetic */ ActivityBase akI;

    C0276R(ActivityBase activityBase) {
        this.akI = activityBase;
    }

    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("com.nubia_bt.capture")) {
            C0090a.bvo("ActivityBase", "receive nubia_bt capture");
            this.akI.onKeyDown(10000, new KeyEvent(0, 10000));
        }
    }
}
