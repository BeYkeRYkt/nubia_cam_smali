package com.android.clone;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class C0258t implements OnClickListener {
    final /* synthetic */ C0244f aoX;

    C0258t(C0244f c0244f) {
        this.aoX = c0244f;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
        this.aoX.ayP();
    }
}
