package com.android.dualcameracalibration;

import com.android.common.appService.C0106x;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.p014n.C0117j;
import com.android.common.setting.C0109m;
import java.util.ArrayList;
import java.util.List;

public class C0816f extends C0106x {
    protected List ZK() {
        if (Rx == null) {
            return null;
        }
        List arrayList = new ArrayList();
        arrayList.add(Rx);
        return arrayList;
    }

    public C0117j abA(int i, CameraMember cameraMember) {
        return C0812b.aJK();
    }

    public C0109m abB(C0329e c0329e, int i, CameraMember cameraMember) {
        return new C0811a(c0329e);
    }

    public CameraMember abC(CameraMember cameraMember) {
        return CameraMember.DUALCAMERACALIBRATION;
    }
}
