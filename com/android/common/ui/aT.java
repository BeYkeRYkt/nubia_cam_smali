package com.android.common.ui;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class aT implements AnimationListener {
    final /* synthetic */ HighSettingLayout yg;

    aT(HighSettingLayout highSettingLayout) {
        this.yg = highSettingLayout;
    }

    public void onAnimationStart(Animation animation) {
        this.yg.nR(true);
    }

    public void onAnimationRepeat(Animation animation) {
    }

    public void onAnimationEnd(Animation animation) {
    }
}
