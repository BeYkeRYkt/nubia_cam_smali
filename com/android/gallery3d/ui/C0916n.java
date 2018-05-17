package com.android.gallery3d.ui;

import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.SimpleOnScaleGestureListener;

class C0916n extends SimpleOnScaleGestureListener {
    final /* synthetic */ C0913j aqZ;

    private C0916n(C0913j c0913j) {
        this.aqZ = c0913j;
    }

    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        return this.aqZ.aqV.aEP(scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
    }

    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        return this.aqZ.aqV.aEO(scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY(), scaleGestureDetector.getScaleFactor());
    }

    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        this.aqZ.aqV.aEQ();
    }
}
