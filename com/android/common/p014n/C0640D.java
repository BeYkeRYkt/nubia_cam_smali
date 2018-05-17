package com.android.common.p014n;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class C0640D implements AnimatorListener {
    final /* synthetic */ C0117j aea;

    C0640D(C0117j c0117j) {
        this.aea = c0117j;
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.aea.acM.setVisibility(8);
    }

    public void onAnimationCancel(Animator animator) {
    }
}
