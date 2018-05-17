package com.android.common.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.android.camera.R;
import com.p010a.C0090a;

final class aW implements OnClickListener {
    final /* synthetic */ EffectPage yj;
    final /* synthetic */ int yk;
    final /* synthetic */ TextView yl;

    aW(EffectPage effectPage, int i, TextView textView) {
        this.yj = effectPage;
        this.yk = i;
        this.yl = textView;
    }

    public void onClick(View view) {
        if (this.yj.getVisibility() != 0) {
            C0090a.bvo("FunEffectPage", "page is not visible, just return");
            return;
        }
        this.yj.re.uY(this.yk);
        if (this.yl != this.yj.qS) {
            this.yl.setBackgroundResource(R.drawable.funeffect_grid_selected_rec);
            if (this.yj.qS != null) {
                this.yj.qS.setBackgroundResource(0);
            }
            this.yj.qS = this.yl;
        }
        this.yj.oL(this.yk);
        this.yj.oV(this.yj.getContext(), "effect_" + this.yj.re.tw(), this.yj.re.uZ());
    }
}
