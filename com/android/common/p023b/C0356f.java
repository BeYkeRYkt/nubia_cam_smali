package com.android.common.p023b;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.android.camera.R;
import com.android.common.C0259A;
import com.android.common.appService.C0329e;
import com.android.common.p012e.C0458b;
import com.android.common.p012e.C0467m;
import com.android.common.p028h.C0562f;

public class C0356f implements OnClickListener {
    private C0329e Jb = null;

    public C0356f(C0329e c0329e) {
        this.Jb = c0329e;
    }

    public void onClick(View view) {
        C0458b.adi().adj(C0467m.adx(this));
    }

    public void Kk() {
        if (Ko() && !this.Jb.SO()) {
            Activity SM = this.Jb.SM();
            if (SM.arE()) {
                if (Kp()) {
                    SM.asb();
                } else {
                    C0259A.avE(SM, R.string.phone_not_picture);
                }
            } else if (Kn() != null) {
                SM.asb();
            } else {
                this.Jb.WX(this.Jb.Tb(R.string.phone_not_picture), 0, 17, 0, Kl(166));
            }
        }
    }

    private int Kl(int i) {
        return (int) ((Km().SN().getResources().getDisplayMetrics().density * ((float) i)) + 0.5f);
    }

    private boolean Kp() {
        return Km().TV();
    }

    private C0329e Km() {
        return this.Jb;
    }

    private boolean Ko() {
        return Km().Vy();
    }

    private C0562f Kn() {
        return Km().Th().afq();
    }
}
