package com.android.common.appService;

import com.android.common.ui.FaceView;

final class ad implements Runnable {
    final /* synthetic */ C0329e UJ;

    ad(C0329e c0329e) {
        this.UJ = c0329e;
    }

    public void run() {
        FaceView Tf = this.UJ.Tf();
        if (Tf != null) {
            Tf.clear();
            Tf.setVisibility(0);
        }
    }
}
