package com.android.common;

import android.view.WindowManager.LayoutParams;
import com.android.common.p022r.C0282b;

final class C0283W implements C0282b {
    final /* synthetic */ ActivityBase akN;

    C0283W(ActivityBase activityBase) {
        this.akN = activityBase;
    }

    public void ano(float f) {
        LayoutParams attributes = this.akN.getWindow().getAttributes();
        attributes.screenBrightness = f;
        this.akN.getWindow().setAttributes(attributes);
    }
}
