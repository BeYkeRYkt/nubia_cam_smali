package com.android.common.p031m;

import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.SimpleOnScaleGestureListener;

class C0633f extends SimpleOnScaleGestureListener {
    final /* synthetic */ C0630c aaV;

    private C0633f(C0630c c0630c) {
        this.aaV = c0630c;
    }

    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        return this.aaV.aaS.ahw(scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
    }

    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        return this.aaV.aaS.ahv(scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY(), scaleGestureDetector.getScaleFactor());
    }

    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        this.aaV.aaS.ahx();
    }
}
