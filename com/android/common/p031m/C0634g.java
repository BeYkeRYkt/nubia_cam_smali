package com.android.common.p031m;

import android.view.MotionEvent;

class C0634g implements C0629b {
    final /* synthetic */ C0630c aaW;

    private C0634g(C0630c c0630c) {
        this.aaW = c0630c;
    }

    public void onDown(MotionEvent motionEvent) {
        this.aaW.aaS.aht(motionEvent.getX(), motionEvent.getY());
    }

    public void ahq(MotionEvent motionEvent) {
        this.aaW.aaS.ahA();
    }
}
