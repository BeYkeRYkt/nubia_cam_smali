package com.android.common.ui;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.android.camera.R;
import com.android.common.C0616j;
import com.p010a.C0090a;

public class BigApertureSettingUI extends RelativeLayout {
    private boolean pF = false;
    private int pG = C0616j.aoT(66);
    private int pH = C0616j.aoT(66);
    private Rect pI = null;
    private boolean pJ = false;
    private RotateLayout pK;
    private ApertureBladeView pL = null;
    private C0732D pM = null;
    private RotateLayout pN;
    private int pO = 0;
    private int pP = 0;
    private float pQ = ((this.pT + this.pS) / 2.0f);
    private int pR = 0;
    private float pS = 8.0f;
    private float pT = 2.0f;
    private boolean pU = false;
    private int pV = 0;
    private int pW = 0;
    private VerticalSeekBar pX = null;
    private int pY = 0;
    private int pZ = 0;
    private int[] qa = new int[2];
    private int qb = 0;
    boolean qc = false;
    boolean qd = false;
    private int[] qe = new int[2];
    private float[] qf = new float[2];
    private boolean qg = false;

    public BigApertureSettingUI(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        ne();
    }

    public void mY(C0732D c0732d) {
        this.pM = c0732d;
    }

    public void mX(float f, float f2, float f3) {
        this.pQ = f;
        this.pT = f2;
        this.pS = f3;
    }

    public void mW(boolean z) {
        if (z) {
            if (!this.pJ) {
                addView(this.pN);
                addView(this.pK);
                this.pJ = true;
            }
            setVisibility(0);
            return;
        }
        nk();
        setVisibility(8);
    }

    private void ne() {
        if (this.pK == null) {
            this.pK = (RotateLayout) LayoutInflater.from(getContext()).inflate(R.layout.aperture_view_blade, null);
            this.pL = (ApertureBladeView) this.pK.findViewById(R.id.aperture_view);
            this.pL.jR(this.pS);
            this.pL.jS(this.pT);
            this.pL.jQ(this.pQ);
            this.pL.jP(new aQ(this));
            this.pN = (RotateLayout) LayoutInflater.from(getContext()).inflate(R.layout.aperture_view_seekbar, null);
            this.pX = (VerticalSeekBar) this.pN.findViewById(R.id.aperture_seekbar);
            this.pX.rs(this.pL);
            this.pX.ru((int) (((this.pQ - this.pT) / (this.pS - this.pT)) * ((float) this.pX.rt())));
            this.pP = getResources().getDimensionPixelSize(R.dimen.aperturn_view);
            this.pO = this.pP;
            this.pZ = getResources().getDimensionPixelSize(R.dimen.aperturn_seekbar_width);
            this.pY = getResources().getDimensionPixelSize(R.dimen.aperturn_seekbar_height);
            this.pW = getResources().getDimensionPixelSize(R.dimen.aperturn_margin_between_view_and_seekbar);
        }
    }

    private void nl(int i, int i2) {
        ne();
        nm();
        if (!this.pJ) {
            addView(this.pN);
            addView(this.pK);
            this.pJ = true;
        }
        if (this.pK != null && this.pN != null) {
            int i3;
            int i4;
            this.pK.setLayoutParams(new LayoutParams(-2, -2));
            this.pN.setLayoutParams(new LayoutParams(-2, -2));
            if (i < 0 || i2 < 0) {
                Point nc = nc();
                i3 = nc.x;
                i4 = nc.y;
            } else {
                i3 = C0616j.aoN(i - (this.pP / 2), this.pI.left, this.pI.right - this.pP);
                i4 = C0616j.aoN(i2 - (this.pO / 2), this.pI.top, this.pI.bottom - this.pO);
            }
            int i5 = (this.pY - this.pO) / 2;
            switch (this.pV) {
                case 0:
                case 180:
                    if (i4 < i5) {
                        i4 = i5;
                    }
                    if (this.pO + i4 > getHeight() - i5) {
                        i4 = (getHeight() - i5) - this.pO;
                        break;
                    }
                    break;
                case 90:
                case 270:
                    if (i3 < i5) {
                        i3 = i5;
                    }
                    if (this.pP + i3 > getWidth() - i5) {
                        i3 = (getWidth() - i5) - this.pP;
                        break;
                    }
                    break;
            }
            this.qb = i4;
            this.pR = i3;
            if (this.pF) {
                this.pK.setX((float) i3);
                this.pK.setY((float) i4);
            } else {
                this.pK.animate().x((float) i3).y((float) i4).setDuration(280);
            }
            nj(this.pV, this.pR, this.qb);
        }
    }

