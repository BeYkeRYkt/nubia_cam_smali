package com.android.gallery3d.ui;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

final class C0921s implements AnimatorUpdateListener {
    final /* synthetic */ C0906d arj;
    final /* synthetic */ C0905c ark;
    final /* synthetic */ float arl;
    final /* synthetic */ float arm;

    C0921s(C0906d c0906d, C0905c c0905c, float f, float f2) {
        this.arj = c0906d;
        this.ark = c0905c;
        this.arl = f;
        this.arm = f2;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float aCG = floatValue / this.arj.aqG.aqn;
        this.arj.aqG.aqn = floatValue;
        this.ark.aDE(this.arl, this.arm, aCG, this.arj.aqG.aqe.width(), this.arj.aqG.aqe.height());
    }
}
