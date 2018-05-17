package com.android.common.p031m;

import android.view.MotionEvent;

public class C0628a {
    private C0629b aaO;
    private boolean aaP;

    public C0628a(C0629b c0629b) {
        this.aaO = c0629b;
    }

    private void ahp(boolean z, MotionEvent motionEvent) {
        if (z != this.aaP) {
            this.aaP = z;
            if (z) {
                this.aaO.onDown(motionEvent);
            } else {
                this.aaO.ahq(motionEvent);
            }
        }
    }

    public void onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction() & 255) {
            case 0:
                ahp(true, motionEvent);
                return;
            case 1:
            case 3:
            case 5:
                ahp(false, motionEvent);
                return;
            default:
                return;
        }
    }
}
