package com.android.electronicfno;

import android.content.res.Resources;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.ui.C0730q;
import com.android.common.ui.RenderPreference$ActionEvent;
import com.p010a.C0090a;

public class C0837h extends C0730q {
    public C0837h(C0329e c0329e) {
        super(c0329e);
        Resources resources = c0329e.SN().getResources();
        this.nf = "pref_camera_electronic_compensation_key";
        this.mv = resources.getString(R.string.electronic_fno_compensation_title);
        this.mw = R.drawable.ic_exposure_compensation_single_icon;
        this.mx = R.drawable.ic_exposure_compensation_single_icon_status;
        this.my = R.drawable.ic_exposure_compensation_single_icon_select;
        bom(resources);
    }

    private void bom(Resources resources) {
        this.mz = resources.getStringArray(R.array.pref_electronic_shutter_compensation);
        this.mA = this.mz;
        String string = resources.getString(R.string.pref_electronic_compensation_value_default);
        if (mY) {
            kJ(this.mz, this.mz.length);
        }
        this.mt = bon(string);
        this.mu = this.mt;
    }

    private int bon(String str) {
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
