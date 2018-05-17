package com.android.common.ui;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.animation.AnimationUtils;
import com.android.camera.R;

public class C0736L {
    private int rJ = -452984832;
    private long rK = 0;
    private long rL = 0;
    Bitmap rM;
    private boolean rN = false;
    private int rO = 0;
    private boolean rP = true;
    Bitmap rQ;
    Boolean rR = Boolean.valueOf(false);
    Bitmap rS;
    private int rT = 0;
    Bitmap rU;
    private int rV = 0;
    private int rW = 0;
    Rect rX = new Rect();
    private float rY;
    private RectF rZ = new RectF();
    private Paint sa = new Paint();
    private Path sb = new Path();

    public C0736L(Resources resources) {
        pF(resources);
        this.rY = resources.getDimension(R.dimen.dimens_18);
    }

    public void pC(int i, boolean z) {
        boolean z2 = false;
        this.rT = i;
        if (this.rT > 100) {
            this.rT = 100;
        }
        this.rW = (this.rT * 360) / 100;
        this.rP = z;
        if (this.rP) {
            this.rV = this.rO;
            this.rL = AnimationUtils.currentAnimationTimeMillis();
            int i2 = this.rW - this.rO;
            if (i2 >= 0) {
                z2 = true;
            }
            this.rN = z2;
            this.rK = ((long) ((Math.abs(i2) * 1000) / 270)) + this.rL;
            return;
        }
        this.rO = this.rW;
    }

    public boolean pD() {
        return 360 == this.rO;
    }

    public boolean draw(Canvas canvas) {
        if (!this.rR.booleanValue()) {
            return true;
        }
        boolean z;
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        if (this.rO != this.rW) {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            if (currentAnimationTimeMillis < this.rK) {
                int i = (int) (currentAnimationTimeMillis - this.rL);
                int i2 = this.rV;
                if (!this.rN) {
                    i = -i;
                }
                this.rO = ((i * 270) / 1000) + i2;
                z = true;
            } else {
                this.rO = this.rW;
                z = false;
            }
        } else {
            z = false;
        }
        this.sa.reset();
        this.sa.setAntiAlias(true);
        this.sa.setFilterBitmap(true);
        canvas.drawBitmap(this.rM, (float) ((width - this.rM.getWidth()) / 2), (float) ((height - this.rM.getHeight()) / 2), this.sa);
        this.sa.setColor(this.rJ);
        this.sa.setTextSize(this.rY);
        String str = ((this.rO * 100) / 360) + "%";
        this.sa.getTextBounds(str, 0, str.length(), this.rX);
        canvas.drawText(str, (float) ((width / 2) - (this.rX.width() / 2)), (float) ((height / 2) + (this.rX.height() / 2)), this.sa);
        canvas.drawBitmap(this.rQ, (float) ((width - this.rQ.getWidth()) / 2), (float) ((height - this.rQ.getHeight()) / 2), this.sa);
        pE(canvas, width, height);
        return z;
    }

    private void pF(Resources resources) {
        new aX(this, resources).start();
    }

    private void pE(Canvas canvas, int i, int i2) {
        if (this.rO != 0) {
            canvas.save();
            this.sb.reset();
            this.rZ.set(-1.0f, -1.0f, (float) (i + 2), (float) (i2 + 2));
            this.sb.addArc(this.rZ, -90.0f, (float) this.rO);
            this.sb.lineTo((float) (i / 2), (float) (i2 / 2));
            this.sb.close();
            canvas.clipPath(this.sb);
            canvas.drawBitmap(this.rU, (float) ((i - this.rU.getWidth()) / 2), (float) ((i2 - this.rU.getHeight()) / 2), this.sa);
            canvas.restore();
            canvas.save();
            canvas.rotate((float) this.rO, (float) (i / 2), (float) (i2 / 2));
            canvas.drawBitmap(this.rS, (float) ((i - this.rS.getWidth()) / 2), (float) ((i2 - this.rS.getHeight()) / 2), this.sa);
            canvas.restore();
        }
    }
}
