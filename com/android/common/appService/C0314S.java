package com.android.common.appService;

import android.graphics.ColorMatrixColorFilter;
import android.view.View;
import android.view.View.OnFocusChangeListener;

class C0314S implements OnFocusChangeListener {
    private C0314S() {
    }

    public void onFocusChange(View view, boolean z) {
        if (z) {
            if (view.getBackground() != null) {
                view.getBackground().setColorFilter(new ColorMatrixColorFilter(C0313R.TV));
                view.setBackgroundDrawable(view.getBackground());
            }
        } else if (view.getBackground() != null) {
            view.getBackground().setColorFilter(new ColorMatrixColorFilter(C0313R.TU));
            view.setBackgroundDrawable(view.getBackground());
        }
    }
}
