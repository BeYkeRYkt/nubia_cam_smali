package com.android.common.ui;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.android.camera.R;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.custom.C0421M;

public class C0749Z extends C0730q {
    private Drawable ud = null;
    private int ue;

    public C0749Z(C0329e c0329e) {
        super(c0329e);
        this.nb = c0329e;
        Resources resources = c0329e.SN().getResources();
        this.nh = this.nb.SR().tp("pref_camera_iso_key");
        this.nf = this.nh.vd();
        this.mu = this.nh.uW(this.nh.tw());
        this.mv = this.nh.zq();
        this.mw = R.drawable.ic_iso_single_icon;
        this.mx = R.drawable.ic_iso_single_icon_status;
        this.my = R.drawable.ic_iso_single_icon_select;
        this.nl = R.drawable.ic_iso_single_icon_gray;
        this.ue = R.drawable.ic_white_balance_auto_holo_light;
        rx(resources);
        if (mY) {
            this.np = this.mA.length - 1;
            this.na = 0;
            this.mt = this.np;
            this.mu = (this.mA.length - 1) - this.mu;
            return;
        }
        this.np = 0;
        this.na = this.mA.length - 1;
        this.mt = this.np;
    }

    private void rx(Resources resources) {
        int uW;
        CharSequence[] vb = this.nh.vb();
        CharSequence[] uX = this.nh.uX();
        int length = vb.length;
        if (!(C0421M.dC().dD().cP() || this.nb.SP() == CameraMember.PRO)) {
            uW = this.nh.uW("ISO3200");
            if (uW == -1) {
                uW = this.nh.uW("3200");
            }
            if (uW != -1) {
                length = uW + 1;
            }
        }
        this.mz = new String[length];
        this.mA = new String[length];
        for (int i = 0; i < length; i++) {
            if (mY) {
                uW = (length - 1) - i;
            } else {
                uW = i;
            }
            this.mz[i] = vb[uW].toString();
            this.mA[i] = uX[uW].toString();
        }
    }

    public void ky(Resources resources) {
        if (!this.mX) {
            this.ud = resources.getDrawable(this.ue);
            super.ky(resources);
        }
    }

    public boolean kG() {
        return this.nb.SY().tx();
    }

    public void kr(float f, float f2, float f3, float f4) {
        super.kr(f, f2, f3, f4);
        this.ud.setBounds((int) this.mF[0], ((((int) this.mF[1]) - ((int) this.mF[2])) - (mP * 2)) - mG, ((int) this.mF[0]) + (mP * 2), (((int) this.mF[1]) - ((int) this.mF[2])) - mG);
        if (mY) {
            Rect bounds = this.ud.getBounds();
            bounds.offset(mP * -2, 0);
            this.ud.setBounds(bounds);
        }
    }

    protected void kj(Canvas canvas, float f, int i) {
        if (i == this.np) {
            if (i != this.mu) {
                this.ud.setAlpha(255);
                this.ud.draw(canvas);
            } else if (this.mH) {
                this.ud.setAlpha(80);
                this.ud.draw(canvas);
            }
        } else if (i == this.na) {
            float measureText = this.mI.measureText(this.mz[i]) / 2.0f;
            if (mY) {
                measureText = -measureText;
            }
            if (i != this.mu) {
                this.mI.setAlpha((int) (this.mB * 255.0f));
                canvas.drawText(this.mz[i], this.mF[0] - measureText, f, this.mI);
            } else if (this.mH) {
                this.mI.setAlpha(80);
                canvas.drawText(this.mz[i], this.mF[0] - measureText, f, this.mI);
            }
        }
    }
}
