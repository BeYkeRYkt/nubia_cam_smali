package com.android.dng;

import android.text.TextUtils;
import com.android.camera.R;
import com.android.common.cameradevice.C0378d;
import com.android.common.cameradevice.C0384o;
import com.p010a.C0090a;
import com.p010a.C0091b;

final class C0809y implements C0791g {
    final /* synthetic */ C0792h aNC;

    C0809y(C0792h c0792h) {
        this.aNC = c0792h;
    }

    public void bdb(String str, String str2) {
        C0090a.bvo("DngFragment", "value: " + str2);
        if (TextUtils.equals("pref_camera_interval_pro", str)) {
            this.aNC.als().edit().putString(str, str2).apply();
            return;
        }
        int Jx;
        C0091b.bvq("DngFragment", "onItemClick : " + str2);
        if (this.aNC.getString(R.string.dng_camera_type_entryvalue_left).equals(this.aNC.als().getString("pref_dng_camera_type", this.aNC.getString(R.string.dng_camera_type_default)))) {
            Jx = C0384o.Jr().Jx();
        } else {
            Jx = C0384o.Jr().Js();
        }
        if (Jx != this.aNC.adA.SQ()) {
            this.aNC.adA.WD(new C0378d(Jx, -1));
            this.aNC.bdp();
        }
    }
}
