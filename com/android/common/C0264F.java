package com.android.common;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;

final class C0264F implements OnKeyListener {
    final /* synthetic */ C0369b akv;

    C0264F(C0369b c0369b) {
        this.akv = c0369b;
    }

    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i == 4) {
            this.akv.agD.finish();
        }
        this.akv.agC = false;
        return true;
    }
}
