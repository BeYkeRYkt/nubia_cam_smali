package com.android.common.ui;

import android.content.res.Resources;
import android.graphics.Canvas;
import com.android.camera.R;
import com.android.common.appService.C0329e;

public class ao extends C0730q {
    private int xp = 153;
    boolean xq = false;
    private String xr;
    private int[] xs = new int[2];

    public ao(C0329e c0329e) {
        super(c0329e);
        Resources resources = c0329e.SN().getResources();
        this.nf = "b_shutter";
        this.xr = "";
        this.mv = resources.getString(R.string.high_setting_slow_shutter_title);
        this.mw = R.drawable.ic_bshutter_single_icon;
        this.mx = R.drawable.ic_slow_shutter_single_icon_status;
        this.my = R.drawable.ic_bshutter_single_icon_select;
    }

    public void draw(Canvas canvas) {
        if (ku()) {
            this.mI.setAlpha((int) (((Float) this.mV.getAnimatedValue()).floatValue() * ((float) this.xp)));
            canvas.drawText(this.mv + "   " + kn(), (float) this.xs[0], (float) this.xs[1], this.mI);
        } else if (this.mZ) {
            this.mI.setAlpha(this.xp);
            canvas.drawText(this.mv + "   " + kn(), (float) this.xs[0], (float) this.xs[1], this.mI);
        }
    }

    protected void kg(Canvas canvas) {
        canvas.save();
        float floatValue = ((Float) this.no.getAnimatedValue()).floatValue();
        jW((int) (this.mB * 255.0f));
        if (this.xq) {
            canvas.rotate(floatValue, this.mF[0], this.mF[1]);
            this.nm.draw(canvas);
        } else {
            canvas.rotate(floatValue, this.mF[0], this.mF[1]);
            this.nj.draw(canvas);
        }
        canvas.restore();
    }

    public boolean kG() {
        return false;
    }

    public void kx(int i, int i2, int i3, int i4) {
        super.kx(i, i2, i3, i4);
        int i5 = i4 - HighSettingLayout.ql;
        this.nj.setBounds(HighSettingLayout.qk, i5 - HighSettingLayout.qk, HighSettingLayout.qk * 3, HighSettingLayout.qk + i5);
        this.nm.setBounds(HighSettingLayout.qk, i5 - HighSettingLayout.qk, HighSettingLayout.qk * 3, i5 + HighSettingLayout.qk);
        this.xs[0] = (i3 - i) / 2;
        this.xs[1] = i4 - 120;
    }

    protected void kP(int i, RenderPreference$ActionEvent renderPreference$ActionEvent, boolean z) {
    }

    protected void jW(int i) {
        this.nj.setAlpha(i);
        this.nm.setAlpha(i);
    }

    public String kn() {
        return this.nb.Ux();
    }

    public String ko() {
        return this.mv;
    }

    public void kr(float f, float f2, float f3, float f4) {
    }

    public boolean kA(float f, float f2) {
        return true;
    }

    public boolean kC(float f, float f2) {
        return true;
    }

    public boolean kF(float f, float f2) {
        return true;
    }

    public void kH(boolean z) {
        this.xq = false;
        kz(this.nf, "off");
    }

    public boolean kt() {
        return !this.xq;
    }

    public void ky(Resources resources) {
        if (!this.mX) {
            this.nj = resources.getDrawable(this.mw);
            this.nm = resources.getDrawable(this.my);
            this.mX = true;
        }
    }
}
