package com.android.triaxial;

import com.android.common.appService.C0106x;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.p014n.C0117j;
import com.android.common.setting.C0109m;
import java.util.ArrayList;
import java.util.List;

public class C1142a extends C0106x {
    public C0117j abA(int i, CameraMember cameraMember) {
        return C1145d.bei();
    }

    public C0109m abB(C0329e c0329e, int i, CameraMember cameraMember) {
        return new C1143b(c0329e);
    }

    public CameraMember abC(CameraMember cameraMember) {
        return CameraMember.TRIAXIAL;
    }

    protected List ZK() {
        List arrayList = new ArrayList();
        if (Ry != null) {
            arrayList.add(Ry);
        }
        if (Rz != null) {
            arrayList.add(Rz);
        }
        return arrayList;
    }
}
