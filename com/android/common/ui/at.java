package com.android.common.ui;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

final class at extends SimpleOnGestureListener {
    final /* synthetic */ nubiaWheelView xy;

    at(nubiaWheelView com_android_common_ui_nubiaWheelView) {
        this.xy = com_android_common_ui_nubiaWheelView;
    }

    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        this.xy.iY = 0;
        this.xy.hf((int) f2);
        this.xy.hs(0);
        return true;
    }
}
