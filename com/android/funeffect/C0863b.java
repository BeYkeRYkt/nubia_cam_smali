package com.android.funeffect;

import com.android.camera.R;
import com.android.common.appService.C0329e;
import com.android.common.setting.C0109m;

public class C0863b extends C0109m {
    public C0863b(C0329e c0329e) {
        super(c0329e);
    }

    protected String vV() {
        return vO().getString("pref_camera_ztemt_fun_effect", vN(R.string.pref_camera_ztemt_fun_effect_default));
    }
}
