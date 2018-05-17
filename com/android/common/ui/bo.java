package com.android.common.ui;

import android.os.Handler;
import android.os.Message;

final class bo extends Handler {
    final /* synthetic */ FaceView yI;

    bo(FaceView faceView) {
        this.yI = faceView;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case 0:
                this.yI.clear();
                return;
            default:
                return;
        }
    }
}
