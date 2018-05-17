package com.android.common.ui;

import android.content.res.Resources;
import android.graphics.BitmapFactory;
import com.android.camera.R;

final class ap extends Thread {
    final /* synthetic */ C0752b xt;
    final /* synthetic */ Resources xu;

    ap(C0752b c0752b, Resources resources) {
        this.xt = c0752b;
        this.xu = resources;
    }

    public void run() {
        synchronized (this.xt.ix) {
            if (!this.xt.ix.booleanValue()) {
                this.xt.iz = BitmapFactory.decodeResource(this.xu, R.drawable.btn_shutter_background);
                this.xt.iv = BitmapFactory.decodeResource(this.xu, R.drawable.camera_shutter_press);
                this.xt.ix = Boolean.valueOf(true);
            }
        }
    }
}
