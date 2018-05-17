package com.android.common;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class ag implements AnimationListener {
    final /* synthetic */ ActivityBase akY;

    ag(ActivityBase activityBase) {
        this.akY = activityBase;
    }

    public void onAnimationStart(Animation animation) {
        this.akY.aiL.setVisibility(0);
        this.akY.aiL.setAlpha(1.0f);
    }

    public void onAnimationRepeat(Animation animation) {
    }

    public void onAnimationEnd(Animation animation) {
        this.akY.aiL.setAlpha(0.0f);
    }
}
