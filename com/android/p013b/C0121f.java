package com.android.p013b;

import com.android.common.appService.C0329e;
import com.android.common.setting.C0109m;

public class C0121f extends C0109m {
    public C0121f(C0329e c0329e) {
        super(c0329e);
    }

    protected String vZ() {
        if (this.zQ.VU() || this.zQ.SS().getInt("auto_steps", 3) == 1) {
            return "on";
        }
        return "off";
    }

    protected int xd() {
        return 0;
    }

    protected String wh() {
        if (this.zQ.SS().getInt("auto_steps", 3) == 1) {
            return "infinity";
        }
        return super.wh();
    }

    protected int vY() {
        return 0;
    }
}
