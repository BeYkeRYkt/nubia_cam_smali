package com.android.common.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import com.android.common.appService.C0329e;
import com.android.common.p012e.C0458b;
import com.android.common.p012e.C0467m;
import com.android.common.setting.IconListPreference;
import com.p010a.C0090a;

public class ai extends RotateImageView implements OnClickListener {
    protected int uW = 0;
    protected int[] uX;
    protected aj uY = null;
    protected int uZ = 0;
    protected IconListPreference va = null;

    public ai(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void sf(C0329e c0329e) {
        if (this.va != null) {
            this.va = (IconListPreference) c0329e.SR().tp(this.va.vd());
            int uW = this.va.uW(this.va.tw());
            if (uW != -1 && uW < this.va.uX().length) {
                setImageResource(this.va.uP()[uW]);
            }
            if (this.uY != null) {
                this.uY.si();
            }
        }
    }

    public void sd(IconListPreference iconListPreference) {
        this.va = iconListPreference;
        this.uX = this.va.uT();
        this.uZ = this.va.uU();
        this.uW = this.va.uW(this.va.tw());
        if (this.uW == -1 && this.uX.length != 0) {
            C0090a.m1e("ZtemtSwitcherButton", "findIndexOfValue return -1, set to 0!");
            this.uW = 0;
        }
        setImageResource(this.uX[this.uW]);
        setOnClickListener(this);
    }

    public void se(aj ajVar) {
        this.uY = ajVar;
    }

    public void onClick(View view) {
        C0458b.adi().adj(C0467m.adB(this));
    }

    public void sg() {
        C0090a.bvo("ZtemtSwitcherButton", "excute");
        sh();
        if (this.uY != null) {
            this.uY.si();
        }
    }

    public void fc(int i, boolean z) {
        super.fc(i, z);
    }

    protected void sh() {
        if (this.uZ != 1) {
            this.uW = this.va.uW(this.va.tw());
            this.uW++;
            this.uW %= this.uZ;
            if (this.va != null) {
                this.va.uY(this.uW);
                if (this.uX != null) {
                    setImageResource(this.uX[this.uW]);
                } else {
                    setImageResource(this.va.uV());
                }
            } else {
                setImageResource(this.uX[this.uW]);
            }
        }
    }
}
