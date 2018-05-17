package com.android.clone;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class C0257s implements OnClickListener {
    final /* synthetic */ C0244f aoW;

    C0257s(C0244f c0244f) {
        this.aoW = c0244f;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
        this.aoW.ayL();
    }
}
