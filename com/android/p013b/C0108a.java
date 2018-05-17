package com.android.p013b;

import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0378d;
import com.android.common.cameradevice.C0384o;
import com.android.common.setting.C0109m;
import java.util.ArrayList;
import java.util.List;

public class C0108a extends C0107g {
    public C0109m abB(C0329e c0329e, int i, CameraMember cameraMember) {
        if (C0384o.Jr().Ju()[i].facing == 1) {
            return new C0110b(c0329e);
        }
        return new C0121f(c0329e);
    }

    protected List ZK() {
        List arrayList = new ArrayList();
        for (int i = 0; i < C0384o.Jr().Jv(); i++) {
            arrayList.add(new C0378d(i, -1));
        }
        return arrayList.isEmpty() ? null : arrayList;
    }

    public CameraMember abC(CameraMember cameraMember) {
        return CameraMember.FACTORYTEST;
    }
}
