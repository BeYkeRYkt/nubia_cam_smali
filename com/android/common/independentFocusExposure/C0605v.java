package com.android.common.independentFocusExposure;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class C0605v implements AnimatorListener {
    final /* synthetic */ C0592h NJ;

    C0605v(C0592h c0592h) {
        this.NJ = c0592h;
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.NJ.Lc.start();
    }

    public void onAnimationCancel(Animator animator) {
    }
}
