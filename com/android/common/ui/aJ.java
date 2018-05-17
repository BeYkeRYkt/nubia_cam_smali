package com.android.common.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.android.common.p012e.C0458b;
import com.android.common.p012e.C0467m;

final class aJ implements OnItemClickListener {
    final /* synthetic */ ZtemtSlidingDrawer xO;

    aJ(ZtemtSlidingDrawer ztemtSlidingDrawer) {
        this.xO = ztemtSlidingDrawer;
    }

    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        C0458b.adi().adj(C0467m.adu(this.xO, i));
    }
}
