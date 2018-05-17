package com.android.pretty;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;

class C1077g extends TouchDelegate {
    private View atp;
    private String atq;
    final /* synthetic */ C1075e atr;

    public C1077g(C1075e c1075e, String str, Rect rect, View view) {
        this.atr = c1075e;
        super(rect, view);
        this.atp = view;
        this.atq = str;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C1077g)) {
            return super.equals(obj);
        }
        return ((C1077g) obj).atp == this.atp;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.atp.getVisibility() == 0) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }
}
