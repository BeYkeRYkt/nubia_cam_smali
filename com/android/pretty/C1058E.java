package com.android.pretty;

import android.view.View;
import android.view.View.OnClickListener;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.p012e.C0458b;
import com.p010a.C0090a;

final class C1058E implements OnClickListener {
    final /* synthetic */ C1075e avF;

    C1058E(C1075e c1075e) {
        this.avF = c1075e;
    }

    public void onClick(View view) {
        if (this.avF.asT.SX().JV() == DeviceState.IDLE && this.avF.asT.SX().JZ() == FunctionState.NORMAL && this.avF.asT.SX().Kc() == UIState.NORMAL && C0458b.adi().adm()) {
            this.avF.aGJ();
        } else {
            C0090a.bvo("PortraitPrettySettingLayout", "State limit, can't enable arrow tab. (DeviceState: " + this.avF.asT.SX().JV() + "; FunctionState: " + this.avF.asT.SX().JZ() + "; UIState: " + this.avF.asT.SX().Kc() + "; isCommandEnable: " + C0458b.adi().adm());
        }
    }
}
