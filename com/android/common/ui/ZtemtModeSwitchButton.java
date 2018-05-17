package com.android.common.ui;

import android.content.Context;
import android.util.AttributeSet;
import com.android.common.p012e.C0458b;
import com.android.common.p012e.C0467m;

public class ZtemtModeSwitchButton extends RotateImageView {
    private C0768z pl;

    public ZtemtModeSwitchButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public boolean performClick() {
        boolean performClick = super.performClick();
        C0458b.adi().adj(C0467m.adw(this));
        return performClick;
    }

    public void mG() {
        if (this.pl != null) {
            this.pl.mH();
        }
    }
}
