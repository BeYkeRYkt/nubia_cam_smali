package com.loc;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class ad extends BroadcastReceiver {
    final /* synthetic */ af beE;

    ad(af afVar) {
        this.beE = afVar;
    }

    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            try {
                if (intent.getAction().equals("android.location.GPS_FIX_CHANGE")) {
                    af.f196b = false;
                }
            } catch (Throwable th) {
                bx.bBw(th, "CollectorManager", "mReceiver");
            }
        }
    }
}
