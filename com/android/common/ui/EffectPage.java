package com.android.common.ui;

import android.content.Context;
import android.graphics.Color;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Scroller;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.setting.ListPreference;

public class EffectPage extends RelativeLayout {
    private int mState;
    private final int qE = getResources().getDimensionPixelOffset(R.dimen.dimens_7);
    private final int qF = 101;
    private int qG = 600;
    private int qH = 3;
    private int qI = 0;
    private int qJ;
    private final int qK = getResources().getDimensionPixelOffset(R.dimen.dimens_10);
    private final int qL = getResources().getDimensionPixelSize(R.dimen.dimens_2);
    private FrameLayout qM;
    private int qN = 0;
    private int qO = 0;
    private int qP = 0;
    private int qQ = getResources().getDimensionPixelSize(R.dimen.dimens_8);
    private int qR = Color.argb(255, 255, 255, 255);
    private TextView qS = null;
    private C0323H qT = null;
    private int qU;
    private int qV;
    private int qW;
    private int qX;
    private boolean qY = false;
    private LinearLayout qZ;
    private final int ra = getResources().getDimensionPixelOffset(R.dimen.dimens_4);
    private C0735K rb = null;
    private ImageView[] rc;
    private C0324I rd = null;
    private ListPreference re = null;
    private double rf;
    private int rg = 3;
    private int rh;
    private Scroller ri;
    private Handler rj = new aU(this);
    private final int rk = R.drawable.funeffect_grid_selected_rec;
    private int rl;
    private int rm;
    private final int rn = R.drawable.effect_grid_page_hint_sel;
    private final int ro = getResources().getDimensionPixelOffset(R.dimen.dimens_5);
    private final int rp = getResources().getDimensionPixelOffset(R.dimen.dimens_7);
    private int rq = Color.argb(255, 0, 0, 0);
    private final int rr = getResources().getDimensionPixelOffset(R.dimen.dimens_10);
    private final int rs = R.drawable.effect_grid_page_hint;
    private int rt;
    private final int ru = R.drawable.funeffect_grid_unselected_rec;
    private VelocityTracker rv = null;
    private int rw = 0;

    public EffectPage(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.ri = new Scroller(context);
    }

    public void oB(ListPreference listPreference, float f) {
        this.re = listPreference;
        this.qH = (int) Math.ceil((double) (((float) listPreference.vb().length) / 3.0f));
        this.rt = (int) Math.ceil((double) (((float) this.qH) / 3.0f));
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        this.qM = new aV(this, getContext());
        addView(this.qM, layoutParams);
        layoutParams = new RelativeLayout.LayoutParams(-2, getResources().getDimensionPixelOffset(R.dimen.dimens_15));
        layoutParams.addRule(12);
        layoutParams.addRule(14);
        layoutParams.bottomMargin = getResources().getDimensionPixelOffset(R.dimen.dimens_42);
        this.qZ = new LinearLayout(getContext());
        addView(this.qZ, layoutParams);
        this.rc = new ImageView[this.rt];
        this.qI = oI(this.re.uW(this.re.tw()));
        for (int i = 0; i < this.rt; i++) {
            if (this.rt > 1) {
                this.rc[i] = oE(i);
            }
        }
        ox(f);
    }

    public void oA(boolean z) {
        if (z) {
            oO();
            return;
        }
        int oI = oI(this.re.uW(this.re.tw()));
        if (oI == this.qI) {
            oM();
            return;
        }
        this.mState = 1;
        oX(oI);
    }

    public void oy() {
        oP();
    }

    public void setVisibility(int i) {
        if (this.qM != null) {
            this.qM.setVisibility(i);
        }
        super.setVisibility(i);
    }

    public void oC(C0323H c0323h) {
        this.qT = c0323h;
    }

    public void oD(C0324I c0324i) {
        this.rd = c0324i;
    }

