package com.android.common.ui;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

final class aO implements OnPreDrawListener {
    final /* synthetic */ C0743w xZ;
    final /* synthetic */ ViewTreeObserver ya;

    aO(C0743w c0743w, ViewTreeObserver viewTreeObserver) {
        this.xZ = c0743w;
        this.ya = viewTreeObserver;
    }

    public boolean onPreDraw() {
        if (this.xZ.oU == null || this.xZ.pb == null) {
            this.xZ.mj("Animation is null ignore onPreDraw");
            return true;
        }
        this.xZ.mj("onPreDraw");
        this.ya.removeOnPreDrawListener(this);
        this.xZ.ml();
        return true;
    }
}
