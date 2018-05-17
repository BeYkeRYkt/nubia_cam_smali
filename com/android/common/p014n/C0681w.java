package com.android.common.p014n;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;

final class C0681w implements OnKeyListener {
    final /* synthetic */ C0117j adT;

    C0681w(C0117j c0117j) {
        this.adT = c0117j;
    }

    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            dialogInterface.cancel();
        }
        return true;
    }
}
