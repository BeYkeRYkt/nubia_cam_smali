package com.android.camera.cameraFamily;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class C0193u implements AnimatorListener {
    final /* synthetic */ C0181h aGs;

    C0193u(C0181h c0181h) {
        this.aGs = c0181h;
    }

    public void onAnimationStart(Animator animator) {
        this.aGs.aFF.setVisibility(0);
        this.aGs.aFJ.setVisibility(0);
        if (this.aGs.aFD != null) {
            this.aGs.aFD.aUX();
        }
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        if (this.aGs.aFD != null) {
            this.aGs.aFD.aUW();
        }
        this.aGs.aFF.setScaleX(1.0f);
        this.aGs.aFF.setScaleY(1.0f);
        this.aGs.aFF.setAlpha(1.0f);
        this.aGs.aFJ.setAlpha(1.0f);
    }

    public void onAnimationCancel(Animator animator) {
    }
}
