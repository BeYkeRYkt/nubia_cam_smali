package com.android.camera;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class C0210n implements OnClickListener {
    final /* synthetic */ C0162a aIU;

    C0210n(C0162a c0162a) {
        this.aIU = c0162a;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.aIU.aHE.dismiss();
        this.aIU.aXm(this.aIU.aHJ);
    }
}
