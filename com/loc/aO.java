package com.loc;

import android.content.Context;

class aO implements Runnable {
    final /* synthetic */ Context f173a;
    final /* synthetic */ ag bgh;
    final /* synthetic */ String f174c;

    aO(Context context, ag agVar, String str) {
        this.f173a = context;
        this.bgh = agVar;
        this.f174c = str;
    }

    public void run() {
        try {
            C1231D.bwo(this.f173a, 1).bzT(this.bgh, this.f173a, new Throwable("gpsstatistics"), this.f174c, null, null);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
