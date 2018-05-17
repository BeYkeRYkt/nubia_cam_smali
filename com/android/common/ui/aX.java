package com.android.common.ui;

import android.content.res.Resources;
import android.graphics.BitmapFactory;
import com.android.camera.R;

final class aX extends Thread {
    final /* synthetic */ C0736L ym;
    final /* synthetic */ Resources yn;

    aX(C0736L c0736l, Resources resources) {
        this.ym = c0736l;
        this.yn = resources;
    }

    public void run() {
        synchronized (this.ym.rR) {
            if (!this.ym.rR.booleanValue()) {
                this.ym.rU = BitmapFactory.decodeResource(this.yn, R.drawable.btn_shutter_background_yellow);
                this.ym.rS = BitmapFactory.decodeResource(this.yn, R.drawable.btn_shutter_background_point_yellow);
                this.ym.rQ = BitmapFactory.decodeResource(this.yn, R.drawable.btn_shutter_background_gray);
                this.ym.rM = BitmapFactory.decodeResource(this.yn, R.drawable.camera_shutter);
                this.ym.rR = Boolean.valueOf(true);
            }
        }
    }
}
