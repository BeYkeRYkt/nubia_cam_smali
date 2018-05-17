package com.android.video;

import com.android.common.appService.C0329e;
import com.android.common.cameradevice.C0379e;
import com.android.common.setting.ListPreference;
import java.util.List;

public class C1160m extends C1159p {
    public C1160m(C0329e c0329e) {
        super(c0329e);
    }

    protected int bhb() {
        String string = vO().getString("pref_video_slomo_quality_key", null);
        if (string == null) {
            ListPreference tp = this.zQ.SR().tp("pref_video_slomo_quality_key");
            if (tp != null) {
                tp.uY(0);
                string = tp.tw();
            } else {
                List JM = C0379e.FI().FH().JM(wu(), wl(), "120");
                if (JM != null) {
                    string = (String) JM.get(0);
                }
                vO().edit().putString("pref_video_slomo_quality_key", string).apply();
            }
        }
        return Integer.parseInt(string);
    }

    protected String xk() {
        return "120";
    }

    protected String xj() {
        return "off";
    }

    protected String xg() {
        return "off";
    }
}
