package com.android.multiexposure;

import android.view.View;
import android.view.View.OnClickListener;
import com.p010a.C0090a;

final class C0986v implements OnClickListener {
    final /* synthetic */ C0974i amA;

    C0986v(C0974i c0974i) {
        this.amA = c0974i;
    }

    public void onClick(View view) {
        C0090a.bvo("MultiExposureFragment", "mSeekbarHandler onClick");
        if (this.amA.alq) {
            this.amA.close();
        } else {
            this.amA.awE();
        }
    }
}
