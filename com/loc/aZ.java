package com.loc;

import android.content.Context;

class aZ implements Runnable {
    final /* synthetic */ Context f186a;
    final /* synthetic */ int f187b;
    final /* synthetic */ Throwable bgx;
    final /* synthetic */ String f188d;
    final /* synthetic */ String f189e;

    aZ(Context context, int i, Throwable th, String str, String str2) {
        this.f186a = context;
        this.f187b = i;
        this.bgx = th;
        this.f188d = str;
        this.f189e = str2;
    }

    public void run() {
        try {
            aR bwo = C1231D.bwo(this.f186a, this.f187b);
            if (bwo != null) {
                bwo.bzU(this.f186a, this.bgx, this.f188d, this.f189e);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