    public void ox(float f) {
        if (this.rf != ((double) f)) {
            this.rf = (double) f;
            if (Math.abs(this.rf - 1.7777777910232544d) < 0.10000000149011612d) {
                this.qQ = getResources().getDimensionPixelSize(R.dimen.dimens_11);
                this.qV = getResources().getDimensionPixelSize(R.dimen.dimens_41_5);
                this.qW = getResources().getDimensionPixelSize(R.dimen.dimens_41_5);
                this.qX = getResources().getDimensionPixelSize(R.dimen.dimens_40);
            } else if (Math.abs(this.rf - 1.0d) < 0.10000000149011612d) {
                this.qQ = getResources().getDimensionPixelSize(R.dimen.dimens_8);
                this.qV = getResources().getDimensionPixelSize(R.dimen.dimens_10);
                this.qW = getResources().getDimensionPixelSize(R.dimen.dimens_10);
                this.qX = getResources().getDimensionPixelSize(R.dimen.dimens_109_7);
            } else {
                this.qQ = getResources().getDimensionPixelSize(R.dimen.dimens_8);
                this.qV = getResources().getDimensionPixelSize(R.dimen.dimens_10);
                this.qW = getResources().getDimensionPixelSize(R.dimen.dimens_10);
                this.qX = getResources().getDimensionPixelSize(R.dimen.dimens_56);
            }
            this.qO = (((C0616j.apG() - this.qV) - this.qW) - (this.qQ * 2)) / 3;
            this.qN = (int) ((((double) this.qO) * this.rf) + 0.5d);
            this.qU = ((C0616j.aoL() - (this.qN * 3)) - (this.qQ * 2)) - this.qX;
            oT();
            if (this.rb == null) {
                this.rb = new C0735K(this, new C0734J(this, this.qV, this.qW, this.qX, this.qU), this.qQ, this.qO, this.qN, this.qK, 3, 3, this.rf);
            } else {
                this.rb.rB = new C0734J(this, this.qV, this.qW, this.qX, this.qU);
                this.rb.rF = this.qQ;
                this.rb.rG = this.qO;
                this.rb.rE = this.qN;
                this.rb.rH = this.rf;
            }
            oN(this.rb);
        }
    }

    public C0735K ow() {
        return this.rb;
    }

    public void oS(int i, int i2) {
        oQ(i, 0, 0.4f);
        this.qM.setVisibility(8);
        this.qP += i;
        int apG = ((-((this.rt - this.qI) - 1)) * C0616j.apG()) - this.qK;
        if (this.qP < apG) {
            this.qP = apG;
        }
        apG = (this.qI * C0616j.apG()) + this.qK;
        if (this.qP > apG) {
            this.qP = apG;
        }
        apG = this.qI;
        this.qI -= this.qP / C0616j.apG();
        if (apG != this.qI) {
            oG(apG, this.qI);
        }
        this.qP %= C0616j.apG();
    }

