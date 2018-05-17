package com.android.gallery3d.p021b;

import android.view.View;
import android.view.View.OnClickListener;

final class C0896h implements OnClickListener {
    final /* synthetic */ C0889a asd;

    C0896h(C0889a c0889a) {
        this.asd = c0889a;
    }

    public void onClick(View view) {
        if (!this.asd.adC) {
            int aBZ = this.asd.arJ.aBZ();
            if (aBZ >= 0 && this.asd.arF.aAG() > aBZ) {
                if (this.asd.arE == null || !this.asd.arE.isShowing()) {
                    this.asd.arE = new C0890c(this.asd, this.asd.getActivity());
                    this.asd.arE.aFR(new C0897i(this));
                    this.asd.arE.aFQ(new C0898j(this));
                    this.asd.arE.show();
                }
            }
        }
    }
}
