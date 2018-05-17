package com.android.panorama;

import com.android.common.appService.C0329e;
import com.android.common.custom.C0417I;
import com.android.common.custom.C0421M;
import com.android.common.setting.C0109m;

public class C1038a extends C0109m {
    public C1038a(C0329e c0329e) {
        super(c0329e);
    }

    protected String vQ() {
        if (C0421M.dC().dD().dt()) {
            return "3840x2160";
        }
        return "1920x1080";
    }

    protected C0417I vP() {
        if (this.zO.us() != null) {
            return this.zO.us();
        }
        return we(1.7777777777777777d);
    }

    protected int wt() {
        return 3;
    }

    protected int xq() {
        return 0;
    }

    protected int vY() {
        return 0;
    }
}
