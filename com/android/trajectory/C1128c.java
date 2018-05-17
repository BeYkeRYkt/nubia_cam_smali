package com.android.trajectory;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import android.widget.SimpleAdapter.ViewBinder;

class C1128c implements ViewBinder {
    final /* synthetic */ C1127b bbH;

    private C1128c(C1127b c1127b) {
        this.bbH = c1127b;
    }

    public boolean setViewValue(View view, Object obj, String str) {
        if (!(view instanceof ImageView) || !(obj instanceof Bitmap)) {
            return false;
        }
        ((ImageView) view).setImageBitmap((Bitmap) obj);
        return true;
    }
}
