package com.android.common.ui;

import android.content.res.Resources;
import android.graphics.BitmapFactory;
import com.android.camera.R;

final class bk extends Thread {
    final /* synthetic */ ak yD;
    final /* synthetic */ Resources yE;

    bk(ak akVar, Resources resources) {
        this.yD = akVar;
        this.yE = resources;
    }

    public void run() {
        synchronized (this.yD.vm) {
            if (!this.yD.vm.booleanValue()) {
                this.yD.vp = BitmapFactory.decodeResource(this.yE, R.drawable.btn_shutter_background_gray);
                this.yD.vq = BitmapFactory.decodeResource(this.yE, R.drawable.btn_shutter_background_white);
                this.yD.vo = BitmapFactory.decodeResource(this.yE, R.drawable.btn_shutter_background_point);
                this.yD.vm = Boolean.valueOf(true);
            }
        }
    }
}
