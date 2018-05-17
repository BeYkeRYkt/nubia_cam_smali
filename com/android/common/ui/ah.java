package com.android.common.ui;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.custom.C0421M;

public class ah extends C0730q {
    private String uN;
    private String uO;
    private Drawable uP;
    private int uQ;
    private String uR;
    private int uS;
    private ah uT;
    private int uU;
    private int uV;

    public ah(C0329e c0329e) {
        super(c0329e);
        this.uU = 2;
        this.uS = -1;
        this.uT = null;
        this.uP = null;
        this.uQ = R.drawable.ic_white_balance_auto_holo_light;
        Resources resources = c0329e.SN().getResources();
        this.mw = R.drawable.ic_slow_shutter_single_icon;
        this.mx = R.drawable.ic_slow_shutter_single_icon_status;
        this.my = R.drawable.ic_slow_shutter_single_icon_select;
        rW(resources, 2);
        this.uV = this.mz.length;
        this.mu = rZ(sb().getString(this.nf, "0"));
        sc();
    }

    public ah(C0329e c0329e, int i, int i2, int i3) {
        super(c0329e);
        this.uU = 2;
        this.uS = -1;
        this.uT = null;
        this.uP = null;
        this.uQ = R.drawable.ic_white_balance_auto_holo_light;
        Resources resources = c0329e.SN().getResources();
        this.mw = R.drawable.ic_slow_shutter_single_icon;
        this.mx = R.drawable.ic_slow_shutter_single_icon_status;
        this.my = R.drawable.ic_slow_shutter_single_icon_select;
        this.uO = resources.getString(R.string.auto);
        this.mv = resources.getString(R.string.high_setting_slow_shutter_title);
        this.uU = i;
        rV(i, i2, i3);
        this.uV = this.mz.length;
        sc();
        if (i != 1 || this.nb.SP() != CameraMember.STARTRACK) {
            this.mu = rZ(sb().getString(this.nf, "0"));
        } else if (C0421M.dC().dD().bv() < 30) {
            this.mu = rZ(sb().getString(this.nf, "10"));
            this.mt = 10;
        } else {
            this.mu = rZ(sb().getString(this.nf, "30"));
            this.mt = 30;
        }
    }

    public ah(C0329e c0329e, int i, int i2) {
        super(c0329e);
        this.uU = 2;
        this.uS = -1;
        this.uT = null;
        this.uP = null;
        this.uQ = R.drawable.ic_white_balance_auto_holo_light;
        Resources resources = c0329e.SN().getResources();
        this.mv = resources.getString(R.string.high_setting_slow_shutter_title);
        this.mw = R.drawable.ic_slow_shutter_single_icon;
        this.mx = R.drawable.ic_slow_shutter_single_icon_status;
        this.my = R.drawable.ic_slow_shutter_single_icon_select;
        rW(resources, i);
        this.uV = this.mz.length;
        sc();
        if (i == 1 && this.nb.SP() == CameraMember.STARTRACK) {
            this.mu = rZ(sb().getString(this.nf, "30"));
            this.mt = 30;
        } else {
            this.mu = rZ(sb().getString(this.nf, "0"));
        }
        this.uS = i2;
    }

    public ah(C0329e c0329e, int i) {
        this(c0329e, i, -1);
    }

    public ah(C0329e c0329e, int i, String[] strArr) {
        super(c0329e);
        this.uU = 2;
        this.uS = -1;
        this.uT = null;
        this.uP = null;
        this.uQ = R.drawable.ic_white_balance_auto_holo_light;
        Resources resources = c0329e.SN().getResources();
        this.mw = R.drawable.ic_slow_shutter_single_icon;
        this.mx = R.drawable.ic_slow_shutter_single_icon_status;
        this.my = R.drawable.ic_slow_shutter_single_icon_select;
        this.uO = resources.getString(R.string.auto);
        this.uU = i;
        this.nf = "pref_slow_shutter_sec_key";
        this.mv = resources.getString(R.string.high_setting_slow_shutter_title);
        int length = strArr.length + 1;
        this.mz = new String[length];
        this.mA = new String[length];
        this.mz[0] = this.uO;
        this.mA[0] = "0";
        for (int i2 = 1; i2 < length; i2++) {
            this.mz[i2] = strArr[i2 - 1];
            this.mA[i2] = strArr[i2 - 1];
        }
        kJ(this.mz, this.mz.length);
        kJ(this.mA, this.mA.length);
        sc();
        this.uV = this.mz.length;
        this.mu = rZ(sb().getString(this.nf, "0"));
    }

