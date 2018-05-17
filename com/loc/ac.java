package com.loc;

import android.content.Context;

class ac extends Thread {
    final /* synthetic */ Context f190a;
    final /* synthetic */ String f191b;
    final /* synthetic */ cc beD;
    final /* synthetic */ String f192c;

    ac(cc ccVar, Context context, String str, String str2) {
        this.beD = ccVar;
        this.f190a = context;
        this.f191b = str;
        this.f192c = str2;
    }

    public void run() {
        try {
            this.beD.m472a(this.f190a, this.f191b, this.f192c);
        } catch (Throwable th) {
            C1259s.bwd(th, "DynamicClassLoader", "run()");
        }
    }
}
