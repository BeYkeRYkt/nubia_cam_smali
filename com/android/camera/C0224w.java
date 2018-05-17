package com.android.camera;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class C0224w implements AnimatorListener {
    final /* synthetic */ C0199e aJe;

    C0224w(C0199e c0199e) {
        this.aJe = c0199e;
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.aJe.aIl.setVisibility(8);
        this.aJe.aIc.setVisibility(8);
    }

    public void onAnimationCancel(Animator animator) {
    }
}