    private void sc() {
        if (mY) {
            this.np = this.mz.length - 1;
            this.na = 0;
            this.uN = "  +";
            this.uR = "-  ";
        } else {
            this.np = 0;
            this.na = this.mz.length - 1;
            this.uN = "+  ";
            this.uR = "  -";
        }
        this.mt = this.np;
    }

    public void rR(ah ahVar) {
        this.uT = ahVar;
    }

    private int rZ(String str) {
        for (int i = 0; i < this.uV; i++) {
            if (C0616j.apu(this.mA[i], str)) {
                return i;
            }
        }
        return 0;
    }

    private void rW(Resources resources, int i) {
        this.uO = resources.getString(R.string.auto);
        this.uU = i;
        switch (i) {
            case 0:
                rT(resources);
                return;
            case 1:
                rU(resources);
                return;
            case 2:
                rS(resources);
                return;
            default:
                return;
        }
    }

    private void rS(Resources resources) {
        this.nf = "pref_slow_shutter_sec_key";
        this.mv = resources.getString(R.string.high_setting_slow_shutter_title);
        this.mz = new String[]{this.uO, "1/60000", "1/4000", "1/2000", "1/1000", "1/500", "1/250", "1/125", "1/60", "1/30", "1/15", "1/8", "1/4", "1/2", "01", "02"};
        this.mA = new String[]{"0", "1/60000", "1/4000", "1/2000", "1/1000", "1/500", "1/250", "1/125", "1/60", "1/30", "1/15", "1/8", "1/4", "1/2", "01", "02"};
        kJ(this.mz, this.mz.length);
        kJ(this.mA, this.mA.length);
    }

    private void rT(Resources resources) {
        this.nf = "pref_slow_shutter_min_key";
        this.mv = resources.getString(R.string.high_setting_slow_shutter_title);
        this.mz = new String[21];
        this.mA = new String[21];
        for (int i = 0; i < 21; i++) {
            this.mz[i] = i + "";
            this.mA[i] = i + "";
        }
        kJ(this.mz, this.mz.length);
        kJ(this.mA, this.mA.length);
    }

    private void rU(Resources resources) {
        this.nf = "pref_slow_shutter_sec_key";
        this.mv = resources.getString(R.string.high_setting_slow_shutter_title);
        this.mz = new String[61];
        this.mA = new String[61];
        for (int i = 0; i < 61; i++) {
            this.mz[i] = i + "";
            this.mA[i] = i + "";
        }
        kJ(this.mz, this.mz.length);
        kJ(this.mA, this.mA.length);
    }

    private void rV(int i, int i2, int i3) {
        switch (i) {
            case 0:
                this.nf = "pref_slow_shutter_min_key";
                break;
            case 1:
            case 2:
                this.nf = "pref_slow_shutter_sec_key";
                break;
        }
        this.mz = new String[i3];
        this.mA = new String[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            this.mz[i4] = i4 + "";
            this.mA[i4] = i4 + "";
        }
        this.uS = i2;
        kJ(this.mz, this.mz.length);
        kJ(this.mA, this.mA.length);
    }

    private String sa(String str, String str2) {
        if (C0616j.apu(str, "0") && Integer.parseInt(str2) < this.uS) {
            String km = km(R.string.minutes_and_seconds);
            r1 = new Object[2];
            r1[0] = String.format("%1$02d", new Object[]{Integer.valueOf(0)});
            r1[1] = Integer.valueOf(this.uS);
            return String.format(km, r1);
        } else if (C0616j.apu(str, "0") && C0616j.apu(str2, "0")) {
            return this.uO;
        } else {
            int parseInt;
            if (str2.equals("60")) {
                str2 = "00";
                parseInt = Integer.parseInt(str) + 1;
            } else {
                parseInt = Integer.parseInt(str);
            }
            String km2 = km(R.string.minutes_and_seconds);
            r2 = new Object[2];
            r2[0] = String.format("%1$02d", new Object[]{Integer.valueOf(parseInt)});
            r2[1] = str2;
            return String.format(km2, r2);
        }
    }

    protected void kP(int i, RenderPreference$ActionEvent renderPreference$ActionEvent, boolean z) {
        Editor edit = sb().edit();
        edit.putString(this.nf, this.mA[i]);
        edit.apply();
        this.nb.SU().Sa();
        if (z) {
            jZ();
        }
    }

    protected void kf(Canvas canvas, boolean z) {
        jW((int) (this.mB * 255.0f));
        rY(canvas);
        jX(canvas);
    }

