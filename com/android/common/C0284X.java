package com.android.common;

import android.view.View;
import android.view.View.OnClickListener;
import com.p010a.C0090a;

final class C0284X implements OnClickListener {
    final /* synthetic */ ActivityBase akO;

    C0284X(ActivityBase activityBase) {
        this.akO = activityBase;
    }

    public void onClick(View view) {
        C0090a.bvo("ActivityBase", "mWakeUpView onClick");
        if (this.akO.ajP.getVisibility() == 0) {
            this.akO.avd();
        }
    }
}
