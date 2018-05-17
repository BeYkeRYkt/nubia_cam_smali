package com.android.ui;

import android.content.Context;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.util.FloatMath;
import android.view.MotionEvent;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.RelativeLayout;
import com.android.camera.R;
import com.android.common.C0616j;
import com.p010a.C0090a;
import com.umeng.analytics.ReportPolicy;

public class ScaleLayout extends RelativeLayout {
    private int aUT = 0;
    private int aUU = 0;
    private int aUV = 0;
    private int aUW = 0;
    private float aUX = 0.0f;
    private float aUY = 0.0f;
    private float aUZ = 0.0f;
    private int aVa = 0;
    private PointF aVb = new PointF();
    private int aVc = 0;
    private int aVd = 0;
    private float aVe = 0.0f;
    private float aVf = 0.0f;
    private RelativeLayout aVg = null;
    private int aVh = 0;
    private int aVi = 0;
    private float aVj = 0.0f;
    private int aVk = 0;
    private int aVl = 0;
    private int aVm = 0;

    public ScaleLayout(Context context) {
        super(context);
        blB();
    }

    public ScaleLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        blB();
    }

    public ScaleLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        blB();
    }

    private void blB() {
        this.aVk = C0616j.apG() * 3;
        this.aVa = C0616j.aoL() * 3;
        this.aUX = ((float) this.aVa) / ((float) this.aVk);
        this.aVl = 0 - ((this.aVk - C0616j.apG()) / 2);
        this.aVm = 0 - ((this.aVa - C0616j.aoL()) / 2);
        C0090a.bvo("ScaleLayout", "init mWidth = " + this.aVk + "; mHeight = " + this.aVa + "; mFScale = " + this.aUX);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.aVg = (RelativeLayout) findViewById(R.id.display_draw_show_layout);
        blJ();
        blC();
    }

    public void blC() {
        this.aUU = C0616j.apG();
        this.aUT = C0616j.aoL();
        blI();
        this.aVh = (this.aVk - this.aUU) / 2;
        this.aVi = (this.aVa - this.aUT) / 2;
        this.aUV = this.aVh;
        this.aUW = this.aVi;
        blH();
    }

    private void blI() {
        LayoutParams layoutParams = this.aVg.getLayoutParams();
        layoutParams.width = this.aUU;
        layoutParams.height = this.aUT;
        this.aVg.setLayoutParams(layoutParams);
    }

    private void blH() {
        MarginLayoutParams marginLayoutParams = new MarginLayoutParams(this.aVg.getLayoutParams());
        marginLayoutParams.setMargins(this.aUV, this.aUW, (this.aVk - this.aUU) - this.aUV, (this.aVa - this.aUT) - this.aUW);
        this.aVg.setLayoutParams(new RelativeLayout.LayoutParams(marginLayoutParams));
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(MeasureSpec.makeMeasureSpec(this.aVk, 1073741824), MeasureSpec.makeMeasureSpec(this.aVa, 1073741824));
    }

    private void blJ() {
        C0090a.bvo("ScaleLayout", "setLayoutPoint mX = " + this.aVl + "; mY = " + this.aVm);
        MarginLayoutParams marginLayoutParams = new MarginLayoutParams(getLayoutParams());
        marginLayoutParams.setMargins(this.aVl, this.aVm, this.aVl + marginLayoutParams.width, this.aVm + marginLayoutParams.height);
        setLayoutParams(new RelativeLayout.LayoutParams(marginLayoutParams));
    }

    private void blG() {
        int i = this.aUU;
        int i2 = this.aUT;
        this.aUU += this.aVd;
        if (this.aUU > this.aVk) {
            this.aUU = this.aVk;
        } else if (this.aUU < C0616j.apG()) {
            this.aUU = C0616j.apG();
        }
        this.aUT = (int) (((float) this.aUU) * this.aUX);
        blI();
        this.aUV -= (this.aUU - i) / 2;
        blD();
        this.aUW -= (this.aUT - i2) / 2;
        blE();
        blH();
    }

    public float blA() {
        return ((float) this.aUU) / ((float) C0616j.apG());
    }

    private void blM() {
        blD();
        blE();
        blH();
    }

    public void blL(MotionEvent motionEvent) {
        switch (motionEvent.getAction() & 255) {
            case 0:
                C0090a.bvo("ScaleLayout", "MotionEvent.ACTION_DOWN");
                C0090a.bvo("ScaleLayout", "getActionIndex = " + motionEvent.getActionIndex());
                this.aUY = motionEvent.getX(0);
                this.aUZ = motionEvent.getY(0);
                C0090a.bvo("ScaleLayout", "mFirstX = " + this.aUY + "; mFirstY = " + this.aUZ);
                break;
            case 1:
                C0090a.bvo("ScaleLayout", "MotionEvent.ACTION_UP");
                break;
            case 2:
                if (motionEvent.getPointerCount() > 1) {
                    float blK = blK(motionEvent);
                    this.aVd = (int) (blK - this.aVj);
                    this.aVj = blK;
                    blK = motionEvent.getX(0) - this.aUY;
                    float y = motionEvent.getY(0) - this.aUZ;
                    float x = motionEvent.getX(1) - this.aVe;
                    float y2 = motionEvent.getY(1) - this.aVf;
                    this.aUY = motionEvent.getX(0);
                    this.aUZ = motionEvent.getY(0);
                    this.aVe = motionEvent.getX(1);
                    this.aVf = motionEvent.getY(1);
                    if (x * blK < 0.0f || y * y2 < 0.0f) {
                        if (Math.abs(this.aVd) >= 10) {
                            blG();
                            break;
                        }
                        return;
                    } else if (Math.abs(blK) >= 10.0f || Math.abs(y) >= 10.0f) {
                        this.aUV = (int) (blK + ((float) this.aUV));
                        this.aUW = (int) (((float) this.aUW) + y);
                        blM();
                        break;
                    } else {
                        return;
                    }
                }
                break;
            case 5:
                this.aVe = motionEvent.getX(1);
                this.aVf = motionEvent.getY(1);
                this.aVj = blK(motionEvent);
                this.aVb = blF(motionEvent);
                C0090a.bvo("ScaleLayout", "MotionEvent.ACTION_POINTER_1_DOWN mSecondX = " + this.aVe + "; mSecondY = " + this.aVf + "; mSpacing = " + this.aVj);
                break;
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                C0090a.bvo("ScaleLayout", "MotionEvent.ACTION_POINTER_1_UP");
                break;
        }
    }

    private void blD() {
        if (this.aUV > this.aVh) {
            this.aUV = this.aVh;
        } else if (this.aUV < (C0616j.apG() - this.aUU) + this.aVh) {
            this.aUV = (C0616j.apG() - this.aUU) + this.aVh;
        }
    }

    private void blE() {
        if (this.aUW > this.aVi) {
            this.aUW = this.aVi;
        } else if (this.aUW < (C0616j.aoL() - this.aUT) + this.aVi) {
            this.aUW = (C0616j.aoL() - this.aUT) + this.aVi;
        }
    }

    private float blK(MotionEvent motionEvent) {
        float x = motionEvent.getX(0) - motionEvent.getX(1);
        float y = motionEvent.getY(0) - motionEvent.getY(1);
        return FloatMath.sqrt((x * x) + (y * y));
    }

    private PointF blF(MotionEvent motionEvent) {
        return new PointF((motionEvent.getX(0) + motionEvent.getX(1)) / 2.0f, (motionEvent.getY(0) + motionEvent.getY(1)) / 2.0f);
    }

    public float blw() {
        return ((float) C0616j.apG()) / ((float) this.aUU);
    }

    public int bly() {
        return (int) (((float) (this.aVh - this.aUV)) * blw());
    }

    public float blx() {
        return ((float) C0616j.aoL()) / ((float) this.aUT);
    }

    public int blz() {
        return (int) (((float) (this.aVi - this.aUW)) * blx());
    }
}
