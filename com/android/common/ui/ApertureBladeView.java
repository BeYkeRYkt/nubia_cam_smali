package com.android.common.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import com.android.camera.C0172c;
import com.android.camera.R;
import com.p010a.C0090a;

public class ApertureBladeView extends View {
    private C0750p mf;
    private Bitmap mg;
    private int mh;
    private Bitmap mi;
    private int mj;
    private int mk;
    private float ml = 5.0f;
    private float mm = 8.0f;
    private float mn = 2.0f;
    private Paint mo;
    private Path mp;
    private PointF[] mq = new PointF[6];
    private int mr;

    public ApertureBladeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C0090a.bvo("ApertureView", "txh new ApertureView");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0172c.aHL);
        this.mr = (int) obtainStyledAttributes.getDimension(2, 5.0f);
        this.mj = obtainStyledAttributes.getColor(0, -16777216);
        this.mh = obtainStyledAttributes.getColor(1, 16777215);
        obtainStyledAttributes.recycle();
        jO();
    }

    private void jO() {
        this.mi = BitmapFactory.decodeResource(getResources(), R.drawable.aperture_blade);
        this.mg = BitmapFactory.decodeResource(getResources(), R.drawable.aperture_circle);
        this.mo = new Paint(6);
        this.mo.setAntiAlias(true);
        for (int i = 0; i < 6; i++) {
            this.mq[i] = new PointF();
        }
        this.mp = new Path();
    }

    protected void onMeasure(int i, int i2) {
        int i3;
        super.onMeasure(i, i2);
        C0090a.bvo("ApertureView", "txh onMeasure");
        int mode = MeasureSpec.getMode(i);
        int mode2 = MeasureSpec.getMode(i2);
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        C0090a.m1e("ApertureView", "txh onMeasure, widthSpecSize = " + size + ", heightSpecSize = " + size2);
        C0090a.bvo("ApertureView", "txh paddX = " + paddingRight + ", paddY = " + paddingBottom);
        if (size - paddingRight < size2 - paddingBottom) {
            i3 = (size - paddingRight) / 2;
        } else {
            i3 = (size2 - paddingBottom) / 2;
        }
        this.mk = i3;
        C0090a.bvo("ApertureView", "txh mCircleRadius = " + this.mk);
        if (mode == Integer.MIN_VALUE && mode2 == Integer.MIN_VALUE) {
            setMeasuredDimension(100, 100);
            this.mk = (100 - paddingRight) / 2;
        } else if (mode == Integer.MIN_VALUE) {
            setMeasuredDimension(100, size2);
            if (100 - paddingRight < size2 - paddingBottom) {
                i3 = (100 - paddingRight) / 2;
            } else {
                i3 = (size2 - paddingBottom) / 2;
            }
            this.mk = i3;
        } else if (mode2 == Integer.MIN_VALUE) {
            setMeasuredDimension(size, 100);
            if (size - paddingRight < 100 - paddingBottom) {
                i3 = (size - paddingRight) / 2;
            } else {
                i3 = (100 - paddingBottom) / 2;
            }
            this.mk = i3;
        }
        if (this.mk < 1) {
            this.mk = 1;
        }
        this.mp.reset();
        this.mp.addCircle(0.0f, 0.0f, (float) this.mk, Direction.CW);
    }

    public void onDraw(Canvas canvas) {
        C0090a.bvo("ApertureView", "txh onDraw, getWidth = " + getWidth() + ", getHeight() = " + getHeight());
        canvas.save();
        canvas.drawBitmap(this.mg, 0.0f, 0.0f, this.mo);
        jN();
        canvas.translate((float) (getWidth() / 2), (float) (getHeight() / 2));
        canvas.rotate(((this.mm - this.ml) * 30.0f) / (this.mm - this.mn));
        canvas.clipPath(this.mp);
        canvas.drawColor(this.mh);
        for (int i = 0; i < 6; i++) {
            canvas.save();
            canvas.translate(this.mq[i].x, this.mq[i].y);
            canvas.rotate((float) ((-i) * 60));
            canvas.translate(0.0f, (float) (-this.mi.getHeight()));
            canvas.drawBitmap(this.mi, 0.0f, 0.0f, this.mo);
            canvas.restore();
        }
        canvas.restore();
    }

    private void jN() {
        if (this.mk - this.mr <= 0) {
            C0090a.m1e("ApertureView", "the size of view is too small and Space is too large");
            return;
        }
        float f = (((this.mm + this.mn) - this.ml) / this.mm) * ((float) (this.mk - this.mr));
        this.mq[0].x = f / 2.0f;
        this.mq[0].y = 0.866025f * f;
        this.mq[1].x = f;
        this.mq[1].y = 0.0f;
        this.mq[2].x = this.mq[0].x;
        this.mq[2].y = -this.mq[0].y;
        this.mq[3].x = -this.mq[2].x;
        this.mq[3].y = this.mq[2].y;
        this.mq[4].x = -this.mq[1].x;
        this.mq[4].y = this.mq[1].y;
        this.mq[5].x = -this.mq[0].x;
        this.mq[5].y = this.mq[0].y;
    }

    public void setBackgroundColor(int i) {
        this.mh = i;
    }

    public void jR(float f) {
        this.mm = f;
    }

    public void jS(float f) {
        this.mn = f;
    }

    public void jQ(float f) {
        if (f > this.mm) {
            f = this.mm;
        }
        if (f < this.mn) {
            f = this.mn;
        }
        if (this.ml != f) {
            this.ml = f;
            invalidate();
            if (this.mf != null) {
                this.mf.jU(f);
            }
        }
    }

    public void jP(C0750p c0750p) {
        this.mf = c0750p;
    }

    public void jT(int i) {
        float f = ((((float) i) / 100.0f) * (this.mm - this.mn)) + this.mn;
        C0090a.bvo("ApertureView", "txh progress = " + i + ", apert = " + f);
        jQ(f);
    }
}
