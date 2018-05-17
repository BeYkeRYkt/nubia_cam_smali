package com.android.clone;

import android.os.Handler;
import android.os.Message;
import com.p010a.C0090a;

final class C0253o extends Handler {
    final /* synthetic */ C0244f aoS;

    C0253o(C0244f c0244f) {
        this.aoS = c0244f;
    }

    public void handleMessage(Message message) {
        C0090a.bvo("CloneViewManager", "handleMessage mIsDestroy = " + this.aoS.anU + "; msg.what = " + message.what);
        if (!this.aoS.anU) {
            switch (message.what) {
                case 1:
                    this.aoS.ayC();
                    if (this.aoS.ana.ayg() <= 2) {
                        this.aoS.ayw();
                        break;
                    } else {
                        this.aoS.ayx();
                        break;
                    }
                case 2:
                    this.aoS.ayx();
                    this.aoS.ayC();
                    break;
                case 3:
                    this.aoS.aoa.azZ((byte[]) message.obj, this.aoS.aod, this.aoS.aoc);
                    this.aoS.ayC();
                    this.aoS.ayL();
                    break;
            }
        }
    }
}
