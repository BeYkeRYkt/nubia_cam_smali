package com.loc;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class aE implements OnClickListener {
    final /* synthetic */ bR bfR;

    aE(bR bRVar) {
        this.bfR = bRVar;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.bfR.m361l();
        dialogInterface.cancel();
    }
}
