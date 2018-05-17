package com.loc;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class ar extends BroadcastReceiver {
    final /* synthetic */ af bfm;

    ar(af afVar) {
        this.bfm = afVar;
    }

    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            try {
                String action = intent.getAction();
                if (action.equals("android.intent.action.MEDIA_MOUNTED")) {
                    at.bfH = false;
                }
                if (action.equals("android.intent.action.MEDIA_UNMOUNTED")) {
                    at.bfH = true;
                }
                if (action.equals("android.intent.action.MEDIA_EJECT")) {
                    at.bfH = true;
                }
            } catch (Throwable th) {
                bx.bBw(th, "CollectorManager", "mMockReceier");
            }
        }
    }
}
