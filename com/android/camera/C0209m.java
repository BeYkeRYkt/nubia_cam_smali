package com.android.camera;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class C0209m implements OnClickListener {
    final /* synthetic */ C0162a aIT;

    C0209m(C0162a c0162a) {
        this.aIT = c0162a;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.aIT.aHC.finish();
    }
}
