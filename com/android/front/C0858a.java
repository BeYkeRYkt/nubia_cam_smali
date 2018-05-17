package com.android.front;

import com.android.common.appService.C0106x;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.p014n.C0117j;
import com.android.common.setting.C0109m;
import java.util.ArrayList;
import java.util.List;

public class C0858a extends C0106x {
    protected List ZK() {
        List arrayList = new ArrayList();
        if (Ry != null) {
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

    public ArrayList ZL() {
        return new FrontMemberConfig$1(this);
    }

    public C0117j abA(int i, CameraMember cameraMember) {
        return C0860c.bdW();
    }

    public C0109m abB(C0329e c0329e, int i, CameraMember cameraMember) {
        return new C0859b(c0329e);
    }

    public CameraMember abC(CameraMember cameraMember) {
        return CameraMember.FRONT;
    }
}
