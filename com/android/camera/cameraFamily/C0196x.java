package com.android.camera.cameraFamily;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import com.android.common.appService.CameraMember;

final class C0196x implements AnimatorListener {
    final /* synthetic */ C0181h aGv;

    C0196x(C0181h c0181h) {
        this.aGv = c0181h;
    }

    public void onAnimationStart(Animator animator) {
        this.aGv.aFU.setVisibility(0);
        this.aGv.aFY.setImageResource(this.aGv.aVo(CameraMember.aap(this.aGv.aFG.aGh)));
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.aGv.aFK.setScaleX(1.0f);
        this.aGv.aFK.setScaleY(1.0f);
        this.aGv.aFK.setAlpha(1.0f);
        this.aGv.aFU.setImageResource(this.aGv.aVo(CameraMember.aap(this.aGv.aFG.aGh)));
    }

    public void onAnimationCancel(Animator animator) {
    }
}
