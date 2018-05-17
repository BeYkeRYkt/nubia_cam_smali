package com.android.common.ui;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class aS implements AnimationListener {
    final /* synthetic */ HighSettingLayout yf;

    aS(HighSettingLayout highSettingLayout) {
        this.yf = highSettingLayout;
    }

    public void onAnimationStart(Animation animation) {
    }

    public void onAnimationRepeat(Animation animation) {
    }

    public void onAnimationEnd(Animation animation) {
        this.yf.nR(false);
    }
}
