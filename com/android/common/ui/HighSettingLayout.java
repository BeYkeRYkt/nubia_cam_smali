package com.android.common.ui;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.camerastate.C0404b;
import com.android.common.camerastate.UIState;
import com.p010a.C0090a;
import java.util.ArrayList;
import java.util.List;

public class HighSettingLayout extends RelativeLayout implements C0474A {
    public static final int qh = C0616j.aoT(52);
    public static final int qi = C0616j.aoT(30);
    public static final int qj = C0616j.aoT(720);
    public static final int qk = C0616j.aoT(20);
    public static final int ql = C0616j.aoT(35);
    private C0733G qA;
    private Rect qB = new Rect();
    private TextView qC;
    private boolean qm = false;
    private Animation qn;
    private Animation qo;
    private C0404b qp = null;
    private int qq;
    private int qr;
    private List qs;
    private C0730q qt;
    private int qu = 0;
    private int qv;
    private int qw;
    private ArrayList qx = new ArrayList();
    private int qy = 0;
    private int[] qz = new int[2];

    public void nE(C0114F c0114f) {
        if (!this.qx.contains(c0114f)) {
            this.qx.add(c0114f);
        }
    }

    private void nR(boolean z) {
        nS(z, true);
    }

    private void nS(boolean z, boolean z2) {
        for (C0114F c0114f : this.qx) {
            if (c0114f != null) {
                c0114f.ov(z, z2);
            }
        }
    }

    public HighSettingLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.qA = new C0733G(this, context);
        addView(this.qA, new LayoutParams(-1, -1));
        this.qs = new ArrayList(10);
        setWillNotDraw(false);
        nP(context);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.qC = (TextView) findViewById(R.id.reset);
    }

    private void nP(Context context) {
        this.qn = AnimationUtils.loadAnimation(context, R.anim.high_setting_fade_out);
        this.qn.setAnimationListener(new aS(this));
        this.qo = AnimationUtils.loadAnimation(context, R.anim.high_setting_fade_in);
        this.qo.setAnimationListener(new aT(this));
    }

    public void nD(C0404b c0404b) {
        this.qp = c0404b;
    }

    public void nF(List list, boolean z) {
        if (list != null && list.size() != 0) {
            int nN = nN();
            int size = 200 / list.size();
            nO();
            size = 0;
            for (C0730q c0730q : list) {
                int i;
                if (this.qs.contains(c0730q)) {
                    i = size;
                } else {
                    if (!nO()) {
                        c0730q.kK(true);
                    }
                    this.qs.add(c0730q);
                    c0730q.kM(this);
                    c0730q.kx(getLeft(), getTop(), getRight(), getBottom());
                    if (c0730q instanceof ao) {
                        i = size;
                    } else {
                        size++;
                        c0730q.kr((float) this.qq, (float) this.qr, (float) (qj + ((nN + size) * qh)), C0616j.apy((float) (this.qv - qi), (float) (qj + ((nN + size) * qh))));
                        c0730q.setOrientation(this.qy);
                        i = size;
                    }
                }
                size = i;
            }
        }
    }

    private int nN() {
        int i = 0;
        for (C0730q c0730q : this.qs) {
            int i2;
            if (c0730q instanceof ao) {
                i2 = i;
            } else {
                i2 = i + 1;
            }
            i = i2;
        }
        return i;
    }

    public void ny() {
        this.qA.invalidate();
    }

    public void nz(boolean z) {
        nC(z, true);
    }

    public void nC(boolean z, boolean z2) {
        if (z) {
            nJ();
            setVisibility(0);
            if (z2) {
                nV(false);
                startAnimation(this.qo);
                return;
            }
            nR(true);
            return;
        }
        nJ();
        setVisibility(8);
        if (z2) {
            startAnimation(this.qn);
        } else {
            nS(false, false);
        }
    }

    public void setVisibility(int i) {
        int i2 = 0;
        super.setVisibility(i);
        nU();
        if (nO()) {
            if (i == 0) {
                int size = 200 / this.qs.size();
                for (C0730q kB : this.qs) {
                    kB.kB(i2 * size);
                    i2++;
                }
            } else {
                for (C0730q kB2 : this.qs) {
                    kB2.kD();
                }
                if (this.qt != null) {
                    this.qt.kO(false);
                    this.qt = null;
                    nB(true);
                }
            }
            return;
        }
        C0090a.m0d("HighSettingLayout", "no render preference");
    }

    public void nH() {
        for (C0730q c0730q : this.qs) {
            if (c0730q.kG()) {
                c0730q.kH(false);
            }
        }
        if (nM() == 0) {
            ny();
        }
    }

    public boolean nO() {
        return this.qs != null && this.qs.size() > 0;
    }

    public boolean nG() {
        return this.qt != null;
    }

    public void nV(boolean z) {
        this.qm = z;
        nU();
    }

    private void nI() {
        getLocationInWindow(this.qz);
    }

    private int nM() {
        return getVisibility();
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.qA.dispatchTouchEvent(motionEvent);
    }

    private void nW(int i) {
        if (i != this.qC.getVisibility()) {
            this.qC.setVisibility(i);
        }
    }

    public void nB(boolean z) {
        for (C0730q c0730q : this.qs) {
            if (c0730q != this.qt) {
                c0730q.kQ(z);
            }
        }
    }

    private C0730q nK(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        for (C0730q c0730q : this.qs) {
            if (!(c0730q instanceof ao)) {
                float[] kk = c0730q.kk();
                if (Math.abs(((float) nL(x, y, kk[0], kk[1])) - kk[2]) < ((float) (qh / 2))) {
                    return c0730q;
                }
            }
        }
        return null;
    }

    private int nL(int i, int i2, float f, float f2) {
        float f3 = ((float) i) - f;
        float f4 = ((float) i2) - f2;
        return (int) Math.sqrt((double) ((f3 * f3) + (f4 * f4)));
    }

    private boolean nT(int i, int i2, Rect rect) {
        return i > rect.left && i < rect.right && i2 > rect.top && i2 < rect.bottom;
    }

    private boolean nQ() {
        for (C0730q kt : this.qs) {
            if (!kt.kt()) {
                return false;
            }
        }
        return true;
    }

    private void nU() {
        boolean z = false;
        if (this.qp != null) {
            z = true;
        }
        C0616j.apn(z);
        if (getVisibility() == 0 && !this.qm && nO()) {
            this.qp.Ke(UIState.HIGH_SETTING_POPUP);
        } else {
            this.qp.Kf(UIState.HIGH_SETTING_POPUP);
        }
    }

    public void fc(int i, boolean z) {
        this.qy = i / 90;
        for (C0730q orientation : this.qs) {
            orientation.setOrientation(this.qy);
        }
        ny();
    }

    public void nA() {
        for (C0730q c0730q : this.qs) {
            c0730q.kE();
            c0730q.kO(false);
            c0730q.kQ(true);
        }
        this.qt = null;
    }

    private void nJ() {
        this.qn.cancel();
        this.qn.reset();
        this.qo.cancel();
        this.qo.reset();
    }
}
