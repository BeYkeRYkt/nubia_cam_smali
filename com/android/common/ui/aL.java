package com.android.common.ui;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.android.common.p014n.C0667i;

final class aL implements OnGlobalLayoutListener {
    final /* synthetic */ C0743w xR;
    final /* synthetic */ TextView[] xS;
    final /* synthetic */ ViewTreeObserver xT;
    final /* synthetic */ int[] xU;
    final /* synthetic */ int[] xV;
    final /* synthetic */ FrameLayout xW;

    aL(C0743w c0743w, TextView[] textViewArr, ViewTreeObserver viewTreeObserver, int[] iArr, int[] iArr2, FrameLayout frameLayout) {
        this.xR = c0743w;
        this.xS = textViewArr;
        this.xT = viewTreeObserver;
        this.xU = iArr;
        this.xV = iArr2;
        this.xW = frameLayout;
    }

    public void onGlobalLayout() {
        if (this.xR.oR != null && this.xS != null) {
            int width;
            int width2;
            int i;
            this.xT.removeOnGlobalLayoutListener(this);
            ((C0667i) this.xR.oR.get(0)).aiI().getLocationOnScreen(this.xU);
            if (this.xR.mg()) {
                width = this.xU[0] - this.xS[0].getWidth();
            } else {
                width = this.xU[0] + this.xR.getWidth();
            }
            this.xV[0] = width;
            this.xR.mj("0 left:" + this.xV[0]);
            for (width = 1; width < this.xV.length; width++) {
                int[] iArr = this.xV;
                if (this.xR.mg()) {
                    width2 = this.xV[width - 1] - this.xS[width].getWidth();
                } else {
                    width2 = this.xV[width - 1] + this.xS[width - 1].getWidth();
                }
                iArr[width] = width2;
                this.xR.mj(width + "left: " + this.xV[width] + "");
            }
            int[] iArr2 = new int[2];
            this.xR.getLocationOnScreen(iArr2);
            int i2 = iArr2[0];
            Animator[] animatorArr = new ObjectAnimator[((this.xR.oR.size() + this.xS.length) + 1)];
            Animator[] animatorArr2 = new ObjectAnimator[((this.xR.oR.size() + this.xS.length) + 1)];
            TimeInterpolator pathInterpolator = new PathInterpolator(0.0f, 0.45f, 0.43f, 1.0f);
            int[] iArr3 = new int[2];
            if (this.xR.mg()) {
                i = this.xU[0] - iArr2[0];
                width2 = 0 - iArr2[0];
            } else {
                i = this.xU[0] - iArr2[0];
                width2 = 1080 - iArr2[0];
            }
            Object obj = null;
            for (int i3 = 0; i3 < this.xR.oR.size(); i3++) {
                View aiI = ((C0667i) this.xR.oR.get(i3)).aiI();
                aiI.getLocationOnScreen(iArr3);
                if (obj == null) {
                    animatorArr[i3] = ObjectAnimator.ofFloat(aiI, "translationX", new float[]{0.0f, (float) i});
                    animatorArr2[i3] = ObjectAnimator.ofFloat(aiI, "translationX", new float[]{(float) i, 0.0f});
                } else {
                    animatorArr[i3] = ObjectAnimator.ofFloat(aiI, "translationX", new float[]{0.0f, (float) width2});
                    animatorArr2[i3] = ObjectAnimator.ofFloat(aiI, "translationX", new float[]{(float) width2, 0.0f});
                }
                animatorArr[i3].setInterpolator(pathInterpolator);
                animatorArr2[i3].setInterpolator(pathInterpolator);
                animatorArr[i3].setDuration(200);
                animatorArr2[i3].setDuration(200);
                if (aiI == this.xR) {
                    obj = 1;
                }
            }
            for (width = 0; width < this.xS.length; width++) {
                animatorArr[this.xR.oR.size() + width] = ObjectAnimator.ofFloat(this.xS[width], "translationX", new float[]{0.0f, (float) (this.xV[width] - i2)});
                animatorArr2[this.xR.oR.size() + width] = ObjectAnimator.ofFloat(this.xS[width], "translationX", new float[]{(float) (this.xV[width] - i2), 0.0f});
                animatorArr[this.xR.oR.size() + width].setInterpolator(pathInterpolator);
                animatorArr2[this.xR.oR.size() + width].setInterpolator(pathInterpolator);
                animatorArr[this.xR.oR.size() + width].setDuration(200);
                animatorArr2[this.xR.oR.size() + width].setDuration(200);
                this.xR.mj("animationDis: " + (this.xV[width] - i2));
            }
            animatorArr[animatorArr2.length - 1] = ObjectAnimator.ofFloat(this.xW, "alpha", new float[]{0.0f, 1.0f});
            animatorArr2[animatorArr2.length - 1] = ObjectAnimator.ofFloat(this.xW, "alpha", new float[]{1.0f, 0.0f});
            animatorArr[animatorArr2.length - 1].setInterpolator(new LinearInterpolator());
            animatorArr2[animatorArr2.length - 1].setInterpolator(new LinearInterpolator());
            animatorArr[animatorArr2.length - 1].setDuration(200);
            animatorArr2[animatorArr2.length - 1].setDuration(100);
            this.xR.pb = new AnimatorSet();
            this.xR.oU = new AnimatorSet();
            this.xR.pb.playTogether(animatorArr);
            this.xR.oU.playTogether(animatorArr2);
            this.xR.pb.addListener(new aM(this));
            this.xR.oU.addListener(new aN(this));
        }
    }
}
