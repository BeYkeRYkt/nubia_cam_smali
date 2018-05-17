package com.android.common.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.android.camera.R;

public class VerticalSeekBar extends View {
    private ApertureBladeView tU = null;
    private Context tV;
    private int tW = 0;
    private Paint tX;
    private int tY = 0;
    private Bitmap tZ;
    private float ua = -1.0f;
    private float ub = 0.0f;
    private float uc = 0.0f;

    public VerticalSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        rv(context);
    }

    public VerticalSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        rv(context);
    }

    private void rv(Context context) {
        this.tV = context;
        this.tX = new Paint();
        this.tX.setColor(context.getResources().getColor(R.color.aperture_color));
        this.tX.setStrokeWidth(2.0f);
        this.tZ = BitmapFactory.decodeResource(context.getResources(), R.drawable.aperture_thumb);
    }

    public void rs(ApertureBladeView apertureBladeView) {
        this.tU = apertureBladeView;
    }

    protected void onDraw(Canvas canvas) {
        float f;
        this.uc = (float) canvas.getWidth();
        this.ub = (float) canvas.getHeight();
        if (180 == this.tW || 270 == this.tW) {
            this.ua = this.ub - this.ua;
        }
        int width = this.tZ.getWidth();
        int height = this.tZ.getHeight();
        float f2 = (float) (width / 4);
        float f3 = this.ua;
        if (this.ub - this.ua < ((float) height)) {
            f = this.ub - ((float) height);
        } else {
            f = f3;
        }
        if (f > ((float) height)) {
            canvas.drawLine(this.uc / 2.0f, 0.0f, this.uc / 2.0f, f - f2, this.tX);
        }
        canvas.drawBitmap(this.tZ, (this.uc / 2.0f) - ((float) (width / 2)), f, this.tX);
        if (f < ((this.ub - ((float) height)) - ((float) (height / 2))) - f2) {
            canvas.drawLine(this.uc / 2.0f, (((float) this.tZ.getHeight()) + f) + f2, this.uc / 2.0f, this.ub, this.tX);
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        float f = rawX - ((float) iArr[0]);
        rawX = rawY - ((float) iArr[1]);
        if (180 == this.tW) {
            rawX += this.ub;
        }
        if (270 == this.tW) {
            f += this.ub;
        }
        switch (this.tW) {
            case 0:
            case 180:
                break;
            case 90:
            case 270:
                rawX = f;
                break;
            default:
                rawX = 0.0f;
                break;
        }
        switch (motionEvent.getAction()) {
            case 0:
                this.ua = rawX;
                break;
            case 1:
            case 2:
                if (rawX >= 0.0f) {
                    if (rawX <= this.ub) {
                        this.ua = rawX;
                        break;
                    }
                    this.ua = this.ub;
                    break;
                }
                this.ua = 0.0f;
                break;
        }
        rw(this.ua);
        invalidate();
        return true;
    }

    public void ru(int i) {
        this.tY = i;
        if (this.ub == 0.0f) {
            this.ub = (float) this.tV.getResources().getDimensionPixelSize(R.dimen.aperturn_seekbar_height);
        }
        this.ua = (this.ub - ((((float) i) * this.ub) / 100.0f)) - ((float) (this.tZ.getHeight() / 2));
        if (this.ua < 0.0f) {
            this.ua = 0.0f;
        }
        invalidate();
    }

    public int rt() {
        return 100;
    }

    private void rw(float f) {
        this.tY = (int) (((this.ub - f) / this.ub) * 100.0f);
        if (180 == this.tW || 270 == this.tW) {
            this.tY = 100 - this.tY;
        }
        if (this.tU != null) {
            this.tU.jT(this.tY);
        }
    }

    public void setOrientation(int i) {
        this.tW = i;
    }
}
