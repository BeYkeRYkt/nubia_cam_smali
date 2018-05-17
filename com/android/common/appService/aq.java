package com.android.common.appService;

import android.view.View;
import android.view.View.OnClickListener;
import com.android.common.p012e.C0458b;
import com.android.common.p012e.C0470p;
import com.p010a.C0090a;

final class aq implements OnClickListener {
    final /* synthetic */ C0341p UZ;

    aq(C0341p c0341p) {
        this.UZ = c0341p;
    }

    public void onClick(View view) {
        if (this.UZ.YT() && !this.UZ.QV.SO() && this.UZ.QZ.isClickable()) {
            C0090a.bvo("EffectPageManager", "debug, click effect button");
            if (this.UZ.Ra == null || !this.UZ.Ra.Zy()) {
                C0458b.adi().adj(new C0470p(this.UZ, !this.UZ.Rc.fE()));
                return;
            } else {
                C0090a.bvo("EffectPageManager", "click intercepted");
                return;
            }
        }
        C0090a.bvo("EffectPageManager", "Has Effect Render: " + this.UZ.YT() + "; Acticity Paused: " + this.UZ.QV.SO() + "; isClickable: " + this.UZ.QZ.isClickable());
    }
}
