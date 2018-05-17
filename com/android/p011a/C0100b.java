package com.android.p011a;

import android.view.View;
import android.view.View.OnClickListener;
import com.android.clone.C0244f;
import com.android.common.p012e.C0458b;
import com.p010a.C0090a;

public class C0100b implements OnClickListener {
    private C0244f aBa = null;
    private View aBb = null;

    public C0100b(C0244f c0244f) {
        this.aBa = c0244f;
    }

    public void onClick(View view) {
        C0090a.bvo("CloneBottomListener", "onClick");
        this.aBb = view;
        C0458b.adi().adj(new C0103c(this));
    }

    public void aQC() {
        if (this.aBa == null) {
            C0090a.m1e("CloneBottomListener", "mContext is null.");
        } else {
            this.aBa.ayl(this.aBb);
        }
    }
}
