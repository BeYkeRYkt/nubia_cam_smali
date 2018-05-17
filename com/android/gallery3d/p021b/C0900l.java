package com.android.gallery3d.p021b;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class C0900l implements OnTouchListener {
    final /* synthetic */ C0889a ash;

    C0900l(C0889a c0889a) {
        this.ash = c0889a;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            this.ash.arN = true;
        } else if (motionEvent.getActionMasked() == 1) {
            this.ash.arN = false;
        }
        return false;
    }
}
