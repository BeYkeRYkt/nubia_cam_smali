package com.android.p036e;

import android.graphics.Rect;
import com.android.common.ui.C0732D;

final class C0828f implements C0732D {
    final /* synthetic */ C0825c aZI;

    C0828f(C0825c c0825c) {
        this.aZI = c0825c;
    }

    public void nx(float f) {
        this.aZI.adA.SS().edit().putFloat("pref_bigaperture_pic_bokeh_level", f).commit();
        this.aZI.adA.SS().edit().putFloat("pref_bigaperture_focus_length", f).commit();
        this.aZI.adA.SZ(8);
    }

    public void nw(Rect rect) {
        this.aZI.adA.Td().NC(rect);
        this.aZI.adA.SM().arD().Su(false);
        this.aZI.adA.Tc().LS(rect);
    }
}
