package com.android.common.ui;

import android.content.Context;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;
import com.android.common.C0616j;

final class aV extends FrameLayout {
    final /* synthetic */ EffectPage yi;

    aV(EffectPage effectPage, Context context) {
        this.yi = effectPage;
        super(context);
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(MeasureSpec.makeMeasureSpec(C0616j.apG() * this.yi.rt, 1073741824), MeasureSpec.makeMeasureSpec(C0616j.aoL(), 1073741824));
    }
}
