package com.android.objectclear;

import android.view.View;
import android.view.View.OnClickListener;
import com.p010a.C0090a;

class C1033k implements OnClickListener {
    final /* synthetic */ C1031i aKj;

    private C1033k(C1031i c1031i) {
        this.aKj = c1031i;
    }

    public void onClick(View view) {
        C0090a.m1e("NubiaObjectClearFragment", "CancelButtonClickListener");
        if (this.aKj.aJL.getVisibility() != 0) {
            C0090a.bvo("NubiaObjectClearFragment", "ignore click because view is not visible");
        } else {
            this.aKj.aZR();
        }
    }
}
