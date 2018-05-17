package com.android.common;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class C0263E implements OnClickListener {
    final /* synthetic */ C0369b aku;

    C0263E(C0369b c0369b) {
        this.aku = c0369b;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.aku.agD.finish();
        this.aku.agC = false;
    }
}
