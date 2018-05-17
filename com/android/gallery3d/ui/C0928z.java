package com.android.gallery3d.ui;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

final class C0928z implements AnimatorUpdateListener {
    final /* synthetic */ FilmStripView arx;

    C0928z(FilmStripView filmStripView) {
        this.arx = filmStripView;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.arx.invalidate();
    }
}
