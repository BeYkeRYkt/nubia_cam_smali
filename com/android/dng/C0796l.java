package com.android.dng;

import com.android.common.appService.C0106x;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.custom.C0421M;
import com.android.common.p014n.C0117j;
import com.android.common.setting.C0109m;
import java.util.ArrayList;
import java.util.List;

public class C0796l extends C0106x {
    protected List ZK() {
        List arrayList = new ArrayList();
        if (Ry != null) {
            arrayList.add(Ry);
        }
        if (C0421M.dC().dD().bd() && RA != null) {
            arrayList.add(RA);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    public C0117j abA(int i, CameraMember cameraMember) {
        return C0787c.bcA();
    }

    public C0109m abB(C0329e c0329e, int i, CameraMember cameraMember) {
        return new C0795k(c0329e);
    }

    public CameraMember abC(CameraMember cameraMember) {
        return CameraMember.DNG;
    }

    public ArrayList ZL() {
        return new DngMemberConfig$1(this);
    }
}
