package com.android.common.ui;

import android.view.View;
import android.view.View.OnLongClickListener;

class C0739O implements OnLongClickListener {
    final /* synthetic */ ZtemtShutterButton su;

    private C0739O(ZtemtShutterButton ztemtShutterButton) {
        this.su = ztemtShutterButton;
    }

    public boolean onLongClick(View view) {
        if (this.su.sm == null) {
            return false;
        }
        this.su.sm.qg();
        return true;
    }
}
