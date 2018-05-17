package com.android.common.p031m;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import com.p010a.C0090a;

class C0632e extends SimpleOnGestureListener {
    final /* synthetic */ C0630c aaU;

    private C0632e(C0630c c0630c) {
        this.aaU = c0630c;
    }

    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return this.aaU.aaS.ahz(motionEvent.getX(), motionEvent.getY());
    }

    public void onLongPress(MotionEvent motionEvent) {
        this.aaU.aaS.ahu(motionEvent.getX(), motionEvent.getY());
    }

    public boolean onDoubleTap(MotionEvent motionEvent) {
        return this.aaU.aaS.ahs(motionEvent.getX(), motionEvent.getY());
    }

    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        try {
            return this.aaU.aaS.ahy(f, f2, motionEvent2.getX() - motionEvent.getX(), motionEvent2.getY() - motionEvent.getY());
        } catch (NullPointerException e) {
            return false;
        }
    }

    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (motionEvent != null && motionEvent2 != null) {
            return this.aaU.aaS.onFling(motionEvent, motionEvent2, f, f2);
        }
        C0090a.bvo("GestureRecognizer", "onFling null");
        return false;
    }
}
