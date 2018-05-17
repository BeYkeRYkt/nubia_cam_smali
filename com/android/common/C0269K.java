package com.android.common;

import android.view.View;
import android.view.View.OnClickListener;
import com.p010a.C0090a;

final class C0269K implements OnClickListener {
    final /* synthetic */ C0726t akA;

    C0269K(C0726t c0726t) {
        this.akA = c0726t;
    }

    public void onClick(View view) {
        C0090a.bvo(this.akA.TAG, "onClick ");
        if (this.akA.aip != null && this.akA.aip.getVisibility() == 0 && this.akA.aik != null) {
            this.akA.aik.arx();
            this.akA.aip.setVisibility(8);
        }
    }
}
