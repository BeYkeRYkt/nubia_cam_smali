package com.android.gallery3d.ui;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;

public class C0913j {
    private final GestureDetector aqU;
    private final C0910k aqV;
    private final ScaleGestureDetector aqW;

    public C0913j(Context context, C0910k c0910k) {
        this.aqV = c0910k;
        this.aqU = new GestureDetector(context, new C0914l(), null, true);
        this.aqU.setOnDoubleTapListener(new C0915m());
        this.aqW = new ScaleGestureDetector(context, new C0916n());
    }

    public void onTouchEvent(MotionEvent motionEvent) {
        this.aqU.onTouchEvent(motionEvent);
        this.aqW.onTouchEvent(motionEvent);
        if (motionEvent.getAction() == 1) {
            this.aqV.aET(motionEvent.getX(), motionEvent.getY());
        }
    }
}
