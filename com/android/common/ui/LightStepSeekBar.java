package com.android.common.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.android.common.C0616j;
import com.android.common.setting.ListPreference;

public class LightStepSeekBar extends View {
    private static final int kY = Color.argb(25, 0, 0, 0);
    private static final float kZ = ((float) C0616j.aoT(10));
    private static final float la = ((float) C0616j.aoT(8));
    private static final float lb = ((float) C0616j.aoT(12));
    private static final int lc = C0616j.aoT(34);
    private static final int lf = Color.argb(76, 255, 255, 255);
    private static final int lg = C0616j.aoT(25);
    private float ld = 20.0f;
    private float le = 20.0f;
    protected ValueAnimator lh;
    private boolean li = false;
    private int lj = lc;
    private int lk = 0;
    private int ll = 0;
    private boolean lm = true;
    private CharSequence[] ln = new CharSequence[]{"test", "+1", "+2", "+3", "+4"};
    private int lo = 2;
    private ListPreference lp;
    private Paint lq = new Paint();
    private Paint lr;
    private C0760l ls;
    private int lt;

    public void ji(C0760l c0760l) {
        this.ls = c0760l;
    }

    public LightStepSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.lq.setStrokeWidth(2.0f);
        this.lq.setAntiAlias(true);
        this.lr = new Paint();
        this.lr.setTextAlign(Align.CENTER);
        this.lr.setColor(-1);
        this.lr.setTextSize(30.0f);
        this.lr.setAntiAlias(true);
    }

    public void jg(ListPreference listPreference, boolean z) {
        this.lp = listPreference;
        this.ln = listPreference.vb();
        this.lo = listPreference.vc();
        this.lm = z;
        this.ld = this.lr.measureText(this.ln[0], 0, this.ln[0].length()) / 2.0f;
        int length = this.ln.length - 1;
        this.le = this.lr.measureText(this.ln[length], 0, this.ln[length].length()) / 2.0f;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.lk = (i3 - i) - (lc * 2);
        this.lt = this.lk / (this.ln.length - 1);
        this.ll = (i4 - i2) >> 1;
        this.lj = jf(this.lo);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        jc(canvas);
        jd(canvas);
        if (jh()) {
            invalidate();
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (!isEnabled() && action != 1) {
            return false;
        }
        switch (action) {
            case 0:
                this.li = true;
                break;
            case 1:
                this.li = false;
                if (this.ls != null) {
                    this.ls.jj(this.lo);
                }
                this.lj = jf(this.lo);
                break;
            case 2:
                break;
        }
        this.lj = iY((int) motionEvent.getX());
        action = je((int) motionEvent.getX());
        if (action != this.lo) {
            this.lo = action;
            this.lp.uY(this.lo);
            if (this.lm && this.ls != null) {
                this.ls.jj(this.lo);
            }
        }
        if (motionEvent.getAction() == 1) {
            invalidate();
        } else {
            invalidate();
        }
        return true;
    }

    private int jf(int i) {
        return (this.lt * i) + lc;
    }

    private int je(int i) {
        int i2 = this.lt >> 1;
        for (int i3 = 0; i3 < this.ln.length; i3++) {
            if (Math.abs((i - (this.lt * i3)) - lc) < i2) {
                return i3;
            }
        }
        return this.lo;
    }

    private int iY(int i) {
        if (i < lc) {
            return lc;
        }
        if (i > lc + this.lk) {
            return lc + this.lk;
        }
        return i;
    }

    private void jc(Canvas canvas) {
        jb(canvas);
        ja(canvas);
        iZ(canvas);
    }

    private void jb(Canvas canvas) {
        this.lq.setColor(lf);
        canvas.drawLine((float) lc, (float) this.ll, (float) (lc + this.lk), (float) this.ll, this.lq);
    }

    private void ja(Canvas canvas) {
        this.lq.setColor(-1);
        canvas.drawLine((float) lc, (float) this.ll, (float) this.lj, (float) this.ll, this.lq);
    }

    private void iZ(Canvas canvas) {
        this.lq.setColor(-1);
        canvas.drawCircle((float) this.lj, (float) this.ll, lb, this.lq);
    }

    private void jd(Canvas canvas) {
        for (int i = 0; i < this.ln.length; i++) {
            float f = 0.0f;
            if (i == 0) {
                f = this.ld;
            } else if (i == this.ln.length - 1) {
                f = -this.le;
            }
            canvas.drawText(this.ln[i].toString(), f + ((float) (lc + (this.lt * i))), (float) (this.ll + lg), this.lr);
        }
    }

    private boolean jh() {
        if (this.lh == null || !this.lh.isRunning()) {
            return false;
        }
        return true;
    }
}
