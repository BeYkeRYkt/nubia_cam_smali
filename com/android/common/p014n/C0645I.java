package com.android.common.p014n;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class C0645I implements AnimatorListener {
    final /* synthetic */ C0672n aef;

    C0645I(C0672n c0672n) {
        this.aef = c0672n;
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.aef.add.setVisibility(8);
    }

    public void onAnimationCancel(Animator animator) {
    }
}
