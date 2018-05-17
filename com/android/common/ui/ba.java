package com.android.common.ui;

import android.view.View;
import android.view.View.OnClickListener;

final class ba implements OnClickListener {
    final /* synthetic */ C0737M yq;

    ba(C0737M c0737m) {
        this.yq = c0737m;
    }

    public void onClick(View view) {
        this.yq.pL((String) view.getTag());
        this.yq.pJ(view);
        if (this.yq.se != null) {
            this.yq.se.notifyDataSetChanged();
        }
    }
}
