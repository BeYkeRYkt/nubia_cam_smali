package com.android.gallery3d.ui;

import android.view.GestureDetector.OnDoubleTapListener;
import android.view.MotionEvent;

class C0915m implements OnDoubleTapListener {
    final /* synthetic */ C0913j aqY;

    private C0915m(C0913j c0913j) {
        this.aqY = c0913j;
    }

    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        return this.aqY.aqV.aES(motionEvent.getX(), motionEvent.getY());
    }

    public boolean onDoubleTap(MotionEvent motionEvent) {
        return this.aqY.aqV.aEK(motionEvent.getX(), motionEvent.getY());
    }

    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return true;
    }
}
