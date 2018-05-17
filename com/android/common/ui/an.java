package com.android.common.ui;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.animation.AnimationUtils;
import com.android.camera.R;
import com.android.common.C0534f;
import com.android.common.C0698q;

public class an {
    private float wQ = 0.0f;
    private float wR = 0.0f;
    private boolean wS = false;
    private long wT = 0;
    private long wU = 0;
    private Bitmap wV;
    private Bitmap wW;
    private Bitmap wX;
    private boolean wY = false;
    private float wZ = 0.0f;
    private C0534f xa;
    private C0698q xb;
    private C0698q xc;
    float xd;
    float xe;
    float xf;
    private boolean xg = true;
    private Boolean xh = Boolean.valueOf(false);
    float xi;
    float xj;
    private Bitmap xk;
    private Bitmap xl;
    private float xm = 0.0f;
    private float xn = 0.0f;
    private Paint xo = new Paint();

    public an(Resources resources) {
        sZ(resources);
        this.xd = resources.getDimension(R.dimen.dimens_54);
        this.xf = resources.getDimension(R.dimen.dimens_14);
        this.xe = resources.getDimension(R.dimen.dimens_10);
        this.xj = (this.xf - this.xe) / 2.0f;
        this.xi = (this.xd - this.xe) / 2.0f;
        this.xb = new C0698q(5, 0.1f);
        this.xb.aoG(new bp(this));
        this.xc = new C0698q(2, 0.1f);
        this.xc.aoG(new bq(this));
        this.xa = new C0534f(10, 66.0f, -66.0f, 45);
        this.xa.aoG(new br(this));
    }

    public void sX(float f, boolean z) {
        this.wS = z;
        this.xb.aoK(f);
    }

    public void tb(float f, boolean z) {
        float abs = Math.abs(this.wR - f);
        if (abs >= 1.0f && abs <= 359.0f) {
            this.wR = f;
            this.xn = f;
            this.xg = z;
            if (this.xg) {
                this.xm = this.wZ;
                this.wU = AnimationUtils.currentAnimationTimeMillis();
                abs = this.xn - this.wZ;
                if ((0.0f >= abs || abs >= 180.0f) && abs >= -180.0f) {
                    this.wY = false;
                } else {
                    this.wY = true;
                }
                if (Math.abs(abs) > 180.0f) {
                    abs = 360.0f - Math.abs(abs);
                }
                this.wT = ((long) ((Math.abs(abs) * 1000.0f) / 450.0f)) + this.wU;
            } else {
                this.wZ = this.xn;
            }
        }
    }

    public void sY(float f) {
        this.xc.aoK(f);
    }

    public void ta(float f) {
        if (Math.abs(this.wQ - f) >= 1.0f) {
            this.wQ = f;
        }
    }

    public boolean draw(Canvas canvas) {
        boolean z = false;
        if (!this.xh.booleanValue()) {
            return true;
        }
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        if (this.wZ != this.xn) {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            if (currentAnimationTimeMillis < this.wT) {
                int i = (int) (currentAnimationTimeMillis - this.wU);
                float f = this.xm;
                if (!this.wY) {
                    i = -i;
                }
                this.wZ = ((((float) ((i * 450) / 1000)) + f) + 360.0f) % 360.0f;
                z = true;
            } else {
                this.wZ = this.xn;
            }
        }
        this.xo.reset();
        canvas.drawBitmap(this.wX, (float) ((width - this.wX.getWidth()) / 2), (float) ((height - this.wX.getHeight()) / 2), this.xo);
        this.xo.setFilterBitmap(true);
        canvas.save();
        canvas.rotate(this.wZ, (float) (width / 2), (float) (height / 2));
        if (Math.abs(this.wZ - 0.0f) <= 3.0f || Math.abs(this.wZ - 90.0f) <= 3.0f || Math.abs(this.wZ - 180.0f) <= 3.0f || Math.abs(this.wZ - 270.0f) <= 3.0f || Math.abs(this.wZ - 360.0f) <= 3.0f) {
            canvas.drawBitmap(this.wV, (float) ((width - this.wV.getWidth()) / 2), (float) ((height - this.wV.getHeight()) / 2), this.xo);
        } else {
            canvas.drawBitmap(this.wW, (float) ((width - this.wW.getWidth()) / 2), (float) ((height - this.wW.getHeight()) / 2), this.xo);
        }
        float f2 = this.wQ;
        if (f2 > 45.0f) {
            f2 = this.wQ - 90.0f;
        } else if (f2 < -45.0f) {
            f2 = this.wQ + 90.0f;
        }
        f2 = Math.max(-1.0f, Math.min(f2 / 45.0f, 1.0f)) * this.xi;
        canvas.translate(0.0f, f2);
        if (Math.abs(f2) <= this.xj) {
            canvas.drawBitmap(this.xk, (float) ((width - this.xk.getWidth()) / 2), (float) ((height - this.xk.getHeight()) / 2), this.xo);
        } else {
            canvas.drawBitmap(this.xl, (float) ((width - this.xl.getWidth()) / 2), (float) ((height - this.xl.getHeight()) / 2), this.xo);
        }
        canvas.restore();
        return z;
    }

    private void sZ(Resources resources) {
        new bs(this, resources).start();
    }
}
