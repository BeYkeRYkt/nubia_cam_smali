package com.android.common.p014n;

import android.view.View;
import android.view.View.OnClickListener;
import com.android.common.C0616j;
import com.android.common.camerastate.UIState;
import com.p010a.C0090a;

final class C0637A implements OnClickListener {
    final /* synthetic */ C0117j adX;

    C0637A(C0117j c0117j) {
        this.adX = c0117j;
    }

    public void onClick(View view) {
        boolean akr = !this.adX.ajy(this.adX.acL) ? this.adX.ajy(this.adX.acH) : true;
        if (this.adX.alq() != UIState.SETTING || akr) {
            C0090a.bvo("AbstractFamilyMemberFragment", "Cannot go to more setting, not in setting or setting is animating.");
        } else if (this.adX.acy == null || !this.adX.acy.akM()) {
            C0616j.apa(this.adX.getActivity(), "MORE", "more");
            this.adX.ajf();
        } else {
            C0090a.bvo("AbstractFamilyMemberFragment", "MoreSettingsFragment is playing Animator");
        }
    }
}
