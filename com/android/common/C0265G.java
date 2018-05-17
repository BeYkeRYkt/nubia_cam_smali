package com.android.common;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

final class C0265G implements OnClickListener {
    final /* synthetic */ C0369b akw;

    C0265G(C0369b c0369b) {
        this.akw = c0369b;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.akw.agD.startActivity(new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + this.akw.agD.getPackageName())));
        this.akw.agC = false;
    }
}
