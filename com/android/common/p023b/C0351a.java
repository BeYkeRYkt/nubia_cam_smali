package com.android.common.p023b;

import com.android.camera.R;
import com.android.common.appService.C0316U;
import com.android.common.appService.C0329e;
import com.android.common.ui.aj;

public class C0351a implements aj {
    private C0329e IU = null;

    public C0351a(C0329e c0329e) {
        this.IU = c0329e;
    }

    private C0316U Kj() {
        return this.IU.Ta();
    }

    public void si() {
        Kj().ack();
        if (!this.IU.SY().ty()) {
            if (!"off".equals(this.IU.SS().getString("pref_camera_delay_shoot_key", this.IU.Tb(R.string.pref_camera_delay_shoot_default)))) {
                this.IU.SR().tp("pref_camera_interval_switch").uY(0);
                this.IU.SU().Rn();
            }
        }
    }
}
