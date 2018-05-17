package com.android.common.p014n;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class C0638B implements AnimatorListener {
    final /* synthetic */ C0117j adY;

    C0638B(C0117j c0117j) {
        this.adY = c0117j;
    }

    public void onAnimationStart(Animator animator) {
        this.adY.acM.setVisibility(0);
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.adY.aci.setVisibility(8);
    }

    public void onAnimationCancel(Animator animator) {
    }
}
