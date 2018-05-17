package com.android.common.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Scroller;
import com.android.camera.C0172c;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.p010a.C0090a;

public class WheelView extends View {
    private int mState;
    private int vA;
    private Handler vB;
    private int vC;
    private int vD;
    private C0329e vE;
    private int vF;
    private int vG;
    private int vH;
    private CharSequence[] vI;
    int[] vJ;
    private boolean vK;
    private int vL;
    boolean vM;
    private GestureDetector vN;
    private SimpleOnGestureListener vO;
    private int vP;
    boolean vQ;
    private boolean vR;
    private int vS;
    private int[] vT;
    private al vU;
    private int vV;
    private Paint vW;
    private int vX;
    private int vY;
    private Scroller vZ;
    private final int vx;
    private final int vy;
    private final int vz;
    private int wa;
    private int wb;
    private int wc;
    private int wd;
    int[] we;
    private int wf;

    public WheelView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.wb = 0;
        this.vG = -1;
        this.vU = null;
        this.mState = -1;
        this.wd = 0;
        this.vI = null;
        this.vA = C0616j.aoT(20);
        this.vY = -1;
        this.vS = 7;
        this.wf = -1;
        this.wa = 0;
        this.vL = 0;
        this.vX = 0;
        this.vP = 48;
        this.vF = 0;
        this.vR = false;
        this.vH = 0;
        this.vM = false;
        this.vQ = false;
        this.vz = 0;
        this.vy = 1;
        this.vK = true;
        this.vx = Color.argb(255, 204, 204, 204);
        this.vV = -1;
        this.vO = new bl(this);
        this.vD = 0;
        this.vC = 0;
        this.vB = new bm(this);
        this.vW = new Paint();
    }

    public WheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.wb = 0;
        this.vG = -1;
        this.vU = null;
        this.mState = -1;
        this.wd = 0;
        this.vI = null;
        this.vA = C0616j.aoT(20);
        this.vY = -1;
        this.vS = 7;
        this.wf = -1;
        this.wa = 0;
        this.vL = 0;
        this.vX = 0;
        this.vP = 48;
        this.vF = 0;
        this.vR = false;
        this.vH = 0;
        this.vM = false;
        this.vQ = false;
        this.vz = 0;
        this.vy = 1;
        this.vK = true;
        this.vx = Color.argb(255, 204, 204, 204);
        this.vV = -1;
        this.vO = new bl(this);
        this.vD = 0;
        this.vC = 0;
        this.vB = new bm(this);
        this.vW = new Paint(1);
        this.vN = new GestureDetector(context, this.vO);
        this.vZ = new Scroller(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0172c.aHW);
        String string = obtainStyledAttributes.getString(0);
        if (string != null) {
            this.vA = C0616j.aoT(Integer.parseInt(string));
        }
        obtainStyledAttributes.recycle();
        this.vP = getResources().getDimensionPixelSize(R.dimen.dimens_16);
        addOnLayoutChangeListener(new bn(this));
    }

    public WheelView(Context context) {
        super(context);
        this.wb = 0;
        this.vG = -1;
        this.vU = null;
        this.mState = -1;
        this.wd = 0;
        this.vI = null;
        this.vA = C0616j.aoT(20);
        this.vY = -1;
        this.vS = 7;
        this.wf = -1;
        this.wa = 0;
        this.vL = 0;
        this.vX = 0;
        this.vP = 48;
        this.vF = 0;
        this.vR = false;
        this.vH = 0;
        this.vM = false;
        this.vQ = false;
        this.vz = 0;
        this.vy = 1;
        this.vK = true;
        this.vx = Color.argb(255, 204, 204, 204);
        this.vV = -1;
        this.vO = new bl(this);
        this.vD = 0;
        this.vC = 0;
        this.vB = new bm(this);
        this.vW = new Paint();
    }

    public void st(int i) {
        this.vS = i;
        this.we = sv(getResources(), this.vS);
        this.vJ = sw(getResources(), this.vS);
        sB();
    }

    public void setEnabled(boolean z) {
        this.vK = z;
        postInvalidate();
    }

    private int sx(Paint paint, Canvas canvas) {
        int abs = (int) Math.abs(this.vW.getFontMetrics().ascent);
        return ((canvas.getHeight() - abs) / 2) + abs;
    }

    private void sy(int i) {
        this.vY = (i - this.vA) / (this.vS - 1);
        this.wf = this.vY * this.vI.length;
        this.wa = (0 - (this.vY / 2)) + (this.vA / 2);
        this.vL = ((this.vY / 2) + i) - (this.vA / 2);
        C0090a.bvo("WheelView", "row length = " + this.vY + "; start = " + this.wa + "; end = " + this.vL);
    }

    protected void onDraw(Canvas canvas) {
        if (this.vI == null) {
            super.onDraw(canvas);
            C0090a.bvo("WheelView", "There is no text to draw in WheelView");
            return;
        }
        int length;
        if (this.vY == -1) {
            this.vF = canvas.getWidth() / 2;
            sy(canvas.getWidth());
        }
        if (this.vV != -1) {
            length = ((this.vV - (this.vS / 2)) + this.vI.length) % this.vI.length;
            this.vG = (((this.vS / 2) + length) + this.vI.length) % this.vI.length;
            this.vX = (-length) * this.vY;
            this.wb = 0;
            this.vV = -1;
            this.vD = 0;
            this.vC = 0;
            this.vZ.forceFinished(true);
        }
        this.vX = (((this.vX % this.wf) + this.wf) % this.wf) + this.wb;
        length = 0 - (this.vX / this.vY);
        int i = (this.vX + (this.vY * length)) + this.wa;
        int length2 = (length + this.vI.length) % this.vI.length;
        length = (this.vY / 2) + i;
        if (length > (this.vY * this.vS) + this.wa) {
            length = ((length - this.wa) % (this.vY * this.vS)) + this.wa;
        }
        int i2 = length / this.vY;
        int i3 = i;
        for (length = 0; length < this.vS; length++) {
            i = ((length2 + length) + this.vI.length) % this.vI.length;
            if (this.vT[i] == 0) {
                this.vW.setTextSize((float) this.vJ[((i2 + length) + this.vS) % this.vS]);
            } else {
                this.vW.setTextSize((float) this.vT[i]);
            }
            if (((this.vY / 2) + i3) - (((int) this.vW.measureText(this.vI[i].toString())) / 2) > (this.vY * this.vS) + this.wa) {
                i = ((i - this.vS) + this.vI.length) % this.vI.length;
            }
            int measureText = ((this.vY / 2) + i3) - (((int) this.vW.measureText(this.vI[i].toString())) / 2);
            if (measureText > (this.vY * this.vS) + this.wa) {
                measureText = ((measureText - this.wa) % (this.vY * this.vS)) + this.wa;
            }
            int measureText2 = ((((measureText - this.wa) + (((int) this.vW.measureText(this.vI[i].toString())) / 2)) / this.vY) + this.vS) % this.vS;
            if (measureText2 == this.vS / 2 && i != this.vG) {
                this.vG = i;
                if (this.vE != null) {
                    this.vE.SV();
                    this.vR = true;
                }
                if (this.vU != null) {
                    this.vU.sQ(this, this.vI[this.vG].toString());
                }
            }
            if (measureText2 == this.vS / 2 && this.vQ && i == 0) {
                this.vW.setTextSize((float) this.vP);
            } else {
                this.vW.setTextSize((float) this.vJ[measureText2]);
            }
            this.vT[i] = this.vJ[measureText2];
            if (this.vK) {
                measureText2 = this.we[measureText2];
            } else {
                measureText2 = this.vx;
            }
            this.vW.setColor(measureText2);
            canvas.drawText(this.vI[i].toString(), (float) measureText, (float) sx(this.vW, canvas), this.vW);
            i3 = ((((i3 + this.vY) - this.wa) + (this.vY * this.vS)) % (this.vY * this.vS)) + this.wa;
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.vK) {
            return super.onTouchEvent(motionEvent);
        }
        switch (motionEvent.getAction() & 255) {
            case 0:
                this.vR = false;
                this.wc = (int) motionEvent.getX();
                this.vH = (int) motionEvent.getX();
                this.wb = 0;
                su();
                invalidate();
                break;
            case 1:
                if (!this.vR) {
                    this.vC = this.vF - ((int) motionEvent.getX());
                    this.wc = this.vF;
                    sz();
                    break;
                }
                break;
            case 2:
                sA();
                this.wb = ((int) motionEvent.getX()) - this.wc;
                this.vC = this.wb;
                this.wc = (int) motionEvent.getX();
                if (Math.abs(((float) this.vH) - motionEvent.getX()) > ((float) (this.vY / 4))) {
                    this.vR = true;
                }
                invalidate();
                break;
            case 3:
                C0090a.bvo("WheelView", "action = " + motionEvent.getAction());
                this.vC = ((int) motionEvent.getX()) - this.wc;
                this.wc = (int) motionEvent.getX();
                sz();
                break;
            default:
                C0090a.bvo("WheelView", "action = " + motionEvent.getAction());
                break;
        }
        if (!this.vN.onTouchEvent(motionEvent) && motionEvent.getAction() == 1 && this.vR) {
            this.wb = ((int) motionEvent.getX()) - this.wc;
            this.vC = this.wb;
            this.wc = (int) motionEvent.getX();
            sz();
        }
        return true;
    }

    private void sz() {
        sC(this.vC, 0);
        sD(1);
    }

    private void sD(int i) {
        this.vB.removeMessages(0);
        this.vB.removeMessages(1);
        this.vB.sendEmptyMessage(i);
    }

    private void su() {
        this.vB.removeMessages(0);
        this.vB.removeMessages(1);
    }

    public void sC(int i, int i2) {
        int i3;
        this.vZ.forceFinished(true);
        int i4 = (((this.vX % this.wf) + this.wf) % this.wf) + i;
        if (i4 > 0) {
            if (i4 % this.vY > this.vY / 2) {
                i3 = (this.vY - (i4 % this.vY)) + i;
            } else {
                i3 = i - (i4 % this.vY);
            }
        } else if (Math.abs(i4 % this.vY) > this.vY / 2) {
            i3 = i - (this.vY - Math.abs(i4 % this.vY));
        } else {
            i3 = i - (i4 % this.vY);
        }
        this.vD = 0;
        this.vZ.startScroll(0, 0, -i3, 0, i2 != 0 ? i2 : 400);
        sD(0);
    }

    private void sA() {
        if (this.mParent != null) {
            this.mParent.requestDisallowInterceptTouchEvent(true);
        }
    }

    private int[] sw(Resources resources, int i) {
        int i2;
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.dimens_8);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.dimens_18);
        float f = ((float) (dimensionPixelSize2 - dimensionPixelSize)) / ((float) (i / 2));
        int[] iArr = new int[i];
        for (i2 = 0; i2 < i / 2; i2++) {
            iArr[i2] = (int) (((float) dimensionPixelSize) + (((float) i2) * f));
        }
        iArr[i / 2] = dimensionPixelSize2;
        for (i2 = (i / 2) + 1; i2 < i; i2++) {
            iArr[i2] = iArr[(i - 1) - i2];
        }
        return iArr;
    }

    private int[] sv(Resources resources, int i) {
        int color = resources.getColor(R.color.FFc5c4c5);
        int color2 = resources.getColor(R.color.FFcccccc);
        int color3 = resources.getColor(R.color.FF00b7F7);
        int[] iArr = new int[i];
        int i2 = 0;
        while (i2 < i) {
            if (((float) i2) / ((float) i) < 0.1f || 1.0f - (((float) (i2 + 1)) / ((float) i)) < 0.1f) {
                iArr[i2] = color;
            } else if (i2 == i / 2) {
                iArr[i2] = color3;
            } else {
                iArr[i2] = color2;
            }
            i2++;
        }
        return iArr;
    }

    private void sB() {
        this.vY = -1;
        this.vV = this.vG;
        postInvalidate();
    }
}
