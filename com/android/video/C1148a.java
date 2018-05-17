package com.android.video;

import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.p014n.C0117j;
import com.android.common.setting.C0109m;
import java.util.ArrayList;
import java.util.List;

public class C1148a extends C1147l {
    protected List ZK() {
        List arrayList;
        if (Ry != null) {
            arrayList = new ArrayList();
            arrayList.add(Ry);
            return arrayList;
        } else if (Rz == null) {
            return null;
        } else {
            arrayList = new ArrayList();
            arrayList.add(Rz);
            return arrayList;
        }
    }

    public C0117j abA(int i, CameraMember cameraMember) {
        return C1150c.bfx(true);
    }

    public C0109m abB(C0329e c0329e, int i, CameraMember cameraMember) {
        return new C1160m(c0329e);
    }

    public CameraMember abC(CameraMember cameraMember) {
        return CameraMember.VIDEO_SLOMO;
    }
}
