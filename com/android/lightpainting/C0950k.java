package com.android.lightpainting;

import android.view.View;
import android.view.View.OnClickListener;
import com.android.common.setting.ListPreference;
import com.p010a.C0090a;

final class C0950k implements OnClickListener {
    final /* synthetic */ C0943d aZw;

    C0950k(C0943d c0943d) {
        this.aZw = c0943d;
    }

    public void onClick(View view) {
        ListPreference tp = this.aZw.adA.SR().tp("pref_camera_flashmode_for_lightpainting_key");
        C0090a.bvo("LightDrawFragment", "mTorchLayout onclick " + (tp == null ? "pref == null" : Integer.valueOf(tp.vc())));
        if (tp != null && tp.vc() > 0) {
            this.aZw.bpE();
            this.aZw.bpp("torch");
            this.aZw.aZi.setText("");
            this.aZw.aZh.setClickable(false);
            this.aZw.aZg.setAlpha(0.4f);
        }
    }
}
