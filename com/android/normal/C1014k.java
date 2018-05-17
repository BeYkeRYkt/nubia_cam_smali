package com.android.normal;

import android.view.View;
import android.view.View.OnClickListener;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.p012e.C0458b;

final class C1014k implements OnClickListener {
    final /* synthetic */ C1005b aCG;

    C1014k(C1005b c1005b) {
        this.aCG = c1005b;
    }

    public void onClick(View view) {
        if (this.aCG.alt() == DeviceState.IDLE && this.aCG.alu() == FunctionState.NORMAL && this.aCG.alq() == UIState.NORMAL && C0458b.adi().adm()) {
            this.aCG.aCd.aSY();
            this.aCG.aRW();
        }
    }
}
