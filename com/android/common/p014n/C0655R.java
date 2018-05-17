package com.android.common.p014n;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import com.p010a.C0090a;

final class C0655R implements AnimatorListener {
    final /* synthetic */ C0672n aeo;

    C0655R(C0672n c0672n) {
        this.aeo = c0672n;
    }

    public void onAnimationStart(Animator animator) {
        C0090a.m0d(C0672n.TAG, "onAnimationStart");
        this.aeo.adl = true;
    }

    public void onAnimationRepeat(Animator animator) {
        C0090a.m0d(C0672n.TAG, "onAnimationRepeat");
    }

    public void onAnimationEnd(Animator animator) {
        C0090a.m0d(C0672n.TAG, "onAnimationEnd");
        this.aeo.adl = false;
    }

    public void onAnimationCancel(Animator animator) {
        C0090a.m0d(C0672n.TAG, "onAnimationCancel");
        this.aeo.adl = false;
    }
}
