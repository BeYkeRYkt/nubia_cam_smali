package com.android.p013b;

import com.android.common.appService.C0329e;
import com.android.common.setting.C0109m;

public class C0124j extends C0109m {
    public C0124j(C0329e c0329e) {
        super(c0329e);
    }

    protected String vZ() {
        if (!this.zQ.VA()) {
            return super.vZ();
        }
        if (this.zQ.VU()) {
            return "on";
        }
        return "off";
    }

    protected int xd() {
        return 0;
    }
}
