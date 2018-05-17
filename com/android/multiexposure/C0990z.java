package com.android.multiexposure;

import android.view.View;
import android.view.View.OnClickListener;
import com.p010a.C0090a;

final class C0990z implements OnClickListener {
    final /* synthetic */ C0974i amE;

    C0990z(C0974i c0974i) {
        this.amE = c0974i;
    }

    public void onClick(View view) {
        if (this.amE.awD()) {
            C0090a.m1e("MultiExposureFragment", "TouchScreen is disabled ignore MultiExposureDoneButton onClick");
            return;
        }
        if (this.amE.alV == 2 && this.amE.alo != null) {
            this.amE.alo.axC();
            this.amE.adA.Wb(3);
        }
    }
}
