package com.android.common.p014n;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

final class C0644H implements AnimatorUpdateListener {
    final /* synthetic */ C0672n aee;

    C0644H(C0672n c0672n) {
        this.aee = c0672n;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.aee.add.getBackground().setAlpha((int) ((((float) (250 - this.aee.ade.getCurrentPlayTime())) * 0.0022f) * 255.0f));
    }
}
