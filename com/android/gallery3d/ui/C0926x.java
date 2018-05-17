package com.android.gallery3d.ui;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

final class C0926x implements AnimatorUpdateListener {
    final /* synthetic */ C0908f arv;

    C0926x(C0908f c0908f) {
        this.arv = c0908f;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.arv.aqJ.aEJ(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
    }
}
