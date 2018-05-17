package com.android.clone;

import android.os.Message;
import com.p010a.C0090a;

final class C0255q extends Thread {
    final /* synthetic */ C0244f aoU;

    C0255q(C0244f c0244f) {
        this.aoU = c0244f;
    }

    public void run() {
        if (this.aoU.anU) {
            C0090a.m1e("CloneViewManager", "composeConfirm cancle, because is destroy.");
            return;
        }
        C0250l.aAx().aAy(CloneStatus$Status.COMPOSECON_FIRM);
        Object ayb = this.aoU.ana.ayb();
        Message message = new Message();
        message.what = 3;
        message.obj = ayb;
        this.aoU.anQ.sendMessage(message);
        C0250l.aAx().aAy(CloneStatus$Status.IDLE);
    }
}
