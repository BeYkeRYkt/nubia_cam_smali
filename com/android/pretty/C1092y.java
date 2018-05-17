package com.android.pretty;

import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;

final class C1092y implements Runnable {
    final /* synthetic */ C1075e avt;
    final /* synthetic */ View avu;
    final /* synthetic */ int avv;
    final /* synthetic */ int avw;
    final /* synthetic */ int avx;
    final /* synthetic */ int avy;
    final /* synthetic */ String avz;

    C1092y(C1075e c1075e, View view, int i, int i2, int i3, int i4, String str) {
        this.avt = c1075e;
        this.avu = view;
        this.avv = i;
        this.avw = i2;
        this.avx = i3;
        this.avy = i4;
        this.avz = str;
    }

    public void run() {
        int i = 0;
        Rect rect = new Rect();
        this.avu.getHitRect(rect);
        rect.top -= Math.max(0, this.avv);
        rect.bottom += Math.max(0, this.avw);
        rect.left -= Math.max(0, this.avx);
        rect.right += Math.max(0, this.avy);
        View view = (View) this.avu.getParent();
        View view2 = (View) view.getParent();
        if (rect.top < 0 || rect.left < 0) {
            i = 1;
            rect.top += view.getTop();
            rect.bottom += view.getTop();
            rect.left += view.getLeft();
            rect.right += view.getLeft();
        }
        TouchDelegate c1077g = new C1077g(this.avt, this.avz, rect, this.avu);
        if (i != 0) {
            view2.setTouchDelegate(c1077g);
        } else {
            view.setTouchDelegate(c1077g);
        }
    }
}
