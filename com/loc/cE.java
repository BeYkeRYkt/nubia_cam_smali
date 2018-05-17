package com.loc;

import android.location.GpsStatus.NmeaListener;

class cE implements NmeaListener {
    final /* synthetic */ at blR;

    private cE(at atVar) {
        this.blR = atVar;
    }

    public void onNmeaReceived(long j, String str) {
        try {
            this.blR.bft = j;
            this.blR.f238s = str;
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "onNmeaReceived");
        }
    }
}
