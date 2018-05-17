package com.android.common.p014n;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.android.common.C0616j;
import com.p010a.C0090a;

final class C0679u implements OnClickListener {
    final /* synthetic */ C0117j adR;

    C0679u(C0117j c0117j) {
        this.adR = c0117j;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.adR.adC) {
            C0090a.m1e("AbstractFamilyMemberFragment", "BacklightTipDialog be click when fragment is pause");
            return;
        }
        dialogInterface.cancel();
        C0616j.aqf(this.adR.adA);
        this.adR.adA.Wq(false);
        this.adR.ajU();
    }
}
