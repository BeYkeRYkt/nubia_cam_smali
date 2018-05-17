package com.android.gallery3d.ui;

import android.animation.Animator.AnimatorListener;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.os.Handler;
import android.widget.Scroller;

class C0908f {
    private Handler aqI;
    private C0909g aqJ;
    private Runnable aqK = new C0925w(this);
    private final Scroller aqL;
    private final ValueAnimator aqM;
    private AnimatorListener aqN = new C0927y(this);
    private AnimatorUpdateListener aqO = new C0926x(this);

    public C0908f(Context context, Handler handler, C0909g c0909g, TimeInterpolator timeInterpolator) {
        this.aqI = handler;
        this.aqJ = c0909g;
        this.aqL = new Scroller(context);
        this.aqM = new ValueAnimator();
        this.aqM.addUpdateListener(this.aqO);
        this.aqM.addListener(this.aqN);
        this.aqM.setInterpolator(timeInterpolator);
    }

    public void aEA(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.aqL.fling(i, i2, i3, i4, i5, i6, i7, i8);
        aED();
    }

    public void aEE(int i, int i2, int i3, int i4, int i5) {
        this.aqM.cancel();
        this.aqM.setDuration((long) i5);
        this.aqM.setIntValues(new int[]{i, i + i3});
        this.aqM.start();
    }

    public boolean aEC() {
        return this.aqL.isFinished() && !this.aqM.isRunning();
    }

    public void aEB(boolean z) {
        this.aqL.forceFinished(z);
        if (z) {
            this.aqM.cancel();
        }
    }

    private void aED() {
        if (this.aqI != null && this.aqJ != null) {
            this.aqI.removeCallbacks(this.aqK);
            this.aqI.post(this.aqK);
        }
    }
}
