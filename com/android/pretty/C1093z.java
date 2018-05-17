package com.android.pretty;

import android.view.View;
import android.view.View.OnClickListener;
import com.android.camera.R;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.p012e.C0458b;
import com.p010a.C0090a;

final class C1093z implements OnClickListener {
    final /* synthetic */ C1075e avA;

    C1093z(C1075e c1075e) {
        this.avA = c1075e;
    }

    public void onClick(View view) {
        if (this.avA.asT.SX().JV() != DeviceState.IDLE || this.avA.asT.SX().JZ() != FunctionState.NORMAL || this.avA.asT.SX().Kc() != UIState.NORMAL || !C0458b.adi().adm()) {
            C0090a.bvo("PortraitPrettySettingLayout", "State limit, can't enable pretty tab. (DeviceState: " + this.avA.asT.SX().JV() + "; FunctionState: " + this.avA.asT.SX().JZ() + "; UIState: " + this.avA.asT.SX().Kc() + "; isCommandEnable: " + C0458b.adi().adm());
        } else if (this.avA.ati.getVisibility() != 8) {
            if (this.avA.asW.getVisibility() == 0) {
                this.avA.asW.setBackgroundResource(R.drawable.microspur_layout_container_middle_unselect);
                this.avA.ati.setBackgroundResource(R.drawable.microspur_layout_container_left_select);
                this.avA.asW.setTextColor(this.avA.asQ);
                this.avA.ati.setTextColor(this.avA.asP);
                this.avA.asV.setVisibility(8);
            }
            this.avA.ath.setVisibility(0);
            if (this.avA.asW.getVisibility() == 8 || !this.avA.atb) {
                this.avA.aGJ();
            }
        }
    }
}
