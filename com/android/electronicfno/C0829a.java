package com.android.electronicfno;

import android.content.res.Resources;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.custom.C0421M;
import com.android.common.ui.C0730q;
import com.android.common.ui.RenderPreference$ActionEvent;
import com.android.p035d.C0774a;
import com.p010a.C0090a;

public class C0829a extends C0730q {
    public C0829a(C0329e c0329e) {
        super(c0329e);
        Resources resources = c0329e.SN().getResources();
        this.nf = "pref_camera_electronic_aperture_key";
        this.mv = resources.getString(R.string.electronic_fno_title);
        this.mw = R.drawable.ic_electronicfno_single_icon;
        this.mx = R.drawable.ic_electronicfno_single_icon_status;
        this.my = R.drawable.ic_electronicfno_single_icon_select;
        bnj(resources);
    }

    private void bnj(Resources resources) {
        this.mz = resources.getStringArray(R.array.pref_electronic_aperture_enteries);
        this.mA = resources.getStringArray(R.array.pref_electronic_aperture_enteryvalues);
        String string = resources.getString(R.string.pref_electronic_aperture_value_default);
        if (!C0421M.dC().dD().bS()) {
            bnk();
        }
        if (mY) {
            kJ(this.mz, this.mz.length);
            kJ(this.mA, this.mA.length);
        }
        this.mt = bnl(string);
        this.mu = this.mt;
    }

    private void bnk() {
        int length = this.mz.length - 1;
        Object[] objArr = new String[length];
        C0774a.boF(this.mz, 0, objArr, 0, length);
        this.mz = objArr;
        C0774a.boF(this.mA, 0, objArr, 0, length);
        this.mA = objArr;
    }

    private int bnl(String str) {
        for (int i = 0; i < this.mA.length; i++) {
            if (C0616j.apu(this.mA[i], str)) {
                return i;
            }
        }
        return this.mA.length / 2;
    }

    protected void kP(int i, RenderPreference$ActionEvent renderPreference$ActionEvent, boolean z) {
        C0090a.bvo("1", "electronic aperture value = " + this.mA[i]);
        kz(this.nf, this.mA[i]);
    }
}
