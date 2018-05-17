package com.android.common.ui;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

final class bl extends SimpleOnGestureListener {
    final /* synthetic */ WheelView yF;

    bl(WheelView wheelView) {
        this.yF = wheelView;
    }

    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return true;
    }

    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        this.yF.vD = 0;
        this.yF.vZ.fling(0, 0, (int) (-f), 0, -2147483647, Integer.MAX_VALUE, 0, 0);
        this.yF.sD(0);
        return true;
    }
}
