package com.android.p037f;

import com.android.common.appService.C0329e;
import com.android.common.cameradevice.C0384o;
import com.android.common.custom.C0417I;
import com.android.common.setting.C0109m;
import java.util.HashMap;

public class C0849d extends C0109m {
    private HashMap bai = new HashMap();

    public C0849d(C0329e c0329e) {
        super(c0329e);
    }

    protected int xc() {
        return 2;
    }

    protected String wa() {
        return "on";
    }

    protected int wW() {
        return 30;
    }

    protected String vQ() {
        String str = (String) this.bai.get("4:3");
        if (str == null) {
            str = C0109m.vS("4:3", vR());
            this.bai.put("4:3", str);
        }
        if (this.zP != C0384o.Jr().Jx()) {
            return str;
        }
        String FX = this.zQ.Ud(this.zP).FX("altek-back-sub-picturesize");
        return FX != null ? FX : vT(str);
    }

    protected int wt() {
        return 20;
    }

    protected String wn() {
        return null;
    }

    protected C0417I vP() {
        return new C0417I(1280, 960);
    }
}
