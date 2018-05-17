package com.android.common.p023b;

import android.view.View;
import android.view.View.OnClickListener;
import com.android.common.appService.C0170a;
import com.android.common.p012e.C0458b;
import com.android.common.p012e.C0467m;

public class C0362k implements OnClickListener {
    private C0170a Jo = null;

    public C0362k(C0170a c0170a) {
        this.Jo = c0170a;
    }

    public void onClick(View view) {
        C0458b.adi().adj(C0467m.adz(this));
    }

    public void KK() {
        if (this.Jo != null) {
            this.Jo.Ss();
        }
    }
}
