package com.android.gallery3d.ui;

import android.content.Context;
import android.graphics.RectF;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;

public class C0917o extends ImageView {
    private int ara = 0;
    private int arb = 0;

    public C0917o(Context context) {
        super(context);
        setScaleType(ScaleType.FIT_CENTER);
        addOnLayoutChangeListener(new C0903C(this));
    }

    public static RectF aEW(RectF rectF, int i, int i2) {
        float f;
        RectF rectF2 = new RectF(rectF);
        if (rectF2.width() < ((float) i)) {
            f = ((float) (i / 2)) - ((rectF2.left + rectF2.right) / 2.0f);
        } else if (rectF2.left > 0.0f) {
            f = -rectF2.left;
        } else if (rectF2.right < ((float) i)) {
            f = ((float) i) - rectF2.right;
        } else {
            f = 0.0f;
        }
        float f2 = rectF2.height() < ((float) i2) ? ((float) (i2 / 2)) - ((rectF2.top + rectF2.bottom) / 2.0f) : rectF2.top > 0.0f ? -rectF2.top : rectF2.bottom < ((float) i2) ? ((float) i2) - rectF2.bottom : 0.0f;
        if (!(f == 0.0f && f2 == 0.0f)) {
            rectF2.offset(f, f2);
        }
        return rectF2;
    }
}