    private void nk() {
        C0090a.m0d("BigApertureSettingUI", "txh removeApertureLayout");
        if (!(this.pK == null || this.pN == null)) {
            removeView(this.pK);
            removeView(this.pN);
        }
        this.pJ = false;
    }

    private Point nc() {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        Point point = new Point();
        point.x = ((iArr[0] + iArr[0]) + getWidth()) / 2;
        point.y = ((iArr[1] + iArr[1]) + getHeight()) / 2;
        return point;
    }

    private void nm() {
        this.pI = new Rect(0, 0, getWidth(), getHeight());
    }

    private Rect nb(int i, int i2, int i3, int i4) {
        int aoN = C0616j.aoN(i - (this.pH / 2), 0, i3 - this.pH);
        int aoN2 = C0616j.aoN(i2 - (this.pG / 2), 0, i4 - this.pG);
        return new Rect(aoN, aoN2, this.pH + aoN, this.pG + aoN2);
    }

    private int[] nd(float f, float f2) {
        getLocationInWindow(this.qa);
        if (f < ((float) this.qa[0]) || f > ((float) (this.qa[0] + getWidth())) || f2 < ((float) this.qa[1]) || f2 > ((float) (this.qa[1] + getHeight()))) {
            return null;
        }
        return new int[]{((int) f) - this.qa[0], ((int) f2) - this.qa[1]};
    }

    public boolean na(float f, float f2) {
        this.qf[0] = f;
        this.qf[1] = f2;
        int[] nd = nd(f, f2);
        if (nd != null) {
            this.pF = false;
            nl(nd[0], nd[1]);
            if (!this.pJ) {
                addView(this.pK);
                addView(this.pN);
                this.pJ = true;
            }
            this.qe[0] = nd[0];
            this.qe[1] = nd[1];
            this.pU = true;
            ni();
            return true;
        }
        if (getWidth() == 0 && getHeight() == 0) {
            post(new aR(this));
        }
        return false;
    }

    private boolean nf(MotionEvent motionEvent) {
        int[] nd = nd(motionEvent.getRawX(), motionEvent.getRawY());
        int pointerCount = motionEvent.getPointerCount();
        this.pU = false;
        if (this.pK == null || nd == null || pointerCount != 1) {
            return false;
        }
        pointerCount = (int) this.pK.getX();
        int y = (int) this.pK.getY();
        if (new Rect(pointerCount, y, this.pP + pointerCount, this.pO + y).contains(nd[0], nd[1])) {
            this.qc = true;
        } else {
            this.qc = false;
        }
        return this.qc;
    }

    private boolean ng(MotionEvent motionEvent) {
        int i = 150;
        int i2 = 15;
        int[] nd = nd(motionEvent.getRawX(), motionEvent.getRawY());
        int pointerCount = motionEvent.getPointerCount();
        if (this.pV == 90 || this.pV == 270) {
            i = 15;
            i2 = 150;
        }
        if (this.pN == null || nd == null || pointerCount != 1) {
            return false;
        }
        pointerCount = ((int) this.pN.getX()) - i2;
        int y = ((int) this.pN.getY()) - i;
        if (new Rect(pointerCount, y, (i2 * 2) + (this.pN.getWidth() + pointerCount), (i * 2) + (this.pN.getHeight() + y)).contains(nd[0], nd[1])) {
            this.qd = true;
        } else {
            this.qd = false;
        }
        return this.qd;
    }

