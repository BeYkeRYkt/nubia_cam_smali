package com.android.common.independentFocusExposure;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class C0604u implements AnimatorListener {
    final /* synthetic */ C0586b NI;

    C0604u(C0586b c0586b) {
        this.NI = c0586b;
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.NI.Ka.start();
    }

    public void onAnimationCancel(Animator animator) {
    }
}
