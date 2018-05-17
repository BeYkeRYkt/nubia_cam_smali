package com.android.common.ui;

import android.content.res.Resources;
import android.graphics.BitmapFactory;
import com.android.camera.R;

final class bs extends Thread {
    final /* synthetic */ an yM;
    final /* synthetic */ Resources yN;

    bs(an anVar, Resources resources) {
        this.yM = anVar;
        this.yN = resources;
    }

    public void run() {
        synchronized (this.yM.xh) {
            if (!this.yM.xh.booleanValue()) {
                this.yM.wX = BitmapFactory.decodeResource(this.yN, R.drawable.ic_gradienter_center);
                this.yM.wV = BitmapFactory.decodeResource(this.yN, R.drawable.ic_gradienter_arrow);
                this.yM.xk = BitmapFactory.decodeResource(this.yN, R.drawable.ic_gradienter_point);
                this.yM.wW = BitmapFactory.decodeResource(this.yN, R.drawable.ic_gradienter_arrow_red);
                this.yM.xl = BitmapFactory.decodeResource(this.yN, R.drawable.ic_gradienter_point_gray);
                this.yM.xh = Boolean.valueOf(true);
            }
        }
    }
}
