package com.android.camera;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class C0222u implements AnimatorListener {
    final /* synthetic */ C0199e aJc;

    C0222u(C0199e c0199e) {
        this.aJc = c0199e;
    }

    public void onAnimationStart(Animator animator) {
        this.aJc.aIc.setVisibility(0);
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.aJc.aIc.setAlpha(1.0f);
    }

    public void onAnimationCancel(Animator animator) {
        this.aJc.aIc.setAlpha(1.0f);
    }
}
