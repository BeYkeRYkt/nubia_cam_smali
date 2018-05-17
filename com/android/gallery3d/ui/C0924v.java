package com.android.gallery3d.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class C0924v implements AnimatorListener {
    private boolean ars = false;
    final /* synthetic */ C0906d art;

    C0924v(C0906d c0906d) {
        this.art = c0906d;
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        if (!this.ars) {
            this.art.aEd();
        }
        this.art.aqA = null;
    }

    public void onAnimationCancel(Animator animator) {
        this.ars = true;
    }

    public void onAnimationRepeat(Animator animator) {
    }
}
