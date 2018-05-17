package com.android.common;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.p010a.C0090a;

final class C0280U implements OnClickListener {
    final /* synthetic */ ActivityBase akL;

    C0280U(ActivityBase activityBase) {
        this.akL = activityBase;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.akL.auC()) {
            this.akL.aiG.Ti().alY(null);
            C0090a.bvo("ActivityBase", "path is already set to sd card");
        }
    }
}
