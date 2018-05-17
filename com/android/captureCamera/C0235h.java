package com.android.captureCamera;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.android.common.C0616j;
import com.p010a.C0090a;

final class C0235h extends BroadcastReceiver {
    final /* synthetic */ CaptureCameraService aSN;

    C0235h(CaptureCameraService captureCameraService) {
        this.aSN = captureCameraService;
    }

    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        this.aSN.aSe = context;
        C0090a.bvo("CaptureCameraService", "action = " + action);
        if (!this.aSN.biN()) {
            return;
        }
        if (this.aSN.biO()) {
            C0090a.m1e("CaptureCameraService", "isPhoneCalled!");
        } else if (C0616j.apK() || C0616j.apV(this.aSN.getPackageName(), context)) {
            C0090a.m1e("CaptureCameraService", "isActivityBaseStart or isTopActivity");
        } else if (this.aSN.aSx == null || !this.aSN.aSx.biA(context)) {
            this.aSN.aSu.alY(this.aSN.aSw);
        } else {
            C0090a.m1e("CaptureCameraService", "It is screen on!");
        }
    }
}
