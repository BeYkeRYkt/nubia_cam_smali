package com.android.common.ui;

import android.content.res.Resources;
import android.graphics.BitmapFactory;
import com.android.camera.R;

final class aP extends Thread {
    final /* synthetic */ C0728B yb;
    final /* synthetic */ Resources yc;

    aP(C0728B c0728b, Resources resources) {
        this.yb = c0728b;
        this.yc = resources;
    }

    public void run() {
        synchronized (this.yb.pq) {
            if (!this.yb.pq.booleanValue()) {
                this.yb.ps = BitmapFactory.decodeResource(this.yc, R.drawable.video_shutter);
                this.yb.pt = BitmapFactory.decodeResource(this.yc, R.drawable.intervalometer_bg);
                this.yb.pw = BitmapFactory.decodeResource(this.yc, R.drawable.camera_shutter);
                this.yb.px = BitmapFactory.decodeResource(this.yc, R.drawable.video_white_square);
                this.yb.pq = Boolean.valueOf(true);
            }
        }
    }
}
