package com.android.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.android.common.camerastate.FunctionState;
import com.p010a.C0090a;

final class C0273O extends BroadcastReceiver {
    final /* synthetic */ ActivityBase akE;

    C0273O(ActivityBase activityBase) {
        this.akE = activityBase;
    }

    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        String substring = intent.getDataString().substring(16);
        C0090a.bvo("zhoujiayu", "action = " + action + "   uri:" + substring);
        if (!substring.equals("usba")) {
            if (action.equals("android.intent.action.MEDIA_UNMOUNTED") || action.equals("android.intent.action.MEDIA_CHECKING")) {
                this.akE.auD();
                this.akE.aiG.Ti().alY(null);
            } else if (action.equals("android.intent.action.MEDIA_SCANNER_FINISHED")) {
                this.akE.aiG.Ti().alY(new C0274P(this));
            } else if (action.equals("android.intent.action.MEDIA_EJECT")) {
                boolean arm = C0701s.arm();
                avY();
                this.akE.auD();
                this.akE.aiG.Ti().alY(new C0275Q(this, arm));
            } else if (action.equals("android.intent.action.MEDIA_MOUNTED")) {
                this.akE.auD();
                this.akE.auN();
            }
        }
    }

    private void avY() {
        FunctionState JZ = this.akE.aiI.JZ();
        if (JZ == FunctionState.QUALITY_MULTISHOOTING) {
            this.akE.aiG.Xg();
        } else if (JZ == FunctionState.SPEED_MULTISHOOTING) {
            this.akE.aiG.Tw().Qz();
        }
    }
}
