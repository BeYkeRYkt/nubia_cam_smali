package com.android.common.ui;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.TextView;

final class bf implements AnimationListener {
    final /* synthetic */ C0744T yx;
    final /* synthetic */ TextView yy;

    bf(C0744T c0744t, TextView textView) {
        this.yx = c0744t;
        this.yy = textView;
    }

    public void onAnimationEnd(Animation animation) {
        this.yy.setVisibility(8);
    }

    public void onAnimationRepeat(Animation animation) {
    }

    public void onAnimationStart(Animation animation) {
    }
}
