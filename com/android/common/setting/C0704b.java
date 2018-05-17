package com.android.common.setting;

import com.android.common.appService.C0105L;
import com.android.common.appService.C0329e;
import com.android.common.cameradevice.C0384o;
import com.p010a.C0090a;

public class C0704b {
    private C0329e yO = null;
    private C0105L yP = null;
    private final int yQ;
    private C0159c[] yR = null;
    private C0157n yS;

    public C0704b(C0329e c0329e, C0105L c0105l, C0157n c0157n) {
        this.yO = c0329e;
        this.yP = c0105l;
        this.yQ = C0384o.Jr().Jv();
        this.yR = new C0159c[this.yQ];
        this.yS = c0157n;
        for (int i = 0; i < this.yQ; i++) {
            this.yR[i] = null;
        }
    }

    public C0159c tn(int i) {
        if (i < 0 || i >= this.yQ) {
            return null;
        }
        if (this.yR[i] == null) {
            this.yR[i] = this.yS.tm(this.yO, i, this.yP);
        }
        return this.yR[i];
    }

    public void to(int i) {
        if (i >= 0 && i < this.yQ) {
            C0090a.bvo("ParametersSetterManager", "Release " + i + "'s parametersSetter");
            this.yR[i] = null;
        }
    }
}
