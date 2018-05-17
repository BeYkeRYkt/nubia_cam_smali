package com.android.common.p014n;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.android.common.camerastate.UIState;

class C0665g implements OnItemClickListener {
    final /* synthetic */ C0659a abF;

    private C0665g(C0659a c0659a) {
        this.abF = c0659a;
    }

    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        if (this.abF.adD.JX(UIState.HIGH_SETTING_POPUP)) {
            this.abF.abh.nz(true);
        }
    }
}
