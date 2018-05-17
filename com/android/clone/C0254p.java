package com.android.clone;

import com.p010a.C0090a;

final class C0254p extends Thread {
    final /* synthetic */ C0244f aoT;

    C0254p(C0244f c0244f) {
        this.aoT = c0244f;
    }

    public void run() {
        if (this.aoT.anU) {
            C0090a.m1e("CloneViewManager", "showEditPreview cancle, because is destroy.");
            return;
        }
        C0250l.aAx().aAy(CloneStatus$Status.EDIT_PREVIEW);
        this.aoT.ana.ayj(this.aoT.anb);
        this.aoT.anQ.sendEmptyMessage(2);
        C0250l.aAx().aAy(CloneStatus$Status.IDLE);
    }
}
