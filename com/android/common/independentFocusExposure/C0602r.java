package com.android.common.independentFocusExposure;

import android.os.Handler;
import android.os.Message;

class C0602r extends Handler {
    final /* synthetic */ C0598n Nz;

    private C0602r(C0598n c0598n) {
        this.Nz = c0598n;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 99:
                if (this.Nz.Pt()) {
                    this.Nz.Ni.setVisibility(0);
                    this.Nz.Mn.cancel();
                    this.Nz.Nk.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(200).withEndAction(this.Nz.Mu).start();
                    this.Nz.MH = false;
                    return;
                }
                this.Nz.Mn.cancel();
                return;
            case 101:
                this.Nz.Mn.start();
                return;
            case 102:
                this.Nz.Mo.start();
                return;
            case 103:
                this.Nz.MF = false;
                return;
            default:
                return;
        }
    }
}
