package com.android.common.ui;

import android.os.Handler;
import android.os.Message;

class C0765v extends Handler {
    final /* synthetic */ MultiFunctionImageView oN;

    private C0765v(MultiFunctionImageView multiFunctionImageView) {
        this.oN = multiFunctionImageView;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                this.oN.invalidate();
                return;
            default:
                return;
        }
    }
}
