package com.android.common.p014n;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class C0639C implements AnimatorListener {
    final /* synthetic */ C0117j adZ;

    C0639C(C0117j c0117j) {
        this.adZ = c0117j;
    }

    public void onAnimationStart(Animator animator) {
        this.adZ.aci.setVisibility(0);
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
    }

    public void onAnimationCancel(Animator animator) {
    }
}
