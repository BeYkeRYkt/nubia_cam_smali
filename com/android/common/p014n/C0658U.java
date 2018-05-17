package com.android.common.p014n;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class C0658U implements AnimatorListener {
    final /* synthetic */ C0111p aer;

    C0658U(C0111p c0111p) {
        this.aer = c0111p;
    }

    public void onAnimationStart(Animator animator) {
        this.aer.getView().setVisibility(0);
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.aer.getView().setAlpha(1.0f);
    }

    public void onAnimationCancel(Animator animator) {
    }
}
