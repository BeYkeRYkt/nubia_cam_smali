package com.android.slowshutter;

import com.android.common.appService.C0106x;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.p014n.C0117j;
import com.android.common.setting.C0109m;

public class C1094a extends C0106x {
    public C0117j abA(int i, CameraMember cameraMember) {
        return C1098e.btA();
    }

    public C0109m abB(C0329e c0329e, int i, CameraMember cameraMember) {
        return new C1099f(c0329e);
    }

    public CameraMember abC(CameraMember cameraMember) {
        return CameraMember.SLOWSHUTTER;
    }
}
