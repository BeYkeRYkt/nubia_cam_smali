package com.android.p036e;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.camera.R;
import com.android.common.p014n.C0111p;
import com.android.common.ui.BigApertureSettingUI;

public class C0825c extends C0111p {
    private BigApertureSettingUI aZF = null;

    private C0825c() {
    }

    private C0825c(int i) {
        super(i);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return null;
        }
        View inflate = layoutInflater.inflate(R.layout.bigaper_fragment, viewGroup, false);
        bqz(inflate);
        return inflate;
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            this.adA.Tc().LQ(new C0827e(this));
            this.adA.TE().Lz(8);
        }
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
            this.aZF.mW(false);
            this.adA.Tc().LR();
        }
    }

    private void bqz(View view) {
        bqy(view);
    }

    private void bqy(View view) {
        this.aZF = (BigApertureSettingUI) view.findViewById(R.id.bigApertureSetting);
        this.aZF.mX(2.0f, 2.0f, 8.0f);
        this.aZF.mY(new C0828f(this));
    }

    public boolean Sd(int i, int i2) {
        if (this.aZF == null) {
            return false;
        }
        this.aZF.setVisibility(0);
        return this.aZF.na((float) i, (float) i2);
    }

    public static C0825c bqA() {
        return new C0825c(1);
    }
}
