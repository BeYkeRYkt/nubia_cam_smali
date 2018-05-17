package com.android.startrack;

import com.android.common.appService.C0329e;
import com.android.common.setting.C0109m;
import com.android.common.setting.C0716s;

public class C1113b extends C0109m {
    public C1113b(C0329e c0329e) {
        super(c0329e);
    }

    protected String vZ() {
        return "off";
    }

    protected String wh() {
        return "manual";
    }

    protected int vM() {
        int i = C0716s.Aq;
        if (!xt()) {
            return i;
        }
        i = vO().getInt("maf_key", C0716s.Aq);
        if (i == -1) {
            return C0716s.Aq;
        }
        return i;
    }

    protected String vU() {
        return "on";
    }

    protected boolean xt() {
        return true;
    }
}
