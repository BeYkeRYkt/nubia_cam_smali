package com.android.common.independentFocusExposure;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class C0606w implements AnimatorListener {
    final /* synthetic */ C0598n NK;

    C0606w(C0598n c0598n) {
        this.NK = c0598n;
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.NK.Mo.start();
    }

    public void onAnimationCancel(Animator animator) {
    }
}
