package com.android.gallery3d.ui;

import android.animation.TimeInterpolator;

final class C0923u implements TimeInterpolator {
    final /* synthetic */ C0906d arr;

    C0923u(C0906d c0906d) {
        this.arr = c0906d;
    }

    public float getInterpolation(float f) {
        return (float) (1.0d - Math.pow((double) (1.0f - f), 4.0d));
    }
}