    private void ni() {
        if (this.pU) {
            Rect nb = nb(this.qe[0], this.qe[1], this.pI.width(), this.pI.height());
            if (this.pM != null) {
                this.pM.nw(nb);
            }
        }
    }

    private boolean nh(MotionEvent motionEvent) {
        int rawX = (int) motionEvent.getRawX();
        int rawY = (int) motionEvent.getRawY();
        if (motionEvent.getPointerCount() == 1 && this.qc) {
            this.pF = true;
            int[] nd = nd((float) rawX, (float) rawY);
            if (nd != null) {
                nl(nd[0], nd[1]);
                if (!this.pJ) {
                    addView(this.pK);
                    addView(this.pN);
                    this.pJ = true;
                }
                this.qe[0] = nd[0];
                this.qe[1] = nd[1];
                this.pU = true;
                return true;
            }
        }
        return false;
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        motionEvent.getPointerCount();
        int x = (int) motionEvent.getX();
        x = (int) motionEvent.getY();
        switch (motionEvent.getAction() & 255) {
            case 0:
                if (nf(motionEvent) || ng(motionEvent)) {
                    return true;
                }
            case 1:
            case 3:
                ni();
                this.qd = false;
                return true;
            case 2:
                if (this.qd) {
                    this.pX.dispatchTouchEvent(motionEvent);
                    return true;
                } else if (nh(motionEvent)) {
                    return true;
                }
                break;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void mZ(int i, boolean z) {
        int i2 = (i + 360) % 360;
        this.pF = true;
        this.pK.fc(i2, false);
        this.pN.fc(i2, false);
        this.pV = i2;
        nj(i2, this.pR, this.qb);
        this.pX.setOrientation(i2);
    }

    private void nj(int i, int i2, int i3) {
        int i4;
        int i5 = 0;
        getResources().getDimensionPixelSize(R.dimen.topbar_height);
        switch (i) {
            case 0:
                if (((this.pP + i2) + this.pW) + this.pZ >= getWidth()) {
                    i4 = (i2 - this.pZ) - this.pW;
                    i5 = i3 - ((this.pY - this.pO) / 2);
                    break;
                }
                i4 = this.pW + (this.pP + i2);
                i5 = i3 - ((this.pY - this.pO) / 2);
                break;
            case 90:
                if ((i3 - this.pZ) - this.pW <= 0) {
                    i4 = i2 - ((this.pY - this.pO) / 2);
                    i5 = (this.pO + i3) + this.pW;
                    break;
                }
                i4 = i2 - ((this.pY - this.pO) / 2);
                i5 = (i3 - this.pW) - this.pZ;
                break;
            case 180:
                if ((i2 - this.pW) - this.pZ <= 0) {
                    i4 = this.pW + (this.pP + i2);
                    i5 = i3 - ((this.pY - this.pO) / 2);
                    break;
                }
                i4 = (i2 - this.pZ) - this.pW;
                i5 = i3 - ((this.pY - this.pO) / 2);
                break;
            case 270:
                if (((this.pO + i3) + this.pW) + this.pZ >= getHeight()) {
                    i4 = i2 - ((this.pY - this.pO) / 2);
                    i5 = (i3 - this.pW) - this.pZ;
                    break;
                }
                i4 = i2 - ((this.pY - this.pO) / 2);
                i5 = (this.pO + i3) + this.pW;
                break;
            default:
                i4 = 0;
                break;
        }
        if (this.pF) {
            this.pN.setX((float) i4);
            this.pN.setY((float) i5);
            return;
        }
        this.pN.animate().x((float) i4).y((float) i5).setDuration(280);
    }
}
