package com.android.common.p031m;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import com.p010a.C0090a;

public class C0630c {
    private final C0628a aaQ = new C0628a(new C0634g());
    private final GestureDetector aaR;
    private final C0631d aaS;
    private final ScaleGestureDetector aaT;

    public C0630c(Context context, C0631d c0631d) {
        this.aaS = c0631d;
        this.aaR = new GestureDetector(context, new C0632e(), null, true);
        this.aaT = new ScaleGestureDetector(context, new C0633f());
    }

    public void onTouchEvent(MotionEvent motionEvent) {
        this.aaR.onTouchEvent(motionEvent);
        try {
            this.aaT.onTouchEvent(motionEvent);
        } catch (IllegalArgumentException e) {
            C0090a.m1e("GestureRecognizer", e.getLocalizedMessage());
        }
        this.aaQ.onTouchEvent(motionEvent);
    }
}
