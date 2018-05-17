package com.android.gallery3d.ui;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

final class C0919q implements AnimatorUpdateListener {
    final /* synthetic */ C0906d ard;

    C0919q(C0906d c0906d) {
        this.ard = c0906d;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        if (this.ard.aqG.aqr[2] != null) {
            this.ard.aqG.aqn = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.ard.aqG.invalidate();
        }
    }
}
