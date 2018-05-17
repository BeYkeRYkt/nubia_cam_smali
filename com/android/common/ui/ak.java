package com.android.common.ui;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.RectF;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import com.android.camera.R;

public class ak {
    private int mState = 0;
    private Path vf = new Path();
    private AccelerateInterpolator vg = new AccelerateInterpolator();
    private float vh = 0.0f;
    private float vi = 0.0f;
    private DecelerateInterpolator vj = new DecelerateInterpolator();
    private float vk;
    private float vl;
    Boolean vm = Boolean.valueOf(false);
    private long vn = 0;
    Bitmap vo;
    Bitmap vp;
    Bitmap vq;
    private long vr = 0;
    private long vs = 0;
    private RectF vt = new RectF();
    private Paint vu = new Paint();
    private Path vv = new Path();
    private float vw = 0.0f;

    public ak(Resources resources) {
        this.vk = resources.getDimension(R.dimen.dimens_54);
        this.vl = resources.getDimension(R.dimen.dimens_64);
        sr(resources);
    }

    public Path sm(int i, int i2) {
        this.vf.reset();
        this.vf.addCircle(((float) i) / 2.0f, ((float) i2) / 2.0f, ((this.vk / 2.0f) * sp(i, i2)) + 0.5f, Direction.CW);
        return this.vf;
    }

    public boolean draw(Canvas canvas) {
        if (!this.vm.booleanValue()) {
            return true;
        }
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        if (width == 0 || height == 0) {
            return true;
        }
        sn();
        if (sq(width, height)) {
            ss(width, height);
        }
        this.vu.reset();
        this.vu.setAntiAlias(true);
        this.vu.setFilterBitmap(true);
        canvas.drawBitmap(this.vp, ((float) (width - this.vp.getWidth())) / 2.0f, ((float) (height - this.vp.getHeight())) / 2.0f, this.vu);
        so(canvas, (float) width, (float) height);
        return true;
    }

    private void ss(int i, int i2) {
        float sp = sp(i, i2);
        this.vq = Bitmap.createScaledBitmap(this.vq, (int) (((float) this.vq.getWidth()) * sp), (int) (((float) this.vq.getHeight()) * sp), true);
        this.vp = Bitmap.createScaledBitmap(this.vp, (int) (((float) this.vp.getWidth()) * sp), (int) (((float) this.vp.getHeight()) * sp), true);
        this.vo = Bitmap.createScaledBitmap(this.vo, (int) (((float) this.vo.getWidth()) * sp), (int) (sp * ((float) this.vo.getHeight())), true);
    }

    private boolean sq(int i, int i2) {
        return i < this.vq.getWidth() || i2 < this.vq.getHeight();
    }

    private float sp(int i, int i2) {
        if (((float) i) < this.vl || ((float) i2) < this.vl) {
            return Math.min(((float) i) / this.vl, ((float) i2) / this.vl);
        }
        return 1.0f;
    }

    private void sr(Resources resources) {
        new bk(this, resources).start();
    }

    private void sn() {
        long currentTimeMillis = System.currentTimeMillis();
        long abs = Math.abs(currentTimeMillis - this.vn);
        this.vn = currentTimeMillis;
        if (abs > 1000) {
            abs = 0;
            this.vr = currentTimeMillis;
            this.vs = currentTimeMillis;
        }
        if (this.mState == 0) {
            if (((float) (currentTimeMillis - this.vr)) > 800.0f) {
                this.mState = 1;
                this.vs = currentTimeMillis;
            } else {
                this.vw = (this.vj.getInterpolation(Math.min(1.0f, ((float) (currentTimeMillis - this.vr)) / 800.0f)) * 300.0f) + 10.0f;
            }
            this.vi = ((float) ((abs * 190) / 1000)) + this.vi;
            this.vh = this.vi + this.vw;
        } else if (this.mState == 1) {
            if (((float) (currentTimeMillis - this.vs)) > 800.0f) {
                this.mState = 0;
                this.vr = currentTimeMillis;
            } else {
                this.vw = (this.vg.getInterpolation(Math.max(0.0f, (800.0f - ((float) (currentTimeMillis - this.vs))) / 800.0f)) * 300.0f) + 10.0f;
            }
            this.vh = ((float) ((abs * 190) / 1000)) + this.vh;
            this.vi = this.vh - this.vw;
        }
    }

    private void so(Canvas canvas, float f, float f2) {
        canvas.save();
        this.vv.reset();
        this.vt.set(0.0f, 0.0f, f, f2);
        this.vv.addArc(this.vt, this.vi, this.vh - this.vi);
        this.vv.lineTo(f / 2.0f, f2 / 2.0f);
        this.vv.close();
        canvas.clipPath(this.vv);
        canvas.drawBitmap(this.vq, (f - ((float) this.vq.getWidth())) / 2.0f, (f2 - ((float) this.vq.getHeight())) / 2.0f, this.vu);
        canvas.restore();
        canvas.save();
        canvas.rotate(this.vi + 90.0f, f / 2.0f, f2 / 2.0f);
        canvas.drawBitmap(this.vo, (f - ((float) this.vo.getWidth())) / 2.0f, (f2 - ((float) this.vo.getHeight())) / 2.0f, this.vu);
        canvas.restore();
        canvas.save();
        canvas.rotate(this.vh + 90.0f, f / 2.0f, f2 / 2.0f);
        canvas.drawBitmap(this.vo, (f - ((float) this.vo.getWidth())) / 2.0f, (f2 - ((float) this.vo.getHeight())) / 2.0f, this.vu);
        canvas.restore();
    }
}
