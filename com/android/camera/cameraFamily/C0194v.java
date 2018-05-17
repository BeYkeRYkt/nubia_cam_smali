package com.android.camera.cameraFamily;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class C0194v implements AnimatorListener {
    final /* synthetic */ C0181h aGt;

    C0194v(C0181h c0181h) {
        this.aGt = c0181h;
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.aGt.aFU.setVisibility(8);
    }

    public void onAnimationCancel(Animator animator) {
    }
}
