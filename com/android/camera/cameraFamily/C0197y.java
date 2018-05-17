package com.android.camera.cameraFamily;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.view.View;

final class C0197y implements AnimatorListener {
    final /* synthetic */ C0181h aGw;

    C0197y(C0181h c0181h) {
        this.aGw = c0181h;
    }

    public void onAnimationStart(Animator animator) {
        if (this.aGw.aFD != null) {
            this.aGw.aFD.aUV();
        }
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.aGw.aFF.setVisibility(8);
        this.aGw.aFJ.setVisibility(8);
        this.aGw.aFF.setAlpha(1.0f);
        this.aGw.aFJ.setAlpha(1.0f);
        if (this.aGw.aFD != null) {
            this.aGw.aFD.aUU();
        }
        this.aGw.aFF.setScaleX(1.0f);
        this.aGw.aFF.setScaleY(1.0f);
        this.aGw.aFF.setAlpha(1.0f);
        this.aGw.aFJ.setAlpha(1.0f);
        if (((View) this.aGw.getView().getParent()).getVisibility() == 0) {
            this.aGw.aFP = this.aGw.aFG;
            this.aGw.aFV.start();
        }
    }

    public void onAnimationCancel(Animator animator) {
    }
}
