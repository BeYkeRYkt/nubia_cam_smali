package com.android.zoomblur;

import com.android.common.appService.C0106x;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.p014n.C0117j;
import com.android.common.setting.C0109m;
import java.util.ArrayList;

public class C1223c extends C0106x {
    public C0117j abA(int i, CameraMember cameraMember) {
        return C1221a.bfo();
    }

    public C0109m abB(C0329e c0329e, int i, CameraMember cameraMember) {
        return new C1224d(c0329e);
    }

    public ArrayList ZL() {
        return new ZoomBlurMemberConfig$1(this);
    }

    public CameraMember abC(CameraMember cameraMember) {
        return CameraMember.ZOOMBLUR;
    }
}
