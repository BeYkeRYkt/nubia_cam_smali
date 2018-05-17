package com.android.common.p016a;

import android.graphics.Rect;
import com.android.common.C0616j;
import com.android.common.appService.C0295H;
import com.android.common.appService.C0305G;
import com.p010a.C0090a;

final class C0296l implements C0295H {
    final /* synthetic */ C0287a al;

    C0296l(C0287a c0287a) {
        this.al = c0287a;
    }

    public void ba(C0305G c0305g, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (this.al.f39h != null && i == i5 && i2 == i6 && i3 == i7 && i4 == i8) {
            C0090a.bvo("PreviewTargetManager", "onLayoutChange with same size");
            return;
        }
        Rect rect = new Rect(i, C0616j.aoL() - i4, i3, C0616j.aoL() - i2);
        this.al.f39h = rect;
        this.al.f41j.m53Q(rect, this.al.f32a.m44G());
        C0090a.m0d("PreviewTargetManager", "onLayoutChange " + i + " " + i2 + " " + i3 + " " + i4 + "; mPreviewRect: " + this.al.f39h.toString());
    }

    public void bb(int i, int i2, int i3, int i4) {
        Rect rect = new Rect(i, C0616j.aoL() - i4, i3, C0616j.aoL() - i2);
        this.al.f39h = rect;
        this.al.f41j.m53Q(rect, this.al.f32a.m44G());
        C0090a.m0d("PreviewTargetManager", "init onLayoutChange " + i + " " + i2 + " " + i3 + " " + i4 + "; mPreviewRect: " + this.al.f39h.toString());
    }

    public boolean aZ() {
        return false;
    }
}
