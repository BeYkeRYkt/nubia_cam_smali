package com.android.common.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class bj implements AnimatorListener {
    final /* synthetic */ ad yC;

    bj(ad adVar) {
        this.yC = adVar;
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        if (this.yC.up != null) {
            this.yC.up.rH(true);
        }
    }

    public void onAnimationCancel(Animator animator) {
    }
}
