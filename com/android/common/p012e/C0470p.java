package com.android.common.p012e;

import com.android.common.appService.C0341p;

public class C0470p extends C0102l {
    private C0341p VS = null;
    private boolean VT = false;

    public C0470p(C0341p c0341p, boolean z) {
        this.VS = c0341p;
        this.VT = z;
    }

    public void mE() {
        this.VS.YR(this.VT);
    }

    public int mF() {
        return 100;
    }
}
