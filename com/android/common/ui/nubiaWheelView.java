package com.android.common.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.Scroller;
import com.android.camera.R;
import com.android.common.appService.C0329e;
import com.p010a.C0090a;

public class nubiaWheelView extends View {
    private static final C0754e jr = new C0754e();
    int height;
    private final int iK;
    private final int iL;
    private Handler iM;
    private final int iN;
    private C0329e iO;
    private int iP;
    private int iQ;
    private String[] iR;
    private int[] iS;
    private Scroller iT;
    private C0753d iU;
    private GestureDetector iV;
    private SimpleOnGestureListener iW;
    private int iX;
    private int iY;
    private int iZ;
    private int ja;
    private int jb;
    private int jc;
    private C0751c jd;
    private Paint je;
    private int jf;
    private final SparseArray jg;
    private final int[] jh;
    private int ji;
    private int jj;
    private int jk;
    private Paint jl;
    private int jm;
    float[] jn;
    float[] jo;
    float[] jp;
    private boolean jq;
    private int mValue;
    int width;

    public nubiaWheelView(Context context) {
        super(context);
        this.je = new Paint();
        this.jh = new int[7];
        this.jg = new SparseArray();
        this.iX = Integer.MIN_VALUE;
        this.iL = 0;
        this.iK = 1;
        this.iY = 0;
        this.iQ = 0;
        this.iS = new int[]{35, 65, 100, 150, 255, 150, 100, 65, 35};
        this.jo = new float[7];
        this.jp = new float[7];
        this.jn = new float[7];
        this.width = getContext().getResources().getDimensionPixelSize(R.dimen.dimens_75);
        this.height = getContext().getResources().getDimensionPixelSize(R.dimen.nubia_res_wheel_hight);
        this.iW = new at(this);
        this.iM = new au(this);
        this.iN = getContext().getResources().getDimensionPixelOffset(R.dimen.nubia_res_wheel_adjust_pos);
    }

