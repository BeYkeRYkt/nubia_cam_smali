package com.android.zoomblur;

import com.android.camera.R;
import com.android.common.appService.C0329e;
import com.android.common.setting.C0109m;

public class C1224d extends C0109m {
    public C1224d(C0329e c0329e) {
        super(c0329e);
    }

    protected String xo() {
        return vO().getString("pref_zoomblur_type", vN(R.string.zoomblur_type_default));
    }

    protected String wa() {
        return "off";
    }
}
