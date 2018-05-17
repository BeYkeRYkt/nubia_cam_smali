package com.android.gallery3d.ui;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

class C0914l extends SimpleOnGestureListener {
    final /* synthetic */ C0913j aqX;

    private C0914l(C0913j c0913j) {
        this.aqX = c0913j;
    }

    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return this.aqX.aqV.aER(motionEvent2.getX(), motionEvent2.getY(), f, f2);
    }

    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return this.aqX.aqV.aEM(f, f2);
    }

    public boolean onDown(MotionEvent motionEvent) {
        this.aqX.aqV.aEL(motionEvent.getX(), motionEvent.getY());
        return super.onDown(motionEvent);
    }

    public void onLongPress(MotionEvent motionEvent) {
        this.aqX.aqV.aEN(motionEvent.getX(), motionEvent.getY());
        super.onLongPress(motionEvent);
    }
}
