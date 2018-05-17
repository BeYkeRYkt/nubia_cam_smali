package com.android.common.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class aN implements AnimatorListener {
    final /* synthetic */ aL xY;

    aN(aL aLVar) {
        this.xY = aLVar;
    }

    public void onAnimationStart(Animator animator) {
        this.xY.xR.mj("hide onAnimationStart");
        if (this.xY.xR.isClickable() && this.xY.xR.mi()) {
            this.xY.xR.oY.uY(this.xY.xR.oZ);
            this.xY.xR.setImageResource(this.xY.xR.oY.uP()[this.xY.xR.oZ]);
        }
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.xY.xR.mj("hide onAnimationEnd");
        this.xY.xR.oX.setVisibility(8);
        this.xY.xR.mp(false);
        if (this.xY.xR.oQ != null) {
            this.xY.xR.oQ.si();
        }
        C0743w.pe = false;
        this.xY.xR.oO = false;
    }

    public void onAnimationCancel(Animator animator) {
        C0743w.pe = false;
        this.xY.xR.oO = false;
    }
}
