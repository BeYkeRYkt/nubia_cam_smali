package com.android.specification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.p010a.C0090a;

final class C1111j extends BroadcastReceiver {
    final /* synthetic */ SpecificationActivity aEJ;

    C1111j(SpecificationActivity specificationActivity) {
        this.aEJ = specificationActivity;
    }

    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals("android.intent.action.CLOSE_SYSTEM_DIALOGS")) {
            if ("homekey".equals(intent.getStringExtra("reason"))) {
                C0090a.bvo("SpecificationActivity", "Home pressed");
                this.aEJ.finish();
            }
        }
    }
}
