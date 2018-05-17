package com.android.camera;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class C0213p implements OnCancelListener {
    final /* synthetic */ C0162a aIW;

    C0213p(C0162a c0162a) {
        this.aIW = c0162a;
    }

    public void onCancel(DialogInterface dialogInterface) {
        this.aIW.aHC.finish();
    }
}
