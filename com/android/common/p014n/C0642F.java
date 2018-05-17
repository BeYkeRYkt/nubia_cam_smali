package com.android.common.p014n;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

final class C0642F implements AnimatorUpdateListener {
    final /* synthetic */ C0672n aec;

    C0642F(C0672n c0672n) {
        this.aec = c0672n;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.aec.add.getBackground().setAlpha((int) ((((float) this.aec.adj.getCurrentPlayTime()) * 0.0018333334f) * 255.0f));
    }
}
