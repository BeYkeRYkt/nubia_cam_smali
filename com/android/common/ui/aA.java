package com.android.common.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class aA implements OnClickListener {
    final /* synthetic */ az xF;

    aA(az azVar) {
        this.xF = azVar;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.xF.xE.jO != null) {
            this.xF.xE.jO.onCompletion(this.xF.xE.jN);
        }
    }
}
