package com.android.gallery3d.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class C0927y implements AnimatorListener {
    final /* synthetic */ C0908f arw;

    C0927y(C0908f c0908f) {
        this.arw = c0908f;
    }

    public void onAnimationCancel(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.arw.aqJ.aEI();
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationStart(Animator animator) {
    }
}
