package com.android.common.ui;

import android.content.res.Resources;
import android.graphics.BitmapFactory;
import com.android.camera.R;

final class bd extends Thread {
    final /* synthetic */ C0742S yu;
    final /* synthetic */ Resources yv;

    bd(C0742S c0742s, Resources resources) {
        this.yu = c0742s;
        this.yv = resources;
    }

    public void run() {
        synchronized (this.yu.sL) {
            if (!this.yu.sL.booleanValue()) {
                this.yu.sH = BitmapFactory.decodeResource(this.yv, R.drawable.ic_compass_button);
                this.yu.sL = Boolean.valueOf(true);
            }
        }
    }
}
