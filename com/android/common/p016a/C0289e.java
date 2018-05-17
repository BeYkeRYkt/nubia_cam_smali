package com.android.common.p016a;

import android.graphics.Rect;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;

public class C0289e {
    private Rect f50s = new Rect();
    private Rect f51t = null;
    private long f52u = -1;
    private boolean f53v = false;
    private Object f54w = new Object();
    private Rect f55x = null;
    private Interpolator f56y = new AccelerateDecelerateInterpolator();
    private Rect f57z = null;

    public boolean m52O(Rect rect, boolean z) {
        boolean z2 = true;
        synchronized (this.f54w) {
            if (this.f57z == null || !z) {
                this.f57z = rect;
                this.f55x = rect;
                this.f50s = rect;
                this.f51t = rect;
                z2 = false;
            } else if (this.f55x == null && !m49M(rect, this.f57z)) {
                this.f55x = rect;
                this.f51t = this.f57z;
            } else if (this.f55x == null || m49M(rect, this.f55x)) {
                z2 = false;
            } else {
                this.f55x = rect;
                this.f51t = this.f50s;
            }
            if (z2) {
                m50P();
            }
        }
        return z2;
    }

    public Rect m51N(C0290f c0290f) {
        synchronized (this.f54w) {
            Rect rect;
            if (this.f53v) {
                long currentTimeMillis = System.currentTimeMillis();
                if (this.f52u <= -1 || currentTimeMillis - this.f52u < 0 || currentTimeMillis - this.f52u > 300) {
                    this.f53v = false;
                    this.f57z = this.f55x;
                    this.f50s = this.f55x;
                    this.f51t = this.f55x;
                    c0290f.ah(true);
                    rect = this.f57z;
                    return rect;
                }
                float interpolation = this.f56y.getInterpolation(((float) (currentTimeMillis - this.f52u)) / 300.0f);
                this.f50s.left = (int) (((float) this.f51t.left) + (((float) (this.f55x.left - this.f51t.left)) * interpolation));
                this.f50s.right = (int) (((float) this.f51t.right) + (((float) (this.f55x.right - this.f51t.right)) * interpolation));
                this.f50s.top = (int) (((float) this.f51t.top) + (((float) (this.f55x.top - this.f51t.top)) * interpolation));
                this.f50s.bottom = (int) ((interpolation * ((float) (this.f55x.bottom - this.f51t.bottom))) + ((float) this.f51t.bottom));
                c0290f.ah(false);
                rect = this.f50s;
                return rect;
            }
            rect = this.f57z;
            return rect;
        }
    }

    private void m50P() {
        this.f53v = true;
        this.f52u = System.currentTimeMillis();
    }

    private boolean m49M(Rect rect, Rect rect2) {
        if (rect.left == rect2.left && rect.top == rect2.top && rect.right == rect2.right && rect.bottom == rect2.bottom) {
            return true;
        }
        return false;
    }
}
