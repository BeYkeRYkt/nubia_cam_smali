package com.android.common.ui;

import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;

final class aC implements Callback {
    final /* synthetic */ MyVideoView xH;

    aC(MyVideoView myVideoView) {
        this.xH = myVideoView;
    }

    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        Object obj = null;
        this.xH.jY = i2;
        this.xH.jW = i3;
        Object obj2;
        if (this.xH.jZ == 3) {
            obj2 = 1;
        } else {
            obj2 = null;
        }
        if (this.xH.kc == i2 && this.xH.kb == i3) {
            obj = 1;
        }
        if (this.xH.jN != null && r0 != null && r2 != null) {
            if (this.xH.jU != 0) {
                this.xH.hK(this.xH.jU);
            }
            this.xH.start();
        }
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.xH.jX = surfaceHolder;
        this.xH.hI();
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.xH.jX = null;
        this.xH.hJ(true);
    }
}
