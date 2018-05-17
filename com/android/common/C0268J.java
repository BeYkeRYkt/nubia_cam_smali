package com.android.common;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class C0268J implements OnClickListener {
    final /* synthetic */ Activity akz;

    C0268J(Activity activity) {
        this.akz = activity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.akz.finish();
    }
}