    public nubiaWheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.je = new Paint();
        this.jh = new int[7];
        this.jg = new SparseArray();
        this.iX = Integer.MIN_VALUE;
        this.iL = 0;
        this.iK = 1;
        this.iY = 0;
        this.iQ = 0;
        this.iS = new int[]{35, 65, 100, 150, 255, 150, 100, 65, 35};
        this.jo = new float[7];
        this.jp = new float[7];
        this.jn = new float[7];
        this.width = getContext().getResources().getDimensionPixelSize(R.dimen.dimens_75);
        this.height = getContext().getResources().getDimensionPixelSize(R.dimen.nubia_res_wheel_hight);
        this.iW = new at(this);
        this.iM = new au(this);
        this.iV = new GestureDetector(context, this.iW);
        this.iT = new Scroller(context, new DecelerateInterpolator());
        this.jl = new Paint();
        this.jl.setColor(-16776961);
        this.je.setColor(-1);
        this.je.setAntiAlias(true);
        this.je.setTextAlign(Align.CENTER);
        this.jm = getResources().getDimensionPixelSize(R.dimen.nubia_res_wheel_text_size);
        this.iN = getContext().getResources().getDimensionPixelOffset(R.dimen.nubia_res_wheel_adjust_pos);
    }

    public void hk(int i) {
        this.width = i;
    }

    private void hf(int i) {
        if (i > 0) {
            this.iT.fling(0, 0, 0, i, 0, 0, 0, Integer.MAX_VALUE);
        } else {
            this.iT.fling(0, 0, 0, i, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        }
        invalidate();
    }

    public void hu(boolean z) {
        Object obj = this.iZ - this.jc >= this.jh.length ? 1 : null;
        if ((!z || obj != null) && z != this.jq) {
            this.jq = z;
        }
    }

    private int hi(int i) {
        if (i > this.iZ) {
            return (this.jc + ((i - this.iZ) % (this.iZ - this.jc))) - 1;
        }
        if (i < this.jc) {
            return (this.iZ - ((this.jc - i) % (this.iZ - this.jc))) + 1;
        }
        return i;
    }

    private String hg(int i) {
        return this.iU != null ? this.iU.hC(i) : Integer.toString(i);
    }

    private void he(int i) {
        SparseArray sparseArray = this.jg;
        if (((String) sparseArray.get(i)) == null) {
            Object obj;
            if (i < this.jc || i > this.iZ) {
                obj = "";
            } else if (this.iR != null) {
                obj = this.iR[i - this.jc];
            } else {
                obj = hg(i);
            }
            sparseArray.put(i, obj);
        }
    }

    private void hn() {
        this.jg.clear();
        int[] iArr = this.jh;
        int ha = ha();
        for (int i = 0; i < this.jh.length; i++) {
            int i2 = (i - 3) + ha;
            if (this.jq) {
                i2 = hi(i2);
            }
            iArr[i] = i2;
            he(iArr[i]);
        }
    }

    public void gV(int i) {
        boolean z = false;
        if (this.jc != i) {
            if (i < 0) {
                throw new IllegalArgumentException("minValue must be >= 0");
            }
            this.jc = i;
            if (this.jc > this.mValue) {
                this.mValue = this.jc;
            }
            if (this.iZ - this.jc > this.jh.length) {
                z = true;
            }
            hu(z);
            hn();
            invalidate();
        }
    }

    public void gW(int i) {
        boolean z = false;
        if (this.iZ != i) {
            if (i < 0) {
                throw new IllegalArgumentException("minValue must be >= 0");
            }
            this.iZ = i;
            if (this.iZ < this.mValue) {
                this.mValue = this.iZ;
            }
            if (this.iZ - this.jc > this.jh.length) {
                z = true;
            }
            hu(z);
            hn();
            invalidate();
        }
    }

    public int ha() {
        return this.mValue;
    }

    public void hq(int i, int i2) {
        this.iT.forceFinished(true);
        int i3 = this.iX - this.iP;
        if (i3 != 0) {
            this.iY = 0;
            if (Math.abs(i3) > this.jf / 2) {
                i3 += i3 > 0 ? -this.jf : this.jf;
            }
            this.iT.startScroll(0, 0, 0, i3, 400);
            invalidate();
        }
    }

    private void ho() {
        hq(this.iQ, 0);
        hs(1);
    }

    private void hs(int i) {
        this.iM.removeMessages(0);
        this.iM.removeMessages(1);
        this.iM.sendEmptyMessage(i);
    }

    private void hc() {
        this.iM.removeMessages(0);
        this.iM.removeMessages(1);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction() & 255) {
            case 0:
                if (this.iT.isFinished()) {
                    this.jk = (int) motionEvent.getY();
                    this.jj = 0;
                    invalidate();
                    break;
                }
                this.iT.forceFinished(true);
                hc();
                return true;
            case 1:
            case 3:
                hp();
                break;
            case 2:
                this.jj = ((int) motionEvent.getY()) - this.jk;
                this.iQ = this.jj;
                hr(0, this.jj);
                invalidate();
                break;
        }
        this.jk = (int) motionEvent.getY();
        if (!this.iV.onTouchEvent(motionEvent) && motionEvent.getAction() == 1) {
            this.jj = ((int) motionEvent.getY()) - this.jk;
            this.iQ = this.jj;
            this.jk = (int) motionEvent.getY();
            ho();
        }
        return true;
    }

    private void hj(int[] iArr) {
        int i;
        for (i = 0; i < iArr.length - 1; i++) {
            iArr[i] = iArr[i + 1];
        }
        i = iArr[iArr.length - 2] + 1;
        if (this.jq && i > this.iZ) {
            i = this.jc;
        }
        iArr[iArr.length - 1] = i;
        he(i);
        if (this.iO != null) {
            this.iO.SV();
        }
    }

    private void hd(int[] iArr) {
        int length;
        for (length = iArr.length - 1; length > 0; length--) {
            iArr[length] = iArr[length - 1];
        }
        length = iArr[1] - 1;
        if (this.jq && length < this.jc) {
            length = this.iZ;
        }
        iArr[0] = length;
        he(length);
        if (this.iO != null) {
            this.iO.SV();
        }
    }

    private void hp() {
        if (this.jd != null) {
            this.jd.hB();
        }
    }

    public void hb(int i) {
        ht(i, false);
    }

    private void ht(int i, boolean z) {
        if (this.mValue != i) {
            int hi;
            if (this.jq) {
                hi = hi(i);
            } else {
                hi = Math.min(Math.max(i, this.jc), this.iZ);
            }
            int i2 = this.mValue;
            this.mValue = hi;
            hn();
            invalidate();
        }
    }

    public void hr(int i, int i2) {
        int[] iArr = this.jh;
        if (!this.jq && i2 > 0 && iArr[3] <= this.jc) {
            this.iP = this.iX;
        } else if (this.jq || i2 >= 0 || iArr[3] < this.iZ) {
            this.iP += i2;
            while (this.iP - this.iX > this.ji) {
                C0090a.bvo("jyzhou", "dec scrollUpdate mCurrentScrollOffset ,mInitialScrollOffset= " + this.iP + ", " + this.iX);
                this.iP -= this.jf;
                C0090a.bvo("jyzhou", "dec 1 middle : " + iArr[3]);
                hd(iArr);
                C0090a.bvo("jyzhou", "dec 2 middle : " + iArr[3]);
                ht(iArr[3], true);
                if (!this.jq && iArr[3] <= this.jc) {
                    this.iP = this.iX;
                }
            }
            while (this.iP - this.iX < (-this.ji)) {
                C0090a.bvo("jyzhou", "inc scrollUpdate mCurrentScrollOffset ,mInitialScrollOffset= " + this.iP + ", " + this.iX);
                this.iP += this.jf;
                C0090a.bvo("jyzhou", "inc 1 middle : " + iArr[3]);
                hj(iArr);
                C0090a.bvo("jyzhou", "inc 2 middle : " + iArr[3]);
                ht(iArr[3], true);
                if (!this.jq && iArr[3] >= this.iZ) {
                    this.iP = this.iX;
                }
            }
            hh();
        } else {
            this.iP = this.iX;
        }
    }

    public void hh() {
        float f = (float) (1.5707963267948966d - ((double) 1.5707964f));
        float f2 = (float) (this.jf * 6);
        float f3 = (float) (this.jf * 3);
        int[] iArr = this.jh;
        float f4 = (float) this.iP;
        for (int i = 0; i < iArr.length; i++) {
            float f5 = ((3.1415927f * (f4 - ((float) this.iX))) / f2) + f;
            this.jp[i] = (float) (((double) this.jm) * Math.sin((double) f5));
            if (this.jp[i] < 0.0f) {
                this.jp[i] = 0.0f;
            }
            this.jn[i] = (float) (((((double) (((float) this.iX) + f3)) + (Math.sin(((double) f5) - 1.5707963267948966d) * ((double) f3))) + ((double) (this.jp[i] / 2.0f))) - ((double) this.iN));
            this.jo[i] = ((float) ((Math.sin((double) f5) * 0.2d) + 0.8d)) * (((float) this.jm) / this.jp[i]);
            f4 += (float) this.jf;
        }
    }

    protected void onDraw(Canvas canvas) {
        float right = (float) ((getRight() - getLeft()) / 2);
        canvas.saveLayerAlpha(0.0f, 0.0f, (float) getRight(), (float) this.jb, 136, 13);
        canvas.saveLayerAlpha(0.0f, (float) this.ja, (float) getRight(), (float) getBottom(), 136, 13);
        int[] iArr = this.jh;
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr[i];
            this.je.setTextSize(this.jp[i]);
            this.je.setTextScaleX(this.jo[i]);
            this.je.setAlpha(this.iS[i]);
            canvas.drawText((String) this.jg.get(i2), right, this.jn[i], this.je);
        }
    }

    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(this.width, this.height);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            hm();
            hl();
        }
    }

    private void hm() {
        hn();
        int[] iArr = this.jh;
        float length = (float) iArr.length;
        this.ji = (int) ((((float) ((getBottom() - getTop()) - (iArr.length * this.jm))) / length) + 0.5f);
        this.jf = this.jm + this.ji;
        this.iX = (int) (((float) (getBottom() - getTop())) / (length * 2.0f));
        this.iP = this.iX;
        this.jb = ((getBottom() - getTop()) / 2) - this.jf;
        this.ja = ((getBottom() - getTop()) / 2) + this.jf;
        hh();
    }

    public int gY() {
        return this.jb;
    }

    public int gZ() {
        return this.ja;
    }

    private void hl() {
        setVerticalFadingEdgeEnabled(true);
        setFadingEdgeLength(((getBottom() - getTop()) - this.jm) / 2);
    }

    public void gX(C0751c c0751c) {
        this.jd = c0751c;
    }
}