    public int rQ() {
        return this.uU;
    }

    public String kn() {
        String str = this.mz[this.mu];
        if (this.uT != null) {
            if (this.uT.rQ() == 0) {
                return sa(this.uT.kp(), str);
            }
            if (this.uT.rQ() == 1) {
                return sa(str, this.uT.kp());
            }
            return str;
        } else if (this.uS <= -1 || Integer.parseInt(str) >= this.uS) {
            return str;
        } else {
            return this.uS + "";
        }
    }

    private void rX(Canvas canvas, float f) {
        if (this.uT != null) {
            if (this.mu == this.np && this.mH) {
                this.mI.setAlpha(80);
                canvas.drawText(this.uR, this.mF[0], f, this.mI);
            } else if (this.mu != this.np) {
                this.mI.setAlpha((int) (this.mB * 255.0f));
                canvas.drawText(this.uR, this.mF[0], f, this.mI);
            }
        } else if (this.mu == this.np && this.mH) {
            this.uP.setAlpha(80);
            this.uP.draw(canvas);
        } else if (this.mu != this.np) {
            this.uP.setAlpha((int) (this.mB * 255.0f));
            this.uP.draw(canvas);
        }
    }

    private void rY(Canvas canvas) {
        float f;
        canvas.save();
        canvas.drawArc(this.mC, 0.0f, 360.0f, false, this.mD);
        this.mE.setAlpha((int) (this.mB * 75.0f));
        canvas.drawArc(this.mC, -(this.mF[3] + 90.0f), 2.0f * this.mF[3], false, this.mE);
        jY(canvas);
        float f2 = (this.mF[1] - this.mF[2]) - ((float) mG);
        if (mY) {
            f = this.mF[3];
        } else {
            f = -this.mF[3];
        }
        canvas.rotate(f, this.mF[0], this.mF[1]);
        rX(canvas, f2);
        canvas.rotate(f * -2.0f, this.mF[0], this.mF[1]);
        if (this.mu == this.na && this.mH) {
            this.mI.setAlpha(80);
            canvas.drawText(this.uN, this.mF[0], f2, this.mI);
        } else if (this.mu != this.na) {
            this.mI.setAlpha((int) (this.mB * 255.0f));
            canvas.drawText(this.uN, this.mF[0], f2, this.mI);
        }
        canvas.restore();
    }

    public boolean kC(float f, float f2) {
        if (f < this.mJ) {
            this.mK = -this.mF[3];
        } else if (f > this.mL) {
            this.mK = this.mF[3];
        } else {
            this.mK = ka(f - this.mF[0]);
        }
        if (kc(kb())) {
            this.nb.SV();
            kP(this.mu, RenderPreference$ActionEvent.MOVE, false);
        }
        this.mM.ny();
        return false;
    }

    public boolean kA(float f, float f2) {
        if (f < this.mJ) {
            this.mK = -this.mF[3];
        } else if (f > this.mL) {
            this.mK = this.mF[3];
        } else {
            this.mK = ka(f - this.mF[0]);
        }
        kc(kb());
        kP(this.mu, RenderPreference$ActionEvent.DOWN, false);
        this.mH = true;
        if (this.mN) {
            this.mD.setStyle(Style.STROKE);
        }
        kd(true);
        this.mM.ny();
        return false;
    }

    public boolean kF(float f, float f2) {
        kd(false);
        kP(this.mu, RenderPreference$ActionEvent.UP, true);
        this.mH = false;
        this.mK = (-this.mF[3]) + (((float) this.mu) * this.mO);
        if (this.mN) {
            this.mD.setStyle(Style.FILL_AND_STROKE);
        }
        this.mM.ny();
        return false;
    }

    public void ky(Resources resources) {
        if (!this.mX) {
            this.uP = resources.getDrawable(this.uQ);
            super.ky(resources);
        }
    }

    public void kr(float f, float f2, float f3, float f4) {
        super.kr(f, f2, f3, f4);
        this.uP.setBounds((int) this.mF[0], ((((int) this.mF[1]) - ((int) this.mF[2])) - (mP * 2)) - mG, ((int) this.mF[0]) + (mP * 2), (((int) this.mF[1]) - ((int) this.mF[2])) - mG);
        if (mY) {
            Rect bounds = this.uP.getBounds();
            bounds.offset(mP * -2, 0);
            this.uP.setBounds(bounds);
        }
    }

    private SharedPreferences sb() {
        return this.nb.SS();
    }
}
