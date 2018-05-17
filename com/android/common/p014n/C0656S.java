package com.android.common.p014n;

import com.android.common.appService.C0295H;
import com.android.common.appService.C0305G;

final class C0656S implements C0295H {
    final /* synthetic */ C0111p aep;

    C0656S(C0111p c0111p) {
        this.aep = c0111p;
    }

    public void bb(int i, int i2, int i3, int i4) {
        float f = ((float) (i4 - i2)) / ((float) (i3 - i));
        if (((double) Math.abs(f - this.aep.adI)) >= 0.10000000149011612d) {
            this.aep.adI = f;
            this.aep.ajH(i, i2, i3, i4);
        }
    }

    public void ba(C0305G c0305g, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i != i5 || i2 != i6 || i3 != i7 || i4 != i8) {
            float f = ((float) (i4 - i2)) / ((float) (i3 - i));
            if (((double) Math.abs(f - this.aep.adI)) >= 0.10000000149011612d) {
                this.aep.adI = f;
                this.aep.ajH(i, i2, i3, i4);
            }
        }
    }

    public boolean aZ() {
        return true;
    }
}