    public void oR(int i, int i2) {
        oK(i, 0, 0.4f);
        int i3 = this.qI;
        if (((float) (this.qP + i)) > ((float) C0616j.apG()) * 0.4f) {
            this.qI--;
        } else if (((float) (this.qP + i)) < ((float) (-C0616j.apG())) * 0.4f) {
            this.qI++;
        }
        if (i3 != this.qI) {
            oG(i3, this.qI);
        }
        this.qP = 0;
        this.qM.setX((float) (this.qP - (C0616j.apG() * this.qI)));
        if (this.mState == 1) {
            oM();
            this.mState = 0;
        }
        this.qM.setVisibility(0);
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.rt == 1) {
            return super.dispatchTouchEvent(motionEvent);
        }
        if (this.rv == null) {
            this.rv = VelocityTracker.obtain();
        }
        this.rv.addMovement(motionEvent);
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        switch (motionEvent.getAction() & 255) {
            case 0:
                this.rl = x;
                this.rm = y;
                this.qJ = this.rl;
                this.qY = false;
                oH();
                break;
            case 1:
            case 3:
                VelocityTracker velocityTracker = this.rv;
                velocityTracker.computeCurrentVelocity(1000);
                y = (int) velocityTracker.getXVelocity();
                if (y > this.qG && this.qI > 0) {
                    oX(this.qI - 1);
                } else if (y >= (-this.qG) || this.qI >= this.rt - 1) {
                    this.rh = x - this.rl;
                    oJ(0);
                } else {
                    oX(this.qI + 1);
                }
                if (Math.abs(x - this.qJ) < this.qE) {
                    this.qY = false;
                }
                this.rl = 0;
                if (this.rv != null) {
                    this.rv.recycle();
                    this.rv = null;
                    break;
                }
                break;
            case 2:
                oS(x - this.rl, 0);
                this.rl = x;
                this.rm = y;
                this.qY = true;
                break;
        }
        if (!this.qY) {
            super.dispatchTouchEvent(motionEvent);
        }
        return true;
    }

    public void oz() {
        if (this.qM != null) {
            TextView textView = (TextView) this.qM.findViewWithTag(Integer.valueOf(this.re.vc()));
            if (textView != null && textView != this.qS) {
                textView.setBackgroundResource(R.drawable.funeffect_grid_selected_rec);
                if (this.qS != null) {
                    this.qS.setBackgroundResource(0);
                }
                this.qS = textView;
            }
        }
    }

    private void oT() {
        CharSequence[] vb = this.re.vb();
        int uW = this.re.uW(this.re.tw());
        this.qM.removeAllViews();
        for (int i = 0; i < this.rt; i++) {
            oF(i, vb.length, vb, uW);
        }
        this.qM.setX((float) ((-this.qI) * C0616j.apG()));
    }

    private void oF(int i, int i2, CharSequence[] charSequenceArr, int i3) {
        int i4 = i * 3;
        int i5 = (i + 1) * 3;
        if (i5 > this.qH) {
            i5 = this.qH;
        }
        int apG = i * C0616j.apG();
        for (int i6 = i4; i6 < i5; i6++) {
            for (i4 = 0; i4 < this.rg; i4++) {
                int i7 = (this.qH * i4) + i6;
                if (i7 > i2 - 1) {
                    break;
                }
                LayoutParams layoutParams = new FrameLayout.LayoutParams(this.qO + (this.qL * 2), this.qN + (this.qL * 2));
                layoutParams.setMarginStart(((this.qV + apG) + ((this.qQ + this.qO) * (i6 - (i * 3)))) - this.qL);
                layoutParams.topMargin = (this.qX + ((this.qQ + this.qN) * i4)) - this.qL;
                View textView = new TextView(getContext());
                textView.setText(charSequenceArr[i7]);
                textView.setTag(Integer.valueOf(i7));
                textView.setGravity(8388691);
                textView.setPaddingRelative(this.rp, 0, 0, this.ro);
                textView.setTextSize(0, (float) this.rr);
                textView.setShadowLayer(25.0f, 0.0f, 0.0f, this.rq);
                textView.setTextColor(this.qR);
                this.qM.addView(textView, layoutParams);
                if (i7 == i3) {
                    textView.setBackgroundResource(R.drawable.funeffect_grid_selected_rec);
                    this.qS = textView;
                }
                textView.setOnClickListener(new aW(this, i7, textView));
            }
        }
    }

    private void oV(Context context, String str, String str2) {
        C0616j.apa(context, str.replace("-", "_"), str2);
    }

    private ImageView oE(int i) {
        LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        View imageView = new ImageView(getContext());
        imageView.setPadding(this.ra, 0, this.ra, 0);
        if (i == this.qI) {
            imageView.setImageResource(R.drawable.effect_grid_page_hint_sel);
        } else {
            imageView.setImageResource(R.drawable.effect_grid_page_hint);
        }
        this.qZ.addView(imageView, layoutParams);
        return imageView;
    }

    private int oI(int i) {
        Object obj = null;
        int i2 = 0;
        for (int i3 = 0; i3 < this.qH && r2 == null; i3++) {
            for (int i4 = 0; i4 < this.rg; i4++) {
                if (i == (this.qH * i4) + i3) {
                    obj = 1;
                    i2 = i3;
                    break;
                }
            }
        }
        return i2 / 3;
    }

    private void oG(int i, int i2) {
        this.rc[i].setImageResource(R.drawable.effect_grid_page_hint);
        this.rc[i2].setImageResource(R.drawable.effect_grid_page_hint_sel);
    }

    private void oX(int i) {
        if (i >= 0 && i <= this.rt - 1) {
            this.rh = ((-C0616j.apG()) * i) - (this.qP - (C0616j.apG() * this.qI));
            if (this.mState == 1) {
                oJ(200);
            } else {
                oJ(0);
            }
        }
    }

    private void oJ(int i) {
        oU(this.rh, i);
        oW(101);
    }

    private void oU(int i, int i2) {
        int abs;
        this.ri.forceFinished(true);
        int i3 = this.qP + i;
        i3 = ((float) i3) > ((float) C0616j.apG()) * 0.4f ? C0616j.apG() : ((float) i3) < ((float) (-C0616j.apG())) * 0.4f ? -C0616j.apG() : 0;
        int i4 = i3 - this.qP;
        Scroller scroller = this.ri;
        if (i2 == 0) {
            abs = Math.abs(i4);
        } else {
            abs = i2;
        }
        scroller.startScroll(0, 0, i4, 0, abs);
    }

    private void oW(int i) {
        oH();
        this.rj.sendEmptyMessage(i);
    }

    private void oH() {
        this.rj.removeMessages(101);
    }

    private void oL(int i) {
        if (this.qT != null) {
            this.qT.pk(i);
        }
    }

    private void oQ(int i, int i2, float f) {
        if (this.qT != null) {
            this.qT.po(i, i2, f);
        }
    }

    private void oK(int i, int i2, float f) {
        if (this.qT != null) {
            this.qT.pj(i, i2, f);
        }
    }

    private void oM() {
        if (this.qT != null) {
            this.qT.pl();
        }
    }

    private void oO() {
        if (this.qT != null) {
            this.qT.pm();
        }
    }

    private void oP() {
        if (this.qT != null) {
            this.qT.pn();
        }
    }

    private void oN(C0735K c0735k) {
        if (this.rd != null) {
            this.rd.pp(c0735k);
        }
    }
}
