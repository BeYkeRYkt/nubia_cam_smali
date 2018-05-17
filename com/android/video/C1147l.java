package com.android.video;

import com.android.common.appService.C0106x;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0384o;
import com.android.common.p014n.C0117j;
import com.android.common.setting.C0109m;
import java.util.ArrayList;
import java.util.List;

public class C1147l extends C0106x {
    protected List ZK() {
        List arrayList = new ArrayList();
        if (Ry != null) {
            arrayList.add(Ry);
        }
        if (C0384o.Jr().Jt() != -1) {
            arrayList.add(Rz);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    public C0117j abA(int i, CameraMember cameraMember) {
        return C1150c.bfx(false);
    }

    public C0109m abB(C0329e c0329e, int i, CameraMember cameraMember) {
        return new C1159p(c0329e);
    }

    public CameraMember abC(CameraMember cameraMember) {
        return CameraMember.VIDEO_RECORD;
    }
}
