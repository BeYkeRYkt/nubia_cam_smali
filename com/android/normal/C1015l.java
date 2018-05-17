package com.android.normal;

import android.graphics.Rect;
import com.android.common.ui.C0732D;

final class C1015l implements C0732D {
    final /* synthetic */ C1005b aCH;

    C1015l(C1005b c1005b) {
        this.aCH = c1005b;
    }

    public void nx(float f) {
        this.aCH.adA.SS().edit().putFloat("pref_bigaperture_pic_bokeh_level", f).commit();
        this.aCH.adA.SS().edit().putFloat("pref_bigaperture_focus_length", f).commit();
        this.aCH.adA.SZ(8);
    }

    public void nw(Rect rect) {
        this.aCH.adA.Td().NC(rect);
        this.aCH.adA.SM().arD().Su(false);
        this.aCH.adA.Tc().LS(rect);
    }
}
