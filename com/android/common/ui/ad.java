package com.android.common.ui;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.animation.DecelerateInterpolator;

public class ad {
    private AnimatorSet un = new AnimatorSet();
    private boolean uo = false;
    private ae up;
    private AnimatorSet uq = new AnimatorSet();

    public void rF(ae aeVar) {
        this.up = aeVar;
    }

    public ad(Object[] objArr, String str, float f, float f2, long j) {
        int length = objArr.length;
        int i = 0;
        Animator[] animatorArr = new ObjectAnimator[length];
        Animator[] animatorArr2 = new ObjectAnimator[length];
        for (Object obj : objArr) {
            animatorArr[i] = ObjectAnimator.ofFloat(obj, str, new float[]{f, f2});
            animatorArr2[i] = ObjectAnimator.ofFloat(obj, str, new float[]{f2, f});
            i++;
        }
        this.un.setDuration(j);
        this.uq.setDuration(j);
        this.un.addListener(new bi(this));
        this.uq.addListener(new bj(this));
        this.un.playTogether(animatorArr);
        this.uq.playTogether(animatorArr2);
        this.un.setInterpolator(new DecelerateInterpolator());
        this.uq.setInterpolator(new DecelerateInterpolator());
        this.uo = true;
    }

    public void start() {
        if (this.uo) {
            this.un.cancel();
            this.un.start();
        }
    }

    public void rE() {
        if (this.uo) {
            this.uq.cancel();
            this.uq.start();
        }
    }

    public void release() {
        this.uo = false;
        if (this.un.isRunning()) {
            this.un.end();
        }
        if (this.uq.isRunning()) {
            this.uq.end();
        }
        this.uq.cancel();
        this.uq = null;
        this.un.cancel();
        this.un = null;
    }
}
