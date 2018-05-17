package com.android.panorama;

import android.os.Handler;
import android.os.Message;
import com.android.common.appService.CameraMember;
import com.android.common.custom.C0421M;
import com.p010a.C0090a;

class C1048j extends Handler {
    final /* synthetic */ C1047i aUR;

    private C1048j(C1047i c1047i) {
        this.aUR = c1047i;
    }

    public void handleMessage(Message message) {
        if (this.aUR.adC || this.aUR.adA.SP() != CameraMember.PANORAMA) {
            C0090a.m1e("PanoramaFragment", "mIsPaused " + this.aUR.adC + " " + this.aUR.adA.SP());
            return;
        }
        switch (message.what) {
            case 0:
                this.aUR.aUF.bkq(C0421M.dC().dD().dt());
                this.aUR.aUF.bkr();
                break;
            case 1:
                this.aUR.aUF.bkf(this.aUR.aUO);
                this.aUR.alA().Tr().IK(this.aUR.aUO);
                break;
            case 2:
                C0090a.bvo("PanoramaFragment", "MSG_PANO_ERROR");
                break;
            case 3:
                this.aUR.aUF.bks(0);
                break;
            case 4:
                this.aUR.aUH.bka(this.aUR.aUO);
                if (this.aUR.alA().Tr() != null) {
                    this.aUR.alA().Tr().IK(this.aUR.aUO);
                    break;
                }
                break;
        }
    }
}
