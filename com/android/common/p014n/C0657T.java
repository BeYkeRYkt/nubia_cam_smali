package com.android.common.p014n;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class C0657T implements AnimatorListener {
    final /* synthetic */ C0111p aeq;

    C0657T(C0111p c0111p) {
        this.aeq = c0111p;
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.aeq.getView().setVisibility(4);
        this.aeq.getView().setAlpha(1.0f);
    }

    public void onAnimationCancel(Animator animator) {
    }
}
