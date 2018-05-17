package com.loc;

import android.content.Context;
import android.os.Looper;

class C1233F implements Runnable {
    final /* synthetic */ Context f116a;
    final /* synthetic */ ag bdV;
    final /* synthetic */ boolean bdW;
    final /* synthetic */ bp bdX;

    C1233F(bp bpVar, Context context, ag agVar, boolean z) {
        this.bdX = bpVar;
        this.f116a = context;
        this.bdV = agVar;
        this.bdW = z;
    }

    public void run() {
        try {
            synchronized (Looper.getMainLooper()) {
                new aY(this.f116a, true).bAr(this.bdV);
            }
            if (this.bdW) {
                synchronized (Looper.getMainLooper()) {
                    C1263h c1263h = new C1263h(this.f116a);
                    av avVar = new av();
                    avVar.bzb(true);
                    avVar.m283a(true);
                    avVar.bza(true);
                    c1263h.bvz(avVar);
                }
                C1231D.m83a(this.bdX.bhk);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
