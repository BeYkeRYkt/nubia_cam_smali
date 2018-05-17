package com.android.p037f;

import com.android.common.appService.C0106x;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0378d;
import com.android.common.p014n.C0117j;
import com.android.common.setting.C0109m;
import java.util.Arrays;
import java.util.List;

public class C0851f extends C0106x {
    public C0117j abA(int i, CameraMember cameraMember) {
        return new C0852g(1);
    }

    public C0109m abB(C0329e c0329e, int i, CameraMember cameraMember) {
        return new C0849d(c0329e);
    }

    public CameraMember abC(CameraMember cameraMember) {
        return CameraMember.PHOTO3D;
    }

    protected List ZK() {
        if (Rx == null) {
            return null;
        }
        return Arrays.asList(new C0378d[]{Rx});
    }
}
