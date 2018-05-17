package com.android.p013b;

import com.android.common.appService.C0106x;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0384o;
import com.android.common.p014n.C0117j;
import com.android.common.setting.C0109m;
import java.util.ArrayList;
import java.util.List;

public class C0107g extends C0106x {
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

    public C0117j abA(int i, CameraMember cameraMember) {
        return C0118c.bce();
    }

    public C0109m abB(C0329e c0329e, int i, CameraMember cameraMember) {
        if (C0384o.Jr().Ju()[i].facing == 1) {
            return new C0122h(c0329e);
        }
        return new C0124j(c0329e);
    }

    public CameraMember abC(CameraMember cameraMember) {
        return CameraMember.THIRDPARTY_CAMERA;
    }
}
