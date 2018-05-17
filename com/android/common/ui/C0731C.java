package com.android.common.ui;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.Canvas;
import com.android.camera.R;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.setting.C0716s;

public class C0731C extends C0730q {
    private int[] pD;
    private int pE;

    public C0731C(C0329e c0329e) {
        super(c0329e);
        Resources resources = c0329e.SN().getResources();
        this.nf = "maf_key";
        this.mv = resources.getString(R.string.high_setting_manual_focus_title);
        this.nd = new int[]{R.drawable.ic_white_balance_auto_holo_light, R.drawable.ic_high_setting_focus_micro, R.drawable.ic_high_setting_focus_people, R.drawable.ic_high_setting_focus_house, R.drawable.ic_high_setting_focus_infity};
        if (mY) {
            kI(this.nd, this.nd.length);
            this.np = 135;
            this.na = 0;
            this.mt = this.np;
        } else {
            this.na = 135;
            this.np = 0;
            this.mt = this.np;
        }
        this.mw = R.drawable.ic_focus_single_icon;
        this.mx = R.drawable.ic_focus_single_icon_status;
        this.my = R.drawable.ic_focus_single_icon_select;
        mT(resources);
        this.pE = this.mz.length;
        this.mu = mV().getInt(this.nf, -1);
        if (this.mu == -1) {
            this.mu = this.np;
        }
        if (this.nb.SP() == CameraMember.STARTRACK) {
            this.mt = this.na;
            if (this.mu == this.np) {
                this.mu = this.mt;
            }
        }
    }

    private void mT(Resources resources) {
        int i;
        int i2 = 17;
        int i3 = 0;
        this.mz = new String[136];
        this.mA = new String[136];
        this.pD = new int[136];
        for (i = 0; i < 136; i++) {
            this.pD[i] = i - 34;
            if (this.pD[i] > C0716s.Aq) {
                this.pD[i] = C0716s.Aq;
            }
        }
        for (i = 0; i < 17; i++) {
            this.pD[i] = -1;
        }
        while (i2 < 34) {
            this.pD[i2] = 0;
            i2++;
        }
        if (mY) {
            kI(this.pD, this.pD.length);
        }
        String string = resources.getString(R.string.auto);
        while (i3 < 136) {
            if (this.pD[i3] < 0) {
                this.mz[i3] = string;
            } else {
                this.mz[i3] = this.pD[i3] + "";
            }
            this.mA[i3] = this.pD[i3] + "";
            i3++;
        }
    }

    protected void kP(int i, RenderPreference$ActionEvent renderPreference$ActionEvent, boolean z) {
        if (this.pD[i] == -1) {
            this.nb.Tc().MT(true);
            if (renderPreference$ActionEvent == RenderPreference$ActionEvent.MOVE || renderPreference$ActionEvent == RenderPreference$ActionEvent.UP) {
                this.nb.Tc().Ma();
            }
        } else {
            this.nb.Tc().MT(false);
            if (renderPreference$ActionEvent == RenderPreference$ActionEvent.MOVE || renderPreference$ActionEvent == RenderPreference$ActionEvent.DOWN) {
                this.nb.Tc().LU();
            }
        }
        Editor edit = mV().edit();
        edit.putInt(this.nf, this.pD[i]);
        edit.apply();
        kN(renderPreference$ActionEvent);
        this.nb.SU().Sa();
    }

    protected void kf(Canvas canvas, boolean z) {
        jW((int) (this.mB * 255.0f));
        mU(canvas);
        jX(canvas);
    }

    protected void kj(Canvas canvas, float f, int i) {
        if (i * 34 != this.mu) {
            this.ne[i].setAlpha(255);
            this.ne[i].draw(canvas);
        } else if (this.mH) {
            this.ne[i].setAlpha(80);
            this.ne[i].draw(canvas);
        }
    }

    protected boolean kc(int i) {
        if (this.nb.SP() == CameraMember.STARTRACK) {
            i = mS(i);
        }
        if (i == -1 || this.mu == i) {
            return false;
        }
        this.mu = i;
        return true;
    }

    private int mS(int i) {
        if (this.pD[i] >= 1) {
            return i;
        }
        return mY ? 101 : 34;
    }

    private void mU(Canvas canvas) {
        canvas.save();
        canvas.drawArc(this.mC, 0.0f, 360.0f, false, this.mD);
        this.mE.setAlpha((int) (this.mB * 75.0f));
        canvas.drawArc(this.mC, -(this.mF[3] + 90.0f), this.mF[3] * 2.0f, false, this.mE);
        jY(canvas);
        canvas.rotate(-this.mF[3], this.mF[0], this.mF[1]);
        for (int i = 0; i < this.ne.length; i++) {
            kj(canvas, 0.0f, i);
            canvas.rotate(this.mO * 34.0f, this.mF[0], this.mF[1]);
        }
        canvas.restore();
    }

    public boolean kF(float f, float f2) {
        if (mY) {
            if (this.mu > 119) {
                this.mu = 135;
            } else if (this.mu > 102) {
                this.mu = 102;
            }
        } else if (this.mu < 17) {
            this.mu = 0;
        } else if (this.mu < 34) {
            this.mu = 34;
        }
        return super.kF(f, f2);
    }

    public void kE() {
        super.kE();
        this.nb.Tc().MT(true);
        this.mu = this.mt;
        this.mK = (-this.mF[3]) + (((float) this.mu) * this.mO);
    }

    private SharedPreferences mV() {
        return this.nb.SS();
    }
}
