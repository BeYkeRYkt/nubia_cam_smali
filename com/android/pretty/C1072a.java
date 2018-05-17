package com.android.pretty;

import com.android.common.appService.C0106x;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.custom.C0421M;
import com.android.common.p014n.C0117j;
import com.android.common.setting.C0109m;
import java.util.ArrayList;
import java.util.List;

public class C1072a extends C0106x {
    protected List ZK() {
        List arrayList = new ArrayList();
        if (C0421M.dC().dD().bF() && Rx != null) {
            arrayList.add(Rx);
        } else if (Ry != null) {
            arrayList.add(Ry);
        }
        if (Rz != null) {
            arrayList.add(Rz);
        }
        return arrayList;
    }

    public C0117j abA(int i, CameraMember cameraMember) {
        return C1073b.aFX();
    }

    public C0109m abB(C0329e c0329e, int i, CameraMember cameraMember) {
        return new C1079i(c0329e);
    }

    public ArrayList ZL() {
        return new PrettyMemberConfig$1(this);
    }

    public CameraMember abC(CameraMember cameraMember) {
        return CameraMember.PRETTYCAMERA;
    }
}
