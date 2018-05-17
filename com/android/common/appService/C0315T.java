package com.android.common.appService;

import android.graphics.ColorMatrixColorFilter;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class C0315T implements OnTouchListener {
    private C0315T() {
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            if (view.getBackground() != null) {
                view.getBackground().setColorFilter(new ColorMatrixColorFilter(C0313R.TV));
                view.setBackgroundDrawable(view.getBackground());
            }
        } else if (motionEvent.getAction() == 1 && view.getBackground() != null) {
            view.getBackground().setColorFilter(new ColorMatrixColorFilter(C0313R.TU));
            view.setBackgroundDrawable(view.getBackground());
        }
        return false;
    }
}
