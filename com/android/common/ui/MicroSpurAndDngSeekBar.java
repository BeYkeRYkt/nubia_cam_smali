package com.android.common.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.android.camera.R;
import com.android.common.C0616j;

public class MicroSpurAndDngSeekBar extends View {
    private static final int tA = C0616j.aoT(14);
    private static final int tB = C0616j.aoT(6);
    private static final int tr = Color.argb(25, 0, 0, 0);
    private static final float ts = ((float) C0616j.aoT(10));
    private static final float tt = ((float) C0616j.aoT(8));
    private static final int tu = C0616j.aoT(12);
    private static final int tv = C0616j.aoT(34);
    private static final int tw = Color.argb(76, 255, 255, 255);
    private static final int tx = C0616j.aoT(25);
    private static final int ty = C0616j.aoT(11);
    private static final int tz = C0616j.aoT(20);
    private boolean tC = false;
    private float tD = ((float) tv);
    private int tE = 0;
    private float tF = 0.0f;
    private boolean tG = true;
    private int tH;
    private String[] tI = new String[]{"Auto", "30"};
    private int tJ = 0;
    private String tK;
    private int tL = 40;
    private Paint tM = new Paint();
    private Paint tN;
    private Bitmap tO;
    private int tP = -1;
    private C0130Y tQ;
    private float tR;

    public void qV(C0130Y c0130y) {
        this.tQ = c0130y;
    }

    public MicroSpurAndDngSeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.tM.setStrokeWidth(2.0f);
        this.tM.setAntiAlias(true);
        this.tN = new Paint();
        this.tN.setTextAlign(Align.CENTER);
        this.tN.setAntiAlias(true);
        this.tO = BitmapFactory.decodeResource(context.getResources(), R.drawable.pretty_seekbar_tip);
        this.tH = getResources().getColor(R.color.bar_background);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.tE = (i3 - i) - (tv * 2);
        if (C0616j.ahp) {
            this.tJ = this.tL;
        }
        this.tR = ((float) this.tE) / ((float) this.tL);
        this.tF = (float) ((i4 - i2) >> 1);
        this.tD = rj((float) this.tJ);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        rc(canvas);
        rg(canvas);
        rh(canvas);
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        int action = motionEvent.getAction();
        if (!isEnabled() && action != 1) {
            return false;
        }
        switch (action) {
            case 0:
                this.tC = true;
                if (this.tP == 1 && this.tQ != null) {
                    this.tQ.ro();
                    break;
                }
            case 1:
                this.tC = false;
                if (this.tQ != null) {
                    this.tQ.rn(this.tK, qY(this.tJ), this.tP == 1, action);
                }
                if (this.tJ < 5) {
                    this.tJ = 0;
                } else if (this.tJ < 10) {
                    this.tJ = 10;
                }
                this.tD = rj((float) this.tJ);
                if (this.tP == 1 && this.tQ != null && this.tJ < 5) {
                    this.tQ.rp();
                    break;
                }
            case 2:
                break;
        }
        this.tD = rb(motionEvent.getX());
        int ri = ri(motionEvent.getX());
        if (ri != this.tJ) {
            this.tJ = ri;
            if (this.tG && this.tQ != null) {
                ri = qY(this.tJ);
                C0130Y c0130y = this.tQ;
                String str = this.tK;
                if (this.tP == 1) {
                    z = true;
                }
                c0130y.rn(str, ri, z, action);
            }
        }
        invalidate();
        return true;
    }

    private float rj(float f) {
        return (this.tR * f) + ((float) tv);
    }

    private int ri(float f) {
        int i = 0;
        if (f < ((float) tv)) {
            return 0;
        }
        if (f >= ((float) (tv + this.tE))) {
            return this.tL;
        }
        float f2 = this.tR / 2.0f;
        while (i < this.tL + 1) {
            if (Math.abs((f - (((float) i) * this.tR)) - ((float) tv)) < f2) {
                return i;
            }
            i++;
        }
        return this.tJ;
    }

    private float rb(float f) {
        if (f < ((float) tv)) {
            return (float) tv;
        }
        if (f > ((float) (tv + this.tE))) {
            return (float) (tv + this.tE);
        }
        return f;
    }

    private void rc(Canvas canvas) {
        canvas.drawColor(tr);
    }

    private void rg(Canvas canvas) {
        rf(canvas);
        re(canvas);
        rd(canvas);
    }

    private void rf(Canvas canvas) {
        this.tM.setColor(tw);
        canvas.drawLine((float) tv, this.tF, (float) (tv + this.tE), this.tF, this.tM);
    }

    private void re(Canvas canvas) {
        this.tM.setColor(-1);
        int i = tv;
        if (C0616j.ahp) {
            i += this.tE;
        }
        canvas.drawLine((float) i, this.tF, this.tD, this.tF, this.tM);
    }

    private void rd(Canvas canvas) {
        this.tM.setColor(-1);
        canvas.drawCircle(this.tD, this.tF, (float) tu, this.tM);
        int qY = qY(this.tJ);
        if (qY > -1 && this.tJ != this.tL) {
            this.tN.setColor(-1);
            this.tN.setTextSize((float) ty);
            this.tN.setTextAlign(Align.CENTER);
            canvas.drawText(qY + "", this.tD, this.tF - ((float) tz), this.tN);
        }
    }

    private void rh(Canvas canvas) {
        this.tN.setColor(-1);
        this.tN.setTextSize((float) ty);
        this.tN.setTextAlign(Align.LEFT);
        canvas.drawText(this.tI[0], (float) tv, this.tF + ((float) tx), this.tN);
        this.tN.setTextAlign(Align.RIGHT);
        canvas.drawText(this.tI[1], (float) (tv + this.tE), this.tF + ((float) tx), this.tN);
    }

    private int qY(int i) {
        if (C0616j.ahp) {
            return ra(i);
        }
        return qZ(i);
    }

    private int qZ(int i) {
        if (i < 5) {
            return -1;
        }
        if (i < 10) {
            return 0;
        }
        return i - 10;
    }

    private int ra(int i) {
        if (i > this.tL - 5) {
            return -1;
        }
        if (i > this.tL - 10) {
            return 0;
        }
        return (this.tL - i) - 10;
    }

    public void qW(String[] strArr) {
        if (strArr != null && strArr.length == 2) {
            this.tI = strArr;
            rm(this.tI, this.tI.length);
        }
    }

    protected void rm(String[] strArr, int i) {
        if (C0616j.ahp) {
            int i2 = 0;
            for (int i3 = i - 1; i2 < i3; i3--) {
                String str = strArr[i2];
                strArr[i2] = strArr[i3];
                strArr[i3] = str;
                i2++;
            }
        }
    }

    public void qX(int i, int i2) {
        if (this.tP != i) {
            this.tP = i;
            this.tK = i == 1 ? "maf_key" : "pref_camera_interval_pro";
            this.tL = i == 1 ? 40 : 70;
            if (i2 == -1) {
                this.tJ = C0616j.ahp ? this.tL : 0;
            } else {
                this.tJ = C0616j.ahp ? (this.tL - i2) - 10 : i2 + 10;
            }
            this.tR = ((float) this.tE) / ((float) this.tL);
            this.tD = rj((float) this.tJ);
            invalidate();
        }
    }

    public boolean rk() {
        return this.tC;
    }

    public void rl() {
        if (this.tP == 1) {
            this.tJ = 0;
            this.tD = rj((float) this.tJ);
            invalidate();
        }
    }
}
