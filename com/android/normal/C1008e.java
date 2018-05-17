package com.android.normal;

import com.android.common.appService.C0106x;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.custom.C0421M;
import com.android.common.p014n.C0117j;
import com.android.common.setting.C0109m;
import java.util.ArrayList;
import java.util.List;

public class C1008e extends C0106x {
    protected List ZK() {
        List arrayList = new ArrayList();
        if ((C0421M.dC().dD().cc() || C0421M.dC().dD().cA()) && Rx != null) {
            arrayList.add(Rx);
        } else if (Ry != null) {
            arrayList.add(Ry);
        }
        if (Rz != null) {
            arrayList.add(Rz);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    public C0117j abA(int i, CameraMember cameraMember) {
        return C1009f.aSQ(false);
    }

    public C0109m abB(C0329e c0329e, int i, CameraMember cameraMember) {
        return new C1011h(c0329e, abC(null));
    }

    public CameraMember abC(CameraMember cameraMember) {
        return CameraMember.NORMAL;
    }
}
