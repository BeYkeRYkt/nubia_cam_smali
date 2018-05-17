package com.android.common.ui;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

class C0740R implements OnCheckedChangeListener {
    final /* synthetic */ ZtemtInlineSettingSwitch sC;

    private C0740R(ZtemtInlineSettingSwitch ztemtInlineSettingSwitch) {
        this.sC = ztemtInlineSettingSwitch;
    }

    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        int i = 0;
        if (z) {
            i = 1;
        }
        if (this.sC.sx.uW(this.sC.sx.tw()) != i && i >= 0 && i < this.sC.sx.uX().length) {
            this.sC.sx.uY(i);
            if (this.sC.sy != null) {
                this.sC.sy.qn(this.sC.sx.vd());
            }
        }
    }
}
