package com.android.camera;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class C0225x implements AnimatorListener {
    final /* synthetic */ C0199e aJf;

    C0225x(C0199e c0199e) {
        this.aJf = c0199e;
    }

    public void onAnimationStart(Animator animator) {
        this.aJf.aIl.setVisibility(0);
        this.aJf.aIc.setVisibility(0);
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.aJf.aIl.setAlpha(1.0f);
        this.aJf.aIc.setAlpha(1.0f);
    }

    public void onAnimationCancel(Animator animator) {
        this.aJf.aIl.setAlpha(1.0f);
        this.aJf.aIc.setAlpha(1.0f);
    }
}
