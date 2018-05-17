package com.android.mono;

import com.android.camera.R;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0384o;
import com.android.common.custom.C0421M;
import com.android.common.setting.C0109m;
import com.android.common.setting.ListPreference;
import java.util.HashMap;

public class C0957b extends C0109m {
    private CameraMember aSQ = CameraMember.MONO;
    private ListPreference aSR = null;
    private HashMap aSS = null;

    public C0957b(C0329e c0329e, CameraMember cameraMember) {
        super(c0329e);
        this.aSQ = cameraMember;
        this.aSS = new HashMap();
    }

    protected String vQ() {
        if (this.zP == C0384o.Jr().Jt()) {
            return super.vQ();
        }
        if (this.aSR == null) {
            this.aSR = this.zQ.SR().tp("pref_camera_picture_ratio_key");
        }
        String tw = this.aSR.tw();
        String str = (String) this.aSS.get(tw);
        if (str == null) {
            str = C0109m.vS(tw, vR());
            this.aSS.put(tw, str);
        }
        return str;
    }

    protected String wo() {
        if ("-1".equals(vW()) && vX() && !C0421M.dC().dD().cT()) {
            return vO().getString("pref_camera_ae_bracket_hdr_key", vN(R.string.pref_camera_ae_bracket_hdr_default));
        }
        return vN(R.string.pref_camera_ae_bracket_hdr_default);
    }

    protected String wY() {
        if (!"-1".equals(vW()) || !vX() || C0421M.dC().dD().cT()) {
            return vN(R.string.pref_camera_scenemode_default);
        }
        String str;
        if ("HDR".equals(wo())) {
            str = "hdr";
        } else {
            str = vO().getString("pref_camera_scenemode_key", vN(R.string.pref_camera_scenemode_default));
        }
        return str;
    }

    protected String xg() {
        if (C0421M.dC().dD().cT()) {
            return vO().getString("pref_third_arith_hdr_key", vN(R.string.pref_third_arith_hdr_default));
        }
        return "off";
    }
}
