package com.android.intervalometer;

import android.hardware.Camera.Size;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.custom.C0417I;
import com.android.common.setting.C0109m;

public class C0935g extends C0109m {
    public C0935g(C0329e c0329e) {
        super(c0329e);
    }

    protected String vQ() {
        Size apD = C0616j.apD(this.zQ.SN(), this.zO.ur(), 1.7777777777777777d);
        return apD.width + "x" + apD.height;
    }

    protected C0417I vP() {
        if (this.zO.us() != null) {
            return this.zO.us();
        }
        return we(1.7777777777777777d);
    }

    protected String wa() {
        return "off";
    }

    protected int wt() {
        return 7;
    }
}
