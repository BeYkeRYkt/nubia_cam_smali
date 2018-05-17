package com.android.dng;

import android.os.Handler;
import android.os.Message;
import com.android.common.ui.MultiFunctionImageView.Function;

public class C0793i extends Handler {
    final /* synthetic */ C0792h aNd;

    public C0793i(C0792h c0792h) {
        this.aNd = c0792h;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.aNd.aMZ.setVisibility(0);
                this.aNd.aMZ.lw(Function.PROGRESS);
                this.aNd.aMZ.lx(((Integer) message.obj).intValue(), true);
                return;
            default:
                return;
        }
    }
}
