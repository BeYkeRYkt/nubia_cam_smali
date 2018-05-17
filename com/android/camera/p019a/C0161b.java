package com.android.camera.p019a;

import com.android.common.appService.C0105L;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.setting.C0109m;
import com.android.common.setting.C0160p;
import java.util.HashMap;

public class C0161b extends C0160p {
    private HashMap aEO;

    public C0161b(int i, C0329e c0329e, C0105L c0105l) {
        super(i, c0329e, c0105l);
        this.aEO = null;
        this.aEO = new HashMap();
    }

    protected C0109m tY() {
        C0329e yw = yw();
        CameraMember SP = yw.SP();
        String str = SP.toString() + '&' + this.zZ;
        C0109m c0109m = (C0109m) this.aEO.get(str);
        if (c0109m == null) {
            c0109m = this.Aa.abB(yw, this.zZ, SP);
            this.aEO.put(str, c0109m);
        }
        if (c0109m != null) {
            c0109m.wi(this.zZ, this.Ab);
        }
        return c0109m;
    }
}
