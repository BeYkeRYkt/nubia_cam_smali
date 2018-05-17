package com.android.common;

import com.android.common.p014n.C0672n;

final class ae implements Runnable {
    final /* synthetic */ ActivityBase akW;

    ae(ActivityBase activityBase) {
        this.akW = activityBase;
    }

    public void run() {
        C0672n c0672n = (C0672n) this.akW.getFragmentManager().findFragmentByTag("more_settings");
        if (c0672n != null) {
            c0672n.ahM();
        }
    }
}
