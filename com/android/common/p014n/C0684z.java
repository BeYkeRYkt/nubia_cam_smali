package com.android.common.p014n;

import android.view.View;
import android.view.View.OnClickListener;
import com.android.common.C0616j;

final class C0684z implements OnClickListener {
    final /* synthetic */ C0117j adW;

    C0684z(C0117j c0117j) {
        this.adW = c0117j;
    }

    public void onClick(View view) {
        C0616j.apa(this.adW.getActivity(), "setting_close", "close_click");
        this.adW.ajk();
    }
}
