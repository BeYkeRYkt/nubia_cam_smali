package com.android.common.appService;

import com.android.common.camerastate.UIState;
import com.android.common.effects.C0322f;

final class am implements C0322f {
    final /* synthetic */ C0341p UV;

    am(C0341p c0341p) {
        this.UV = c0341p;
    }

    public void gl() {
        this.UV.QW.Ke(UIState.GRID_EFFECT);
        this.UV.Rb.removeMessages(101);
        this.UV.Rb.sendEmptyMessage(101);
    }

    public void gk() {
        this.UV.Rb.removeMessages(102);
        this.UV.Rb.sendEmptyMessage(102);
    }

    public void gj() {
        this.UV.Rb.removeMessages(103);
        this.UV.Rb.sendEmptyMessage(103);
    }

    public void gi() {
        this.UV.Rb.removeMessages(104);
        this.UV.Rb.sendEmptyMessage(104);
    }
}
