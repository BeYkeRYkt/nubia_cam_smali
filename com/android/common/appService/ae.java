package com.android.common.appService;

import com.android.common.ui.FaceView;

final class ae implements Runnable {
    final /* synthetic */ C0329e UK;

    ae(C0329e c0329e) {
        this.UK = c0329e;
    }

    public void run() {
        FaceView Tf = this.UK.Tf();
        if (Tf != null) {
            Tf.clear();
            Tf.setVisibility(8);
        }
    }
}
