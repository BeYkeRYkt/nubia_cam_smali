package com.android.gallery3d.ui;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

final class C0922t implements AnimatorUpdateListener {
    final /* synthetic */ C0906d arn;
    final /* synthetic */ ValueAnimator aro;
    final /* synthetic */ ValueAnimator arp;
    final /* synthetic */ C0905c arq;

    C0922t(C0906d c0906d, ValueAnimator valueAnimator, ValueAnimator valueAnimator2, C0905c c0905c) {
        this.arn = c0906d;
        this.aro = valueAnimator;
        this.arp = valueAnimator2;
        this.arq = c0905c;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.arq.aDL(((Float) this.aro.getAnimatedValue()).floatValue(), ((Float) this.arp.getAnimatedValue()).floatValue(), this.arn.aqG.aqn, this.arn.aqG.aqn, this.arn.aqG.aqe.width(), this.arn.aqG.aqe.height());
    }
}
