package com.android.camera;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class C0208l implements OnClickListener {
    final /* synthetic */ C0162a aIS;

    C0208l(C0162a c0162a) {
        this.aIS = c0162a;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.aIS.aXm(this.aIS.aHJ);
    }
}
