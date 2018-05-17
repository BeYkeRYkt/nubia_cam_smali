package com.android.lightpainting;

import com.android.common.appService.C0329e;
import com.android.common.custom.C0417I;
import com.android.common.setting.C0109m;

public class C0941b extends C0109m {
    public C0941b(C0329e c0329e) {
        super(c0329e);
    }

    protected String vQ() {
        return "640x480";
    }

    protected String vZ() {
        return "off";
    }

    protected C0417I vP() {
        if (this.zO.ut() != null) {
            return this.zO.ut();
        }
        if (this.zO.us() != null) {
            return this.zO.us();
        }
        return we(1.7777777777777777d);
    }

    protected String wM() {
        return "on";
    }
}
