package com.android.common.ui;

import android.os.Handler;
import android.os.Message;

final class au extends Handler {
    final /* synthetic */ nubiaWheelView xz;

    au(nubiaWheelView com_android_common_ui_nubiaWheelView) {
        this.xz = com_android_common_ui_nubiaWheelView;
    }

    public void handleMessage(Message message) {
        this.xz.iT.computeScrollOffset();
        int currY = this.xz.iT.getCurrY();
        if (this.xz.iY == 0) {
            this.xz.iY = this.xz.iT.getStartY();
        }
        this.xz.hr(0, currY - this.xz.iY);
        this.xz.iY = currY;
        this.xz.invalidate();
        if (!this.xz.iT.isFinished()) {
            this.xz.hs(message.what);
        } else if (message.what == 0) {
            this.xz.ho();
        } else {
            this.xz.iY = 0;
        }
    }
}
