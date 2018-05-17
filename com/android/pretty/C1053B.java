package com.android.pretty;

import android.view.View;
import android.view.View.OnClickListener;
import com.android.camera.R;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.p012e.C0458b;
import com.p010a.C0090a;

final class C1053B implements OnClickListener {
    final /* synthetic */ C1075e avC;

    C1053B(C1075e c1075e) {
        this.avC = c1075e;
    }

    public void onClick(View view) {
        if (this.avC.asT.SX().JV() != DeviceState.IDLE || this.avC.asT.SX().JZ() != FunctionState.NORMAL || this.avC.asT.SX().Kc() != UIState.NORMAL || !C0458b.adi().adm()) {
            C0090a.bvo("PortraitPrettySettingLayout", "State limit, can't enable bokeh tab. (DeviceState: " + this.avC.asT.SX().JV() + "; FunctionState: " + this.avC.asT.SX().JZ() + "; UIState: " + this.avC.asT.SX().Kc() + "; isCommandEnable: " + C0458b.adi().adm());
        } else if (this.avC.asW.getVisibility() != 8) {
            if (this.avC.ati.getVisibility() == 0) {
                this.avC.asW.setBackgroundResource(R.drawable.microspur_layout_container_middle_select);
                this.avC.ati.setBackgroundResource(R.drawable.microspur_layout_container_left_unselect);
                this.avC.asW.setTextColor(this.avC.asP);
                this.avC.ati.setTextColor(this.avC.asQ);
                this.avC.ath.setVisibility(8);
            }
            this.avC.asV.setVisibility(0);
            if (this.avC.ati.getVisibility() == 8 || !this.avC.atb) {
                this.avC.aGJ();
            }
        }
    }
}
