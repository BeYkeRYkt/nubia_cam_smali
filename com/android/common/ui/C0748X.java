package com.android.common.ui;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.Canvas;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;

public class C0748X extends C0730q {
    private static int[] tp = new int[]{0, 2250, 2500, 2750, 3000, 3250, 3500, 3750, 4000, 4250, 4500, 4750, 5000, 5250, 5500, 5750, 6000, 6250, 6500, 6750, 7000, 7250, 7500, 7750, 8250};
    private String[] tq;

    public C0748X(C0329e c0329e) {
        String str;
        int i = 0;
        super(c0329e);
        Resources resources = c0329e.SN().getResources();
        this.nh = this.nb.SR().tp("pref_camera_whitebalance_key");
        this.nf = this.nh.vd();
        this.mv = this.nh.zq();
        this.mw = R.drawable.ic_white_balance_single_icon;
        this.mx = R.drawable.ic_white_balance_single_icon_status;
        this.my = R.drawable.ic_white_balance_single_icon_select;
        this.nl = R.drawable.ic_white_balance_single_icon_gray;
        this.nd = new int[]{R.drawable.ic_white_balance_auto_holo_light, R.drawable.ic_white_balance_incandescent_holo_light, R.drawable.ic_white_balance_fluorescent_holo_light, R.drawable.ic_white_balance_sunlight_holo_light, R.drawable.ic_white_balance_cloudy_holo_light, R.drawable.ic_white_balance_shadow_holo_light, R.drawable.ic_white_balance_point_measure};
        if (mY) {
            kI(this.nd, this.nd.length);
            this.np = tp.length - 1;
            this.na = 0;
            this.mt = this.np;
        } else {
            this.na = tp.length - 1;
            this.np = 0;
            this.mt = this.np;
        }
        this.tq = resources.getStringArray(R.array.whitebalance_render_enteries);
        qR(resources);
        if (this.nb.SP() == CameraMember.STARTRACK) {
            i = 1;
        }
        String str2 = "auto";
        if (i != 0) {
            this.mt = qS("3500");
            str = "manual-cct";
        } else {
            str = str2;
        }
        str = qT().getString(this.nf, str);
        if (C0616j.apu("auto", str)) {
            this.mu = this.np;
        } else if (C0616j.apu(str, "point-measure")) {
            this.mu = this.na;
        } else if (C0616j.apu(str, "manual-cct")) {
            this.mu = qS(qT().getInt("wb-manual-cct", 3500) + "");
        } else {
            this.mu = this.np;
            this.nh.va(this.mA[this.mu]);
        }
    }

    private int qS(Object obj) {
        for (int i = 0; i < this.mA.length; i++) {
            if (C0616j.apu(this.mA[i], obj)) {
                return i;
            }
        }
        return this.np;
    }

    private void qR(Resources resources) {
        int length = tp.length;
        this.mz = new String[length];
        this.mA = new String[length];
        for (int i = 0; i < length; i++) {
            int i2;
            if (mY) {
                i2 = (length - 1) - i;
            } else {
                i2 = i;
            }
            if (i2 % 4 == 0) {
                this.mz[i] = this.tq[i2 / 4];
            } else {
                this.mz[i] = tp[i2] + "";
            }
            this.mA[i] = tp[i2] + "";
        }
        this.mz[this.np] = resources.getString(R.string.pref_camera_whitebalance_entry_auto);
        this.mA[this.np] = "auto";
        this.mz[this.na] = resources.getString(R.string.pref_camera_whitebalance_entry_point_measure);
        this.mA[this.na] = "point-measure";
    }

    protected void kf(Canvas canvas, boolean z) {
        jW((int) (this.mB * 255.0f));
        canvas.save();
        canvas.drawArc(this.mC, 0.0f, 360.0f, false, this.mD);
        this.mE.setAlpha((int) (this.mB * 75.0f));
        canvas.drawArc(this.mC, -(this.mF[3] + 90.0f), 2.0f * this.mF[3], false, this.mE);
        jY(canvas);
        float f = (this.mF[1] - this.mF[2]) - ((float) mG);
        canvas.rotate(-this.mF[3], this.mF[0], this.mF[1]);
        int length = this.nd.length;
        for (int i = 0; i < length; i++) {
            kj(canvas, f, i);
            canvas.rotate(this.mO * 4.0f, this.mF[0], this.mF[1]);
        }
        canvas.restore();
        jX(canvas);
    }

    protected void kP(int i, RenderPreference$ActionEvent renderPreference$ActionEvent, boolean z) {
        if (i == this.np || i == this.na) {
            this.nh.va(this.mA[i]);
            qU(0);
        } else if (i == 0) {
            this.nh.va("auto");
            qU(0);
        } else {
            int parseInt = Integer.parseInt(this.mA[i]);
            Editor edit = qT().edit();
            edit.putString(this.nf, "manual-cct");
            edit.putInt("wb-manual-cct", parseInt);
            edit.apply();
        }
        this.nb.SU().Rn();
        this.nb.Te().PE(this.mA[i].equalsIgnoreCase("point-measure"));
        kN(renderPreference$ActionEvent);
    }

    protected void kj(Canvas canvas, float f, int i) {
        if (i * 4 != this.mu) {
            this.ne[i].setAlpha(255);
            this.ne[i].draw(canvas);
        } else if (this.mH) {
            this.ne[i].setAlpha(80);
            this.ne[i].draw(canvas);
        }
    }

    public boolean kG() {
        return !C0616j.apu(qT().getString("pref_camera_colorfilter_key", "0"), "0");
    }

    private SharedPreferences qT() {
        return this.nb.SS();
    }

    private void qU(int i) {
        Editor edit = this.nb.SS().edit();
        if (i != 0) {
            edit.putString(this.nf, "manual-cct");
        }
        edit.putInt("wb-manual-cct", i);
        edit.apply();
    }
}
