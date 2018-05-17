package com.android.common.p014n;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class C0643G implements AnimatorListener {
    final /* synthetic */ C0672n aed;

    C0643G(C0672n c0672n) {
        this.aed = c0672n;
    }

    public void onAnimationStart(Animator animator) {
        this.aed.add.setVisibility(0);
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
    }

    public void onAnimationCancel(Animator animator) {
    }
}
