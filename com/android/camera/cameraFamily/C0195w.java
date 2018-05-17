package com.android.camera.cameraFamily;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class C0195w implements AnimatorListener {
    final /* synthetic */ C0181h aGu;

    C0195w(C0181h c0181h) {
        this.aGu = c0181h;
    }

    public void onAnimationStart(Animator animator) {
        if (this.aGu.aFD != null) {
            this.aGu.aFD.aUV();
        }
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        if (this.aGu.aFD != null) {
            this.aGu.aFD.aUU();
        }
    }

    public void onAnimationCancel(Animator animator) {
    }
}
