package com.android.p036e;

import com.android.common.appService.C0106x;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.custom.C0421M;
import com.android.common.p014n.C0117j;
import com.android.common.setting.C0109m;
import java.util.ArrayList;
import java.util.List;

public class C0823a extends C0106x {
    protected List ZK() {
        if (!C0421M.dC().dD().bF() || Rx == null) {
            return null;
        }
        List arrayList = new ArrayList();
        arrayList.add(Rx);
        return arrayList;
    }

    public C0117j abA(int i, CameraMember cameraMember) {
        return C0826d.bqD();
    }

    public C0109m abB(C0329e c0329e, int i, CameraMember cameraMember) {
        return new C0824b(c0329e, cameraMember);
    }

    public CameraMember abC(CameraMember cameraMember) {
        return CameraMember.BIG_APERTURE;
    }
}
