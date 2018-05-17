package com.android.common.appService;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class an implements AnimatorListener {
    final /* synthetic */ C0341p UW;

    an(C0341p c0341p) {
        this.UW = c0341p;
    }

    public void onAnimationStart(Animator animator) {
        this.UW.QZ.setVisibility(0);
        this.UW.QZ.setAlpha(0.0f);
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.UW.QZ.setAlpha(1.0f);
    }

    public void onAnimationCancel(Animator animator) {
        this.UW.QZ.setAlpha(1.0f);
    }
}
