package com.android.common.appService;

import com.android.common.effects.FunEffectRenderer$EnterEffectAnim;
import com.android.common.p012e.C0458b;
import com.android.common.p012e.C0466k;
import com.android.common.ui.C0323H;

final class ao implements C0323H {
    final /* synthetic */ C0341p UX;

    ao(C0341p c0341p) {
        this.UX = c0341p;
    }

    public void pk(int i) {
        if (this.UX.YT()) {
            this.UX.Rg.tw();
            C0458b.adi().adj(new C0466k(this.UX));
        }
    }

    public void po(int i, int i2, float f) {
        if (this.UX.Rc != null) {
            this.UX.Rc.fF(i, i2, f);
        }
        this.UX.QZ.setClickable(false);
    }

    public void pj(int i, int i2, float f) {
        if (this.UX.Rc != null) {
            this.UX.Rc.fG(i, i2, f);
        }
        this.UX.QZ.setClickable(true);
    }

    public void pl() {
        this.UX.QY.setVisibility(8);
        if (this.UX.Rc != null) {
            this.UX.Rc.fH(false);
            this.UX.QV.UR().m35l();
        }
    }

    public void pm() {
        if (this.UX.Rc != null) {
            this.UX.Rc.fH(true);
            this.UX.QV.UR().m35l();
        }
    }

    public void pn() {
        if (this.UX.Rc != null) {
            this.UX.Rc.fI(FunEffectRenderer$EnterEffectAnim.GRID_EFFECT);
        }
    }
}
