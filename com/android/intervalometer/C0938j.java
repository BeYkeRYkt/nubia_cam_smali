package com.android.intervalometer;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint.Style;
import com.android.camera.R;
import com.android.common.appService.C0329e;
import com.android.common.ui.C0730q;
import com.android.common.ui.RenderPreference$ActionEvent;

public class C0938j extends C0730q {
    private int aOX = 61;

    public C0938j(C0329e c0329e) {
        super(c0329e);
        Resources resources = c0329e.SN().getResources();
        this.nf = "pref_camera_intervalometer_interval";
        this.mt = 30;
        this.mv = resources.getString(R.string.intervalometer_title);
        this.mw = R.drawable.ic_focus_single_icon;
        this.mx = R.drawable.ic_focus_single_icon_status;
        this.my = R.drawable.ic_focus_single_icon_select;
        bfl(resources);
        this.mu = this.nb.SS().getInt(this.nf, 30000) / 1000;
    }

    private void bfl(Resources resources) {
        this.mz = new String[this.aOX];
        this.mA = new String[this.aOX];
        for (int i = 0; i < this.aOX; i++) {
            this.mz[i] = i + "";
            this.mA[i] = i + "";
        }
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    protected void kf(Canvas canvas, boolean z) {
        jW((int) (this.mB * 255.0f));
        bfm(canvas);
        jX(canvas);
    }

    private void bfm(Canvas canvas) {
        canvas.save();
        canvas.drawArc(this.mC, 0.0f, 360.0f, false, this.mD);
        this.mE.setAlpha((int) (this.mB * 75.0f));
        canvas.drawArc(this.mC, -(this.mF[3] + 90.0f), this.mF[3] * 2.0f, false, this.mE);
        jY(canvas);
        float f = (this.mF[1] - this.mF[2]) - ((float) mG);
        canvas.rotate(-this.mF[3], this.mF[0], this.mF[1]);
        if (this.mu == 0 && this.mH) {
            this.mI.setAlpha(80);
            canvas.drawText(" -", this.mF[0], f, this.mI);
        } else if (this.mu != 0) {
            this.mI.setAlpha((int) (this.mB * 255.0f));
            canvas.drawText(" -", this.mF[0], f, this.mI);
        }
        canvas.rotate(this.mF[3] * 2.0f, this.mF[0], this.mF[1]);
        if (this.mu == this.aOX - 1 && this.mH) {
            this.mI.setAlpha(80);
            canvas.drawText("+ ", this.mF[0], f, this.mI);
        } else if (this.mu != this.aOX - 1) {
            this.mI.setAlpha((int) (this.mB * 255.0f));
            canvas.drawText("+ ", this.mF[0], f, this.mI);
        }
        canvas.restore();
    }

    protected void kP(int i, RenderPreference$ActionEvent renderPreference$ActionEvent, boolean z) {
        kz(this.nf, this.mA[i]);
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
}
