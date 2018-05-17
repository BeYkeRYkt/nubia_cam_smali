package com.android.common;

import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import com.android.common.appService.CameraMember;
import com.android.common.camerastate.FunctionState;
import com.android.common.custom.C0421M;
import com.p010a.C0090a;

class C0770w extends Handler {
    final /* synthetic */ ActivityBase ajS;

    C0770w(ActivityBase activityBase) {
        this.ajS = activityBase;
    }

    public void handleMessage(Message message) {
        if (!this.ajS.aiG.SO()) {
            switch (message.what) {
                case 2:
                    this.ajS.atj();
                    break;
                case 4:
                    this.ajS.arX(0);
                    break;
                case 5:
                    this.ajS.asp();
                    break;
                case 18:
                    this.ajS.auU();
                    this.ajS.auT();
                    break;
                case 19:
                    this.ajS.auP();
                    break;
                case 35:
                    if (this.ajS.asL() != FunctionState.SPEED_MULTISHOOTING) {
                        this.ajS.aiG.Tk(false);
                        break;
                    }
                    break;
                case 37:
                    this.ajS.ajg = true;
                    break;
                case 38:
                    this.ajS.aiG.Ti().alY(null);
                    break;
                case 60:
                    this.ajS.arI();
                    break;
                case 86:
                    if (!(this.ajS.aiG.SP() == CameraMember.VIDEO_RECORD || this.ajS.aiG.SP() == CameraMember.VIDEO_SLOMO)) {
                        this.ajS.aiG.SU().Ro();
                        break;
                    }
                case 87:
                    this.ajS.aiG.SU().RL();
                    break;
                case 91:
                    if (C0421M.dC().dD().bD()) {
                        this.ajS.arG(this.ajS.arR());
                        break;
                    }
                    break;
                case 94:
                    this.ajS.atT();
                    break;
                case 95:
                    this.ajS.atZ();
                    break;
                case 97:
                    this.ajS.asf();
                    break;
                case 103:
                    if (this.ajS.atp()) {
                        KeyEvent keyEvent = new KeyEvent(0, 10004);
                        this.ajS.onKeyDown(10004, keyEvent);
                        this.ajS.onKeyUp(10004, keyEvent);
                        C0616j.apa(this.ajS, "fingerprint", "fingerprint");
                        break;
                    }
                    return;
                case 104:
                    this.ajS.asd();
                    break;
                case 107:
                    this.ajS.aiG.Tc().Mb();
                    break;
                case 112:
                    if (!this.ajS.aiG.SO()) {
                        this.ajS.getWindow().clearFlags(128);
                        C0090a.bvo("ActivityBase", "Close camera time arrived.");
                        this.ajS.aiG.SU().Ru(true);
                        this.ajS.aiG.SU().RD(true);
                        this.ajS.aiG.Xm();
                        this.ajS.auW();
                        this.ajS.ass();
                        this.ajS.asA(true);
                        break;
                    }
                    break;
                case 113:
                    this.ajS.aul();
                    break;
            }
        }
    }
}
