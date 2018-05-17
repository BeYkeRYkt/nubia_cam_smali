package com.android.p013b;

import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.setting.C0109m;
import java.util.ArrayList;
import java.util.List;

public class C0123i extends C0107g {
    protected List ZK() {
        if (Ry == null) {
            return null;
        }
        List arrayList = new ArrayList();
        arrayList.add(Ry);
        return arrayList;
    }

    public C0109m abB(C0329e c0329e, int i, CameraMember cameraMember) {
        return new C0119d(c0329e);
    }

    public CameraMember abC(CameraMember cameraMember) {
        return CameraMember.BUSINESSCARD;
    }
}
