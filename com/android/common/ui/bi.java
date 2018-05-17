package com.android.common.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class bi implements AnimatorListener {
    final /* synthetic */ ad yB;

    bi(ad adVar) {
        this.yB = adVar;
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        if (this.yB.up != null) {
            this.yB.up.rH(false);
        }
    }

    public void onAnimationCancel(Animator animator) {
    }
}
