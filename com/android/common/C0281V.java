package com.android.common;

import com.android.common.p016a.C0144d;
import com.p010a.C0090a;

final class C0281V implements C0144d {
    final /* synthetic */ ActivityBase akM;

    C0281V(ActivityBase activityBase) {
        this.akM = activityBase;
    }

    public void mo321L() {
        C0090a.bvo("ActivityBase", "FirstFrameAvailable");
        this.akM.ajb.sendEmptyMessage(97);
        this.akM.arD().Sy();
        this.akM.aiG.WA(true);
        this.akM.asc(250);
    }
}
