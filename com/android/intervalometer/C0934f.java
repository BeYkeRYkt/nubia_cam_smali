package com.android.intervalometer;

import com.android.common.appService.C0106x;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.p014n.C0117j;
import com.android.common.setting.C0109m;

public class C0934f extends C0106x {
    public C0117j abA(int i, CameraMember cameraMember) {
        return C0929a.bel();
    }

    public C0109m abB(C0329e c0329e, int i, CameraMember cameraMember) {
        return new C0935g(c0329e);
    }

    public CameraMember abC(CameraMember cameraMember) {
        return CameraMember.INTERVALOMETER;
    }
}
