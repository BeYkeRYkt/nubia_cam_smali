package com.android.common.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.android.camera.R;
import com.android.common.appService.C0319Y;

public class ZoomSeekBar extends View {
    private boolean id = true;
    private boolean ie = false;
    private boolean f85if = false;
    private boolean ig = false;
    private boolean ih = false;
    private int ii = 0;
    private float ij = 0.0f;
    private C0325a ik = null;
    private int il = 90;
    private int im = -1;
    private Bitmap in = null;
    private Bitmap io = null;
    private float ip = 0.0f;
    private float iq = 0.0f;
    private float ir = 0.0f;
    private Bitmap is = null;

    public ZoomSeekBar(Context context) {
        super(context);
        gq();
    }

    public ZoomSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        gq();
    }

    public ZoomSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        gq();
    }

    private void gq() {
        this.in = BitmapFactory.decodeResource(getResources(), R.drawable.zoom_seekbar);
        this.io = BitmapFactory.decodeResource(getResources(), R.drawable.zoom_thumb);
        this.is = BitmapFactory.decodeResource(getResources(), R.drawable.zoom_seekbar_flag);
        gn();
    }

    private void gn() {
        this.ij = ((float) this.in.getHeight()) / ((float) this.il);
    }

    public void gy(boolean z) {
        if (z) {
            this.in = BitmapFactory.decodeResource(getResources(), R.drawable.zoom_seekbar_pro);
        } else {
            this.in = BitmapFactory.decodeResource(getResources(), R.drawable.zoom_seekbar);
        }
        this.ih = z;
    }

    public void gw(int i) {
        this.il = i;
        gn();
        invalidate();
    }

    public void gx(C0325a c0325a) {
        this.ik = c0325a;
    }

    public void gu(boolean z) {
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        go(canvas);
    }

    private void go(Canvas canvas) {
        float width = ((float) (canvas.getWidth() - this.in.getWidth())) / 2.0f;
        canvas.drawBitmap(this.in, width, ((float) (canvas.getHeight() - this.in.getHeight())) / 2.0f, null);
        if (this.ie) {
            canvas.drawBitmap(this.is, width, ((((float) (canvas.getHeight() - this.in.getHeight())) / 2.0f) - ((float) (this.is.getHeight() / 2))) + (this.ij * ((float) (this.il - 12))), null);
        }
        gz(canvas);
    }

    private void gz(Canvas canvas) {
        float width = ((float) (canvas.getWidth() - this.io.getWidth())) / 2.0f;
        gr(canvas);
        this.ip = ((((float) (canvas.getHeight() - this.in.getHeight())) / 2.0f) - ((float) (this.io.getHeight() / 2))) + (this.ij * ((float) (this.il - this.ii)));
        canvas.drawBitmap(this.io, width, this.ip, null);
    }

    private void gr(Canvas canvas) {
        if (this.iq == 0.0f) {
            this.iq = (((float) (canvas.getHeight() - this.in.getHeight())) / 2.0f) - ((float) (this.io.getHeight() / 2));
        }
        if (this.ir == 0.0f) {
            this.ir = ((((float) (canvas.getHeight() - this.in.getHeight())) / 2.0f) - ((float) (this.io.getHeight() / 2))) + (this.ij * ((float) this.il));
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.id) {
            switch (motionEvent.getAction()) {
                case 0:
                    if (this.ik != null) {
                        this.ik.gB();
                    }
                    if (this.ih && this.ii == C0319Y.Ul) {
                        this.ig = true;
                    }
                    gp(motionEvent.getY());
                    gm();
                    if (this.ih && !this.f85if && this.ii < C0319Y.Ul - 1) {
                        this.f85if = true;
                        break;
                    }
                case 1:
                case 3:
                    if (this.ik != null) {
                        this.ik.gC();
                    }
                    this.f85if = false;
                    this.ig = false;
                    break;
                case 2:
                    if (this.ig && C0319Y.Ul - this.ii > 6) {
                        this.ig = false;
                        break;
                    }
                    gp(motionEvent.getY());
                    if (this.ih && !this.f85if && this.ii < C0319Y.Ul - 1) {
                        this.f85if = true;
                    }
                    gm();
                    break;
                    break;
            }
            return true;
        }
        if (this.ik != null) {
            this.ik.gC();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    private void gp(float f) {
        int i = this.ii;
        this.ii = this.il - ((int) (f / this.ij));
        if (this.f85if && !this.ig && this.ii >= C0319Y.Ul - 1) {
            this.ii = C0319Y.Ul;
        }
    }

    private void gm() {
        if (this.im == -1 || this.im != this.ii) {
            gs();
            invalidate();
            this.im = this.ii;
            this.ik.gA(this.ii);
        }
    }

    private void gs() {
        if (this.ii > this.il) {
            this.ii = this.il;
        } else if (this.ii < 0) {
            this.ii = 0;
        }
    }

    public void gv(int i) {
        this.ii = i;
        gs();
        invalidate();
    }

    public void gt(boolean z) {
        this.id = z;
    }
}
