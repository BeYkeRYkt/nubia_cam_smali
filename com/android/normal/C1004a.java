package com.android.normal;

import com.android.common.appService.C0106x;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.p014n.C0117j;
import com.android.common.setting.C0109m;

public class C1004a extends C0106x {
    public C0117j abA(int i, CameraMember cameraMember) {
        return C1009f.aSQ(true);
    }

    public C0109m abB(C0329e c0329e, int i, CameraMember cameraMember) {
        return new C1012i(c0329e, abC(null));
    }

    public CameraMember abC(CameraMember cameraMember) {
        return CameraMember.PRO;
    }
}
