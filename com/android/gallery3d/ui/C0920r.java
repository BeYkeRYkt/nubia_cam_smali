package com.android.gallery3d.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class C0920r implements AnimatorListener {
    final /* synthetic */ C0906d are;
    final /* synthetic */ float arf;
    final /* synthetic */ C0905c arg;
    final /* synthetic */ float arh;
    final /* synthetic */ float ari;

    C0920r(C0906d c0906d, float f, C0905c c0905c, float f2, float f3) {
        this.are = c0906d;
        this.arf = f;
        this.arg = c0905c;
        this.arh = f2;
        this.ari = f3;
    }

    public void onAnimationStart(Animator animator) {
        if (this.are.aqG.aqn == 1.0f) {
            this.are.aDQ();
            this.are.aEh(false);
        }
        this.are.aDO();
    }

    public void onAnimationEnd(Animator animator) {
        if (this.are.aqG.aqn != this.arf) {
            this.arg.aDE(this.arh, this.ari, this.arf / this.are.aqG.aqn, this.are.aqG.aqe.width(), this.are.aqG.aqe.height());
            this.are.aqG.aqn = this.arf;
        }
        if (this.are.aqG.aqn == 1.0f) {
            this.are.aEh(true);
            this.are.aqG.aqt.setVisibility(8);
            this.arg.aDF();
        } else {
            this.are.aqG.apZ.aEd();
        }
        this.are.aqF = null;
    }

    public void onAnimationCancel(Animator animator) {
    }

    public void onAnimationRepeat(Animator animator) {
    }
}
