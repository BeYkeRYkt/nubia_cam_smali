package com.android.mono;

import com.android.common.appService.C0106x;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.p014n.C0117j;
import com.android.common.setting.C0109m;
import java.util.ArrayList;
import java.util.List;

public class C0956a extends C0106x {
    protected List ZK() {
        if (RA == null) {
            return null;
        }
        List arrayList = new ArrayList();
        arrayList.add(RA);
        return arrayList;
    }

    public C0117j abA(int i, CameraMember cameraMember) {
        return C0958c.bjP();
    }

    public C0109m abB(C0329e c0329e, int i, CameraMember cameraMember) {
        return new C0957b(c0329e, abC(null));
    }

    public CameraMember abC(CameraMember cameraMember) {
        return CameraMember.MONO;
    }
}
