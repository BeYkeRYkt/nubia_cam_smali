package com.android.common.p014n;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.android.common.C0616j;

final class C0682x implements OnCancelListener {
    final /* synthetic */ C0117j adU;

    C0682x(C0117j c0117j) {
        this.adU = c0117j;
    }

    public void onCancel(DialogInterface dialogInterface) {
        if (this.adU.adA != null) {
            if (this.adU.adA.Tr() != null) {
                C0616j.aqg(this.adU.adA);
            }
            this.adU.adA.Wq(true);
        }
    }
}
