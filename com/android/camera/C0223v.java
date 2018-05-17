package com.android.camera;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class C0223v implements AnimatorListener {
    final /* synthetic */ C0199e aJd;

    C0223v(C0199e c0199e) {
        this.aJd = c0199e;
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.aJd.aIc.setVisibility(8);
    }

    public void onAnimationCancel(Animator animator) {
    }
}
