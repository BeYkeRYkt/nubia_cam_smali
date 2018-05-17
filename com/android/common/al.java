package com.android.common;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class al implements AnimationListener {
    final /* synthetic */ View ald;

    al(View view) {
        this.ald = view;
    }

    public void onAnimationEnd(Animation animation) {
        this.ald.setVisibility(8);
    }

    public void onAnimationRepeat(Animation animation) {
    }

    public void onAnimationStart(Animation animation) {
    }
}
