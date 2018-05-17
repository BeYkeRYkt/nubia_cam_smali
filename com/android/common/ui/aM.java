package com.android.common.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class aM implements AnimatorListener {
    final /* synthetic */ aL xX;

    aM(aL aLVar) {
        this.xX = aLVar;
    }

    public void onAnimationStart(Animator animator) {
        this.xX.xR.mj("show onAnimationStart");
        this.xX.xR.mp(true);
        this.xX.xR.oO = true;
        this.xX.xR.oX.setVisibility(0);
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.xX.xR.mj("show onAnimationEnd");
        C0743w.pe = false;
    }

    public void onAnimationCancel(Animator animator) {
        C0743w.pe = false;
    }
}
