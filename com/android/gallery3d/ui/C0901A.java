package com.android.gallery3d.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.view.View;
import com.android.gallery3d.p038a.C0874d;

final class C0901A implements AnimatorListener {
    final /* synthetic */ View arA;
    final /* synthetic */ FilmStripView ary;
    final /* synthetic */ C0874d arz;

    C0901A(FilmStripView filmStripView, C0874d c0874d, View view) {
        this.ary = filmStripView;
        this.arz = c0874d;
        this.arA = view;
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        this.ary.aBS(this.arz, this.arA);
        this.ary.aqg = false;
    }

    public void onAnimationCancel(Animator animator) {
        this.ary.aqg = false;
    }

    public void onAnimationRepeat(Animator animator) {
    }
}
