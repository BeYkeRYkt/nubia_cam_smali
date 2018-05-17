package com.android.clone;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import com.p010a.C0090a;

final class C0256r extends Thread {
    final /* synthetic */ C0244f aoV;

    C0256r(C0244f c0244f) {
        this.aoV = c0244f;
    }

    public void run() {
        if (this.aoV.anU) {
            C0090a.m1e("CloneViewManager", "handleComposition cancle, because is destroy.");
            return;
        }
        C0250l.aAx().aAy(CloneStatus$Status.COMPOSITION);
        if (this.aoV.anb == null) {
            this.aoV.anb = Bitmap.createBitmap(this.aoV.aoh, this.aoV.aog, Config.ARGB_8888);
        }
        this.aoV.ana.ayc(this.aoV.anb);
        this.aoV.anQ.sendEmptyMessage(1);
        C0250l.aAx().aAy(CloneStatus$Status.IDLE);
    }
}
