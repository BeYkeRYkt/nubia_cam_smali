package com.android.common.ui;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.RectF;
import com.android.camera.R;

public class C0728B {
    private long mStartTime;
    private int mState = 0;
    private RectF pm = new RectF();
    private boolean pn = false;
    private VideoAnimation$Color po = VideoAnimation$Color.RED;
    private float pp;
    private Boolean pq = Boolean.valueOf(false);
    private float pr;
    private Bitmap ps;
    private Bitmap pt;
    private float pu;
    private boolean pv = false;
    private Bitmap pw;
    private Bitmap px;
    private Paint py = new Paint();
    private Path pz = new Path();

    public C0728B(Resources resources) {
        mK(resources);
        this.pp = resources.getDimension(R.dimen.dimens_54);
        this.pu = resources.getDimension(R.dimen.dimens_24);
        this.pr = this.pp / this.pu;
    }

    public void mJ(VideoAnimation$Color videoAnimation$Color) {
        this.po = videoAnimation$Color;
    }

    public void mI(int i, boolean z) {
        if (this.mState != i) {
            this.mState = i;
            this.pn = z;
            if (this.pn) {
                this.pv = true;
            } else {
                this.mStartTime = 0;
                this.pv = false;
            }
        }
    }

    public void cancel() {
        this.mStartTime = 0;
        this.pn = false;
        this.pv = false;
    }

    public boolean draw(Canvas canvas) {
        if (!this.pq.booleanValue()) {
            return true;
        }
        Bitmap bitmap;
        Bitmap bitmap2;
        boolean z;
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        if (this.pv) {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - this.mStartTime >= 200) {
                this.mStartTime = System.currentTimeMillis();
            } else {
                this.mStartTime = currentTimeMillis - (200 - (currentTimeMillis - this.mStartTime));
            }
            this.pv = false;
        }
        if (VideoAnimation$Color.WHITE == this.po) {
            bitmap = this.pw;
            bitmap2 = this.px;
        } else {
            bitmap = this.ps;
            bitmap2 = this.pt;
        }
        long currentTimeMillis2 = System.currentTimeMillis();
        if (currentTimeMillis2 - this.mStartTime < 200) {
            float f = ((float) (currentTimeMillis2 - this.mStartTime)) / 200.0f;
            if (this.mState == 1) {
                f = 1.0f - f;
            }
            float f2 = ((this.pr - 1.0f) * f) + 1.0f;
            float width2 = ((float) bitmap2.getWidth()) * f2;
            float height2 = ((float) bitmap2.getHeight()) * f2;
            this.pm.set(0.0f, 0.0f, width2, height2);
            this.pm.offsetTo((((float) width) - width2) / 2.0f, (((float) height) - height2) / 2.0f);
            f2 *= this.pu;
            double sqrt = Math.sqrt(Math.pow((double) f2, 2.0d) * 2.0d);
            sqrt -= (sqrt - ((double) f2)) * ((double) f);
            this.pz.reset();
            this.pz.addCircle((float) (width / 2), (float) (height / 2), (float) (sqrt / 2.0d), Direction.CW);
            canvas.save();
            canvas.clipPath(this.pz);
            canvas.drawBitmap(bitmap2, null, this.pm, this.py);
            canvas.restore();
            z = true;
        } else if (this.mState == 0) {
            canvas.drawBitmap(bitmap, (float) ((width - bitmap.getWidth()) / 2), (float) ((height - bitmap.getHeight()) / 2), this.py);
            z = false;
        } else {
            canvas.drawBitmap(bitmap2, (float) ((width - bitmap2.getWidth()) / 2), (float) ((height - bitmap2.getHeight()) / 2), this.py);
            z = false;
        }
        return z;
    }

    private void mK(Resources resources) {
        new aP(this, resources).start();
    }
}
