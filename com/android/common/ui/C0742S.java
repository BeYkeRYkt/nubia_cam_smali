package com.android.common.ui;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.animation.AnimationUtils;

public class C0742S {
    private float sD = 0.0f;
    private long sE = 0;
    private long sF = 0;
    private boolean sG = false;
    private Bitmap sH;
    private float sI = 0.0f;
    private float sJ = 0.0f;
    private boolean sK = true;
    private Boolean sL = Boolean.valueOf(false);
    private Paint sM = new Paint();
    private float sN = 0.0f;
    private float sO = 0.0f;

    public C0742S(Resources resources) {
        qq(resources);
    }

    public void qo(float f) {
        if (Math.abs(this.sD - f) >= 1.0f) {
            this.sD = f;
        }
    }

    public void qp(float f, boolean z) {
        this.sJ = f;
        this.sO = f;
        this.sK = z;
        if (this.sK) {
            this.sN = this.sI;
            this.sF = AnimationUtils.currentAnimationTimeMillis();
            float f2 = this.sO - this.sI;
            if ((0.0f >= f2 || f2 >= 180.0f) && f2 >= -180.0f) {
                this.sG = false;
            } else {
                this.sG = true;
            }
            if (Math.abs(f2) > 180.0f) {
                f2 = 360.0f - Math.abs(f2);
            }
            this.sE = ((long) ((Math.abs(f2) * 1000.0f) / 720.0f)) + this.sF;
            return;
        }
        this.sI = this.sO;
    }

    public boolean draw(Canvas canvas) {
        boolean z = false;
        if (!this.sL.booleanValue()) {
            return true;
        }
        float f;
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        if (this.sI != this.sO) {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            if (currentAnimationTimeMillis < this.sE) {
                int i = (int) (currentAnimationTimeMillis - this.sF);
                f = this.sN;
                if (!this.sG) {
                    i = -i;
                }
                this.sI = ((((float) ((i * 720) / 1000)) + f) + 360.0f) % 360.0f;
                z = true;
            } else {
                this.sI = this.sO;
            }
        }
        f = this.sI;
        if (this.sD < 0.0f) {
            f = 360.0f - f;
            if (f < 180.0f) {
                f += 180.0f;
            } else {
                f -= 180.0f;
            }
        }
        this.sM.setFilterBitmap(true);
        canvas.save();
        canvas.rotate(f, (float) (width / 2), (float) (height / 2));
        canvas.drawBitmap(this.sH, (float) ((width - this.sH.getWidth()) / 2), (float) ((height - this.sH.getHeight()) / 2), this.sM);
        canvas.restore();
        return z;
    }

    private void qq(Resources resources) {
        new bd(this, resources).start();
    }
}
