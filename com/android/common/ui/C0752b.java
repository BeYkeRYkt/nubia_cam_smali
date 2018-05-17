package com.android.common.ui;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;

public class C0752b {
    long iA = 0;
    Paint iB = new Paint();
    Bitmap iv;
    long iw = 0;
    Boolean ix = Boolean.valueOf(false);
    boolean iy = false;
    Bitmap iz;

    public C0752b(Resources resources) {
        gI(resources);
    }

    public void gJ() {
        this.iy = true;
        this.iw = System.currentTimeMillis();
    }

    public void gK() {
        this.iy = false;
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.iw < 100) {
            this.iA = currentTimeMillis - ((this.iw + 100) - currentTimeMillis);
        } else {
            this.iA = System.currentTimeMillis();
        }
    }

    public boolean draw(Canvas canvas) {
        if (!this.ix.booleanValue()) {
            return true;
        }
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        long currentTimeMillis = System.currentTimeMillis();
        if (gH(width, height)) {
            gL(width, height);
        }
        boolean z = false;
        float f;
        if (this.iy) {
            f = ((float) (currentTimeMillis - this.iw)) / 100.0f;
            if (f >= 1.0f) {
                f = 1.0f;
            } else {
                z = true;
            }
            this.iB.setFilterBitmap(true);
            canvas.save();
            canvas.scale(1.0f - (0.19999999f * f), 1.0f - (f * 0.19999999f), (float) (width / 2), (float) (height / 2));
            canvas.drawBitmap(this.iv, (float) ((width - this.iv.getWidth()) / 2), (float) ((height - this.iv.getHeight()) / 2), this.iB);
            canvas.restore();
        } else if (this.iy || currentTimeMillis - this.iA >= 100) {
            canvas.drawBitmap(this.iv, (float) ((width - this.iv.getWidth()) / 2), (float) ((height - this.iv.getHeight()) / 2), this.iB);
        } else {
            f = ((float) (currentTimeMillis - this.iA)) / 100.0f;
            this.iB.setFilterBitmap(true);
            canvas.save();
            canvas.scale((0.19999999f * f) + 0.8f, (f * 0.19999999f) + 0.8f, (float) (width / 2), (float) (height / 2));
            canvas.drawBitmap(this.iv, (float) ((width - this.iv.getWidth()) / 2), (float) ((height - this.iv.getHeight()) / 2), this.iB);
            canvas.restore();
            z = true;
        }
        this.iB.reset();
        canvas.drawBitmap(this.iz, (float) ((width - this.iz.getWidth()) / 2), (float) ((height - this.iz.getHeight()) / 2), this.iB);
        return z;
    }

    private void gL(int i, int i2) {
        float min = Math.min(((float) i) / ((float) this.iv.getWidth()), ((float) i2) / ((float) this.iv.getHeight()));
        this.iv = Bitmap.createScaledBitmap(this.iv, (int) (((float) this.iv.getWidth()) * min), (int) (((float) this.iv.getHeight()) * min), true);
        this.iz = Bitmap.createScaledBitmap(this.iz, (int) (((float) this.iz.getWidth()) * min), (int) (min * ((float) this.iz.getHeight())), true);
    }

    private boolean gH(int i, int i2) {
        return i < this.iv.getWidth() || i2 < this.iv.getHeight();
    }

    private void gI(Resources resources) {
        new ap(this, resources).start();
    }
}
