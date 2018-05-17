package com.android.common.p014n;

import android.view.View;
import android.view.View.OnClickListener;
import com.android.common.C0616j;

final class C0683y implements OnClickListener {
    final /* synthetic */ C0117j adV;

    C0683y(C0117j c0117j) {
        this.adV = c0117j;
    }

    public void onClick(View view) {
        C0616j.apa(this.adV.getActivity(), "setting_close", "empty_click");
        this.adV.ajk();
    }
}
