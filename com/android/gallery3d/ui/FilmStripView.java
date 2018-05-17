package com.android.gallery3d.ui;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import com.android.camera.R;
import com.android.gallery3d.p038a.C0870n;
import com.android.gallery3d.p038a.C0874d;
import com.android.gallery3d.p038a.C0882l;
import com.p010a.C0090a;
import java.util.Arrays;

public class FilmStripView extends ViewGroup {
    private Activity apV;
    private View apW;
    private int apX;
    private boolean apY;
    private C0906d apZ;
    private final int aqa;
    private C0870n aqb;
    private int aqc;
    private MotionEvent aqd;
    private final Rect aqe;
    private C0913j aqf;
    private boolean aqg;
    private boolean aqh;
    private long aqi;
    private int aqj;
    private C0891a aqk;
    private AsyncTask aql;
    private float aqm;
    private float aqn;
    private int aqo;
    private TimeInterpolator aqp;
    private int aqq;
    private C0905c[] aqr;
    private AnimatorUpdateListener aqs;
    private C0917o aqt;

    public FilmStripView(Context context) {
        super(context);
        this.aqe = new Rect();
        this.aqa = 2;
        this.apX = -1;
        this.aqr = new C0905c[5];
        this.aqt = null;
        this.apY = true;
        this.aqi = -1;
        this.aqm = 1.0f;
        this.aqj = 0;
        this.aqg = false;
        aCd((Activity) context);
    }

    public FilmStripView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.aqe = new Rect();
        this.aqa = 2;
        this.apX = -1;
        this.aqr = new C0905c[5];
        this.aqt = null;
        this.apY = true;
        this.aqi = -1;
        this.aqm = 1.0f;
        this.aqj = 0;
        this.aqg = false;
        aCd((Activity) context);
    }

    public FilmStripView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.aqe = new Rect();
        this.aqa = 2;
        this.apX = -1;
        this.aqr = new C0905c[5];
        this.aqt = null;
        this.apY = true;
        this.aqi = -1;
        this.aqm = 1.0f;
        this.aqj = 0;
        this.aqg = false;
        aCd((Activity) context);
    }

    private void aCd(Activity activity) {
        setWillNotDraw(false);
        this.apV = activity;
        this.aqn = 1.0f;
        this.aqc = 0;
        this.apZ = new C0906d(this, activity);
        this.aqp = new DecelerateInterpolator();
        this.aqt = new C0917o(activity);
        this.aqt.setVisibility(8);
        addView(this.aqt);
        this.aqf = new C0913j(activity, new C0911h());
        this.aqo = (int) getContext().getResources().getDimension(R.dimen.dimens_32);
        this.aqs = new C0928z(this);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.apV.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        this.aqm = ((float) displayMetrics.densityDpi) / 160.0f;
        if (this.aqm < 1.0f) {
            this.aqm = 1.0f;
        }
    }

    public C0904b aBY() {
        return this.apZ;
    }

    public void aCn(C0891a c0891a) {
        this.aqk = c0891a;
    }

    public void aCo(int i) {
        this.aqq = i;
    }

    private boolean aCe(int i) {
        if (this.aqr[2] != null && this.aqr[2].aDr() == i && this.aqr[2].aDq() == this.apX) {
            return true;
        }
        return false;
    }

    private int aCa() {
        C0905c c0905c = this.aqr[2];
        if (c0905c == null) {
            return 0;
        }
        return this.aqb.aAE(c0905c.aDr()).aAY();
    }

    private int[] aBQ(int i, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        if (i3 == 90 || i3 == 270) {
            i6 = i;
            i7 = i2;
        } else {
            i6 = i2;
            i7 = i;
        }
        if (i7 == -2 || r0 == -2) {
            i6 = i5;
            i7 = i4;
        }
        int[] iArr = new int[]{i4, i5};
        if (iArr[1] * i7 > iArr[0] * i6) {
            iArr[1] = (i6 * iArr[0]) / i7;
        } else {
            iArr[0] = (i7 * iArr[1]) / i6;
        }
        return iArr;
    }

    private void aCh(C0905c c0905c, int i, int i2) {
        C0874d aAE = this.aqb.aAE(c0905c.aDr());
        if (aAE == null) {
            C0090a.m1e("FilmStripView", "trying to measure a null item");
            return;
        }
        int[] aBQ = aBQ(aAE.aAZ(), aAE.aAW(), aAE.aAX(), i, i2);
        c0905c.aDx().measure(MeasureSpec.makeMeasureSpec(aBQ[0], 1073741824), MeasureSpec.makeMeasureSpec(aBQ[1], 1073741824));
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = MeasureSpec.getSize(i);
        int size2 = MeasureSpec.getSize(i2);
        if (size != 0 && size2 != 0) {
            if (this.aqb != null) {
                this.aqb.aAO(size, size2);
            }
            for (C0905c c0905c : this.aqr) {
                if (c0905c != null) {
                    aCh(c0905c, size, size2);
                }
            }
            aBT();
            this.aqt.measure(MeasureSpec.makeMeasureSpec(i, 1073741824), MeasureSpec.makeMeasureSpec(i2, 1073741824));
        }
    }

    protected boolean fitSystemWindows(Rect rect) {
        super.fitSystemWindows(rect);
        return false;
    }

    private int aBX(int i) {
        int i2 = 0;
        while (i2 < 5 && (this.aqr[i2] == null || this.aqr[i2].aDs() == -1)) {
            i2++;
        }
        if (i2 == 5) {
            return -1;
        }
        int abs = Math.abs(i - this.aqr[i2].aDq());
        int i3 = i2 + 1;
        while (i3 < 5 && this.aqr[i3] != null) {
            int i4;
            if (this.aqr[i3].aDs() == -1) {
                i4 = i2;
            } else {
                i4 = Math.abs(i - this.aqr[i3].aDq());
                if (i4 < abs) {
                    abs = i4;
                    i4 = i3;
                } else {
                    i4 = i2;
                }
            }
            i3++;
            i2 = i4;
        }
        return i2;
    }

    private C0905c aBP(int i) {
        C0874d aAE = this.aqb.aAE(i);
        if (aAE == null) {
            return null;
        }
        aAE.aBb();
        View aAH = this.aqb.aAH(this.apV, i);
        if (aAH == null) {
            return null;
        }
        C0905c c0905c = new C0905c(i, aAH, this.aqs);
        aAH = c0905c.aDx();
        if (aAH != this.apW) {
            addView(c0905c.aDx());
        } else {
            aAH.setVisibility(0);
            aAH.setAlpha(1.0f);
            aAH.setTranslationX(0.0f);
            aAH.setTranslationY(0.0f);
        }
        return c0905c;
    }

    private void aCk(int i) {
        if (i < this.aqr.length && this.aqr[i] != null) {
            C0874d aAE = this.aqb.aAE(this.aqr[i].aDr());
            if (aAE == null) {
                C0090a.m1e("FilmStripView", "trying to remove a null item");
                return;
            }
            aBS(aAE, this.aqr[i].aDx());
            this.aqr[i] = null;
        }
    }

    private void aCr() {
        int i = 4;
        if (aCb() || aCc()) {
            int aBX = aBX(this.apX);
            if (aBX != -1 && aBX != 2) {
                if (this.aqk != null) {
                    this.aqk.aDe(this.aqr[2].aDr(), false);
                }
                aBX -= 2;
                if (aBX > 0) {
                    for (i = 0; i < aBX; i++) {
                        aCk(i);
                    }
                    for (i = 0; i + aBX < 5; i++) {
                        this.aqr[i] = this.aqr[i + aBX];
                    }
                    for (i = 5 - aBX; i < 5; i++) {
                        this.aqr[i] = null;
                        if (this.aqr[i - 1] != null) {
                            this.aqr[i] = aBP(this.aqr[i - 1].aDr() + 1);
                        }
                    }
                    aBN();
                } else {
                    for (int i2 = 4; i2 >= aBX + 5; i2--) {
                        aCk(i2);
                    }
                    while (i + aBX >= 0) {
                        this.aqr[i] = this.aqr[i + aBX];
                        i--;
                    }
                    for (i = -1 - aBX; i >= 0; i--) {
                        this.aqr[i] = null;
                        if (this.aqr[i + 1] != null) {
                            this.aqr[i] = aBP(this.aqr[i + 1].aDr() - 1);
                        }
                    }
                }
                invalidate();
                if (this.aqk != null) {
                    this.aqk.aDe(this.aqr[2].aDr(), true);
                }
            }
        }
    }

    private boolean aBT() {
        boolean z = false;
        C0905c c0905c = this.aqr[2];
        if (c0905c == null) {
            return false;
        }
        if (c0905c.aDr() == 0 && this.apX < c0905c.aDq() && this.aqc <= 1) {
            z = true;
        } else if (c0905c.aDr() == 1 && this.apX < c0905c.aDq() && this.aqc > 1 && this.apZ.aDZ()) {
            z = true;
        }
        if (c0905c.aDr() == this.aqb.aAG() - 1 && this.apX > c0905c.aDq()) {
            z = true;
        }
        if (z) {
            this.apX = c0905c.aDq();
        }
        return z;
    }

    private void aBR(int i) {
        if (this.aqk == null) {
            return;
        }
        if (aCe(i)) {
            this.aqk.aDb(i);
        } else {
            this.aqk.aDc(i);
        }
    }

    private void aBN() {
        for (int i = 4; i >= 0; i--) {
            if (this.aqr[i] != null) {
                bringChildToFront(this.aqr[i].aDx());
            }
        }
        bringChildToFront(this.aqt);
    }

    public int aBZ() {
        C0905c c0905c = this.aqr[2];
        if (c0905c == null) {
            return -1;
        }
        return c0905c.aDr();
    }

    private void aCq() {
        int aDq = this.aqr[2].aDq();
        if (!this.apZ.aDZ() && !this.aqh && this.apX != aDq) {
            this.apZ.aEg(aDq, (int) ((((float) Math.abs(this.apX - aDq)) * 600.0f) / ((float) this.aqe.width())), false);
            if (!(aCa() != 1 || this.apZ.aDY() || this.aqn == 1.0f)) {
                this.apZ.aDm();
            }
        }
    }

    private void aCs(int i, int i2, float f) {
        if (i < 0 || i > 4) {
            C0090a.m1e("FilmStripView", "currItem id out of bound.");
            return;
        }
        C0905c c0905c = this.aqr[i];
        C0905c c0905c2 = this.aqr[i + 1];
        if (c0905c == null || c0905c2 == null) {
            C0090a.m1e("FilmStripView", "Invalid view item (curr or next == null). curr = " + i);
            return;
        }
        int aDq = c0905c.aDq();
        int aDq2 = c0905c2.aDq();
        int i3 = (int) (((float) ((aDq2 - i2) - aDq)) * f);
        c0905c.aDD(this.aqe, this.apX, this.aqn);
        c0905c.aDx().setAlpha(1.0f);
        if (aCc()) {
            c0905c.aDI((float) ((i3 * (this.apX - aDq)) / (aDq2 - aDq)), this.aqn);
        } else {
            c0905c.aDI((float) i3, this.aqn);
        }
    }

    private void aBV(int i) {
        if (i < 1 || i > 5) {
            C0090a.m1e("FilmStripView", "currItem id out of bound.");
            return;
        }
        C0905c c0905c = this.aqr[i];
        C0905c c0905c2 = this.aqr[i - 1];
        if (c0905c == null || c0905c2 == null) {
            C0090a.m1e("FilmStripView", "Invalid view item (curr or prev == null). curr = " + i);
            return;
        }
        View aDx = c0905c.aDx();
        if (i > 3) {
            aDx.setVisibility(4);
            return;
        }
        int aDq = c0905c2.aDq();
        if (this.apX <= aDq) {
            aDx.setVisibility(4);
            return;
        }
        int aDq2 = c0905c.aDq();
        float f = (((float) this.apX) - ((float) aDq)) / ((float) (aDq2 - aDq));
        c0905c.aDD(this.aqe, aDq2, (0.5f * f) + 0.5f);
        aDx.setAlpha(f);
        aDx.setTranslationX(0.0f);
        aDx.setVisibility(0);
    }

    public void aCg(boolean z) {
        if (this.aqr[2] != null && this.aqe.width() != 0 && this.aqe.height() != 0) {
            if (z) {
                this.aqr[2].aDH(this.apX - (this.aqr[2].aDx().getMeasuredWidth() / 2));
            }
            if (!this.apZ.aEb()) {
                int i;
                C0905c c0905c;
                float interpolation = this.aqp.getInterpolation((this.aqn - 0.5f) / 0.5f);
                int width = this.aqq + this.aqe.width();
                for (i = 1; i >= 0; i--) {
                    c0905c = this.aqr[i];
                    if (c0905c == null) {
                        break;
                    }
                    c0905c.aDH((this.aqr[i + 1].aDs() - c0905c.aDx().getMeasuredWidth()) - this.aqq);
                }
                for (i = 3; i < 5; i++) {
                    c0905c = this.aqr[i];
                    if (c0905c == null) {
                        break;
                    }
                    C0905c c0905c2 = this.aqr[i - 1];
                    c0905c.aDH((c0905c2.aDx().getMeasuredWidth() + c0905c2.aDs()) + this.aqq);
                }
                i = this.aqr[2].aDr() == 1 ? this.aqb.aAE(0).aAY() == 1 ? 1 : 0 : 0;
                C0905c c0905c3;
                if (i != 0) {
                    c0905c3 = this.aqr[2];
                    c0905c3.aDD(this.aqe, this.apX, this.aqn);
                    c0905c3.aDI(0.0f, this.aqn);
                    c0905c3.aDx().setAlpha(1.0f);
                } else if (interpolation == 1.0f) {
                    c0905c3 = this.aqr[2];
                    r5 = c0905c3.aDq();
                    if (this.apX < r5) {
                        aBV(2);
                    } else if (this.apX > r5) {
                        aCs(2, width, interpolation);
                    } else {
                        c0905c3.aDD(this.aqe, this.apX, this.aqn);
                        c0905c3.aDI(0.0f, this.aqn);
                        c0905c3.aDx().setAlpha(1.0f);
                    }
                } else {
                    c0905c3 = this.aqr[2];
                    c0905c3.aDI(c0905c3.aDt(this.aqn) * interpolation, this.aqn);
                    c0905c3.aDD(this.aqe, this.apX, this.aqn);
                    if (this.aqr[1] == null) {
                        c0905c3.aDx().setAlpha(1.0f);
                    } else {
                        r5 = c0905c3.aDq();
                        int aDq = this.aqr[1].aDq();
                        float f = (((float) this.apX) - ((float) aDq)) / ((float) (r5 - aDq));
                        c0905c3.aDx().setAlpha(f + ((1.0f - f) * (1.0f - interpolation)));
                    }
                }
                i = 1;
                while (i >= 0 && this.aqr[i] != null) {
                    aCs(i, width, interpolation);
                    i--;
                }
                for (i = 3; i < 5; i++) {
                    C0905c c0905c4 = this.aqr[i];
                    if (c0905c4 == null) {
                        break;
                    }
                    c0905c4.aDD(this.aqe, this.apX, this.aqn);
                    if (c0905c4.aDr() == 1 && aCa() == 1) {
                        c0905c4.aDx().setAlpha(1.0f);
                    } else {
                        View aDx = c0905c4.aDx();
                        if (interpolation == 1.0f) {
                            aBV(i);
                        } else {
                            if (aDx.getVisibility() == 4) {
                                aDx.setVisibility(0);
                            }
                            if (i == 3) {
                                aDx.setAlpha(1.0f - interpolation);
                            } else if (interpolation == 0.0f) {
                                aDx.setAlpha(1.0f);
                            } else {
                                aDx.setVisibility(4);
                            }
                            c0905c4.aDI(((float) (this.aqr[2].aDs() - c0905c4.aDs())) * interpolation, this.aqn);
                        }
                    }
                }
                aCr();
                this.aqi = (long) aBZ();
            }
        }
    }

    public void onDraw(Canvas canvas) {
        aCg(false);
        super.onDraw(canvas);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.aqe.left = i;
        this.aqe.top = i2;
        this.aqe.right = i3;
        this.aqe.bottom = i4;
        this.aqt.layout(this.aqe.left, this.aqe.top, this.aqe.right, this.aqe.bottom);
        if (!this.apZ.aEb() || z) {
            aCl();
            aCg(z);
        }
    }

    public void aCl() {
        if (this.apZ.aEb()) {
            C0905c c0905c = this.aqr[2];
            if (c0905c != null) {
                this.aqn = 1.0f;
                this.apZ.aDP();
                this.apZ.aDN();
                c0905c.aDF();
                this.apZ.aDO();
                this.aqt.setVisibility(8);
                this.apZ.aEh(true);
            }
        }
    }

    private void aBS(C0874d c0874d, View view) {
        if (c0874d.aAY() != 1) {
            removeView(view);
            c0874d.aBc();
            return;
        }
        view.setVisibility(4);
        if (!(this.apW == null || this.apW == view)) {
            removeView(this.apW);
        }
        this.apW = view;
    }

    private void aCp(C0905c c0905c) {
        c0905c.aDn(0.0f, 400, this.aqp);
        c0905c.aDx().animate().alpha(1.0f).setDuration(400).setInterpolator(this.aqp).start();
    }

    private void aBO(int i, C0874d c0874d) {
        int i2 = 2;
        int aBW = aBW(i);
        int i3 = 0;
        while (i3 < 5) {
            if (this.aqr[i3] != null && this.aqr[i3].aDr() > i) {
                this.aqr[i3].aDG(this.aqr[i3].aDr() - 1);
            }
            i3++;
        }
        if (aBW != -1) {
            View aDx = this.aqr[aBW].aDx();
            int measuredWidth = this.aqq + aDx.getMeasuredWidth();
            for (i3 = aBW + 1; i3 < 5; i3++) {
                if (this.aqr[i3] != null) {
                    this.aqr[i3].aDH(this.aqr[i3].aDs() - measuredWidth);
                }
            }
            if (aBW < 2 || this.aqr[aBW].aDr() >= this.aqb.aAG()) {
                this.apX -= measuredWidth;
                for (i3 = aBW; i3 > 0; i3--) {
                    this.aqr[i3] = this.aqr[i3 - 1];
                }
                if (this.aqr[2] == null) {
                    while (i2 < this.aqr.length - 1) {
                        this.aqr[i2] = this.aqr[i2 + 1];
                        i2++;
                    }
                    this.aqr[this.aqr.length - 1] = null;
                }
                if (this.aqr[1] != null) {
                    this.aqr[0] = aBP(this.aqr[1].aDr() - 1);
                }
                for (i2 = aBW; i2 >= 0; i2--) {
                    if (this.aqr[i2] != null) {
                        this.aqr[i2].aDI((float) (-measuredWidth), this.aqn);
                    }
                }
            } else {
                for (i3 = aBW; i3 < 4; i3++) {
                    this.aqr[i3] = this.aqr[i3 + 1];
                }
                if (this.aqr[3] != null) {
                    this.aqr[4] = aBP(this.aqr[3].aDr() + 1);
                }
                if (aCc()) {
                    this.aqr[2].aDx().setVisibility(0);
                    C0905c c0905c = this.aqr[3];
                    if (c0905c != null) {
                        c0905c.aDx().setVisibility(4);
                    }
                }
                while (aBW < 5) {
                    if (this.aqr[aBW] != null) {
                        this.aqr[aBW].aDI((float) measuredWidth, this.aqn);
                    }
                    aBW++;
                }
                C0905c c0905c2 = this.aqr[2];
                if (c0905c2.aDr() == this.aqb.aAG() - 1 && this.apX > c0905c2.aDq()) {
                    aBW = c0905c2.aDq() - this.apX;
                    this.apX = c0905c2.aDq();
                    for (i2 = 0; i2 < 5; i2++) {
                        if (this.aqr[i2] != null) {
                            this.aqr[i2].aDK((float) aBW, this.aqn);
                        }
                    }
                }
            }
            i2 = 0;
            while (i2 < 5) {
                if (!(this.aqr[i2] == null || this.aqr[i2].aDt(this.aqn) == 0.0f)) {
                    aCp(this.aqr[i2]);
                }
                i2++;
            }
            i2 = getHeight() / 8;
            if (aDx.getTranslationY() < 0.0f) {
                i2 = -i2;
            }
            aDx.animate().alpha(0.0f).translationYBy((float) i2).setInterpolator(this.aqp).setDuration(400).setListener(new C0901A(this, c0874d, aDx)).start();
            this.aqg = true;
            aBN();
            invalidate();
        }
    }

    private int aBW(int i) {
        int i2 = 0;
        while (i2 < 5) {
            if (this.aqr[i2] != null && this.aqr[i2].aDr() == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    private void aCu(int i) {
        int aBW;
        int i2;
        int aBW2 = aBW(i);
        if (aBW2 == -1 && i == this.aqb.aAG() - 1) {
            aBW = aBW(i - 1);
            if (aBW < 0 || aBW >= 4) {
                i2 = aBW2;
            } else {
                i2 = aBW + 1;
            }
        } else {
            i2 = aBW2;
        }
        aBW2 = 0;
        while (aBW2 < 5) {
            if (this.aqr[aBW2] != null && this.aqr[aBW2].aDr() >= i) {
                this.aqr[aBW2].aDG(this.aqr[aBW2].aDr() + 1);
            }
            aBW2++;
        }
        if (i2 != -1) {
            C0874d aAE = this.aqb.aAE(i);
            aBW = this.aqq + aBQ(aAE.aAZ(), aAE.aAW(), aAE.aAX(), getMeasuredWidth(), getMeasuredHeight())[0];
            C0905c aBP = aBP(i);
            if (i2 >= 2) {
                if (i2 == 2) {
                    aBP.aDH(this.aqr[2].aDs());
                }
                aCk(4);
                for (aBW2 = 4; aBW2 > i2; aBW2--) {
                    this.aqr[aBW2] = this.aqr[aBW2 - 1];
                    if (this.aqr[aBW2] != null) {
                        this.aqr[aBW2].aDI((float) (-aBW), this.aqn);
                        aCp(this.aqr[aBW2]);
                    }
                }
            } else {
                i2--;
                if (i2 >= 0) {
                    aCk(0);
                    for (aBW2 = 1; aBW2 <= i2; aBW2++) {
                        if (this.aqr[aBW2] != null) {
                            this.aqr[aBW2].aDI((float) aBW, this.aqn);
                            aCp(this.aqr[aBW2]);
                            this.aqr[aBW2 - 1] = this.aqr[aBW2];
                        }
                    }
                } else {
                    return;
                }
            }
            this.aqr[i2] = aBP;
            View aDx = this.aqr[i2].aDx();
            aDx.setAlpha(0.0f);
            aDx.setTranslationY((float) (getHeight() / 8));
            aDx.animate().alpha(1.0f).translationY(0.0f).setInterpolator(this.aqp).setDuration(400).start();
            aBN();
            invalidate();
        }
    }

    public void aCm(C0870n c0870n) {
        this.aqb = c0870n;
        this.aqb.aAO(getMeasuredWidth(), getMeasuredHeight());
        this.aqb.aAN(new C0902B(this));
    }

    public boolean aCb() {
        return this.aqn == 0.5f;
    }

    public boolean aCc() {
        return this.aqn == 1.0f;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!aCc() || this.apZ.aDZ()) {
            return true;
        }
        if (motionEvent.getActionMasked() == 0) {
            this.apY = true;
            this.aqd = MotionEvent.obtain(motionEvent);
            C0905c c0905c = this.aqr[2];
            if (!(c0905c == null || this.aqb.aAA(c0905c.aDr()))) {
                this.apY = false;
            }
            return false;
        } else if (motionEvent.getActionMasked() == 5) {
            this.apY = false;
            return false;
        } else if (!this.apY || motionEvent.getEventTime() - motionEvent.getDownTime() > 500) {
            return false;
        } else {
            int x = (int) (motionEvent.getX() - this.aqd.getX());
            return motionEvent.getActionMasked() == 2 && x < this.aqo * -1 && Math.abs(x) >= Math.abs((int) (motionEvent.getY() - this.aqd.getY())) * 2;
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.aqr[2] == null) {
            return true;
        }
        this.aqf.onTouchEvent(motionEvent);
        super.onTouchEvent(motionEvent);
        return true;
    }

    public boolean aCf() {
        return this.aqg;
    }

    private void aCv(int i) {
        C0905c c0905c = this.aqr[i];
        if (c0905c == null) {
            C0090a.m1e("FilmStripView", "trying to update an null item");
            return;
        }
        removeView(c0905c.aDx());
        C0874d aAE = this.aqb.aAE(c0905c.aDr());
        if (aAE == null) {
            C0090a.m1e("FilmStripView", "trying recycle a null item");
            return;
        }
        aAE.aBc();
        C0905c aBP = aBP(c0905c.aDr());
        if (aBP == null) {
            C0090a.m1e("FilmStripView", "new item is null");
            aAE.aBb();
            addView(c0905c.aDx());
            return;
        }
        aBP.aDp(c0905c);
        this.aqr[i] = aBP;
        boolean aBT = aBT();
        aBR(aBZ());
        if (aBT) {
            this.apZ.aEj(true);
        }
        aBN();
        invalidate();
    }

    private void aCt(C0882l c0882l) {
        if (this.aqr[2] == null) {
            aCj();
            return;
        }
        C0905c c0905c = this.aqr[2];
        int aDr = c0905c.aDr();
        if (c0882l.aBx(aDr)) {
            aCj();
            return;
        }
        if (c0882l.aBy(aDr)) {
            aCv(2);
            C0874d aAE = this.aqb.aAE(aDr);
            if (!(this.aqh || this.apZ.aDZ())) {
                int[] aBQ = aBQ(aAE.aAZ(), aAE.aAW(), aAE.aAX(), getMeasuredWidth(), getMeasuredHeight());
                this.apX = (aBQ[0] / 2) + c0905c.aDs();
            }
        }
        for (aDr = 1; aDr >= 0; aDr--) {
            int aDr2;
            C0905c c0905c2 = this.aqr[aDr];
            if (c0905c2 != null) {
                aDr2 = c0905c2.aDr();
                if (c0882l.aBx(aDr2) || c0882l.aBy(aDr2)) {
                    aCv(aDr);
                }
            } else {
                c0905c2 = this.aqr[aDr + 1];
                if (c0905c2 != null) {
                    this.aqr[aDr] = aBP(c0905c2.aDr() - 1);
                }
            }
        }
        for (aDr = 3; aDr < 5; aDr++) {
            c0905c2 = this.aqr[aDr];
            if (c0905c2 != null) {
                aDr2 = c0905c2.aDr();
                if (c0882l.aBx(aDr2) || c0882l.aBy(aDr2)) {
                    aCv(aDr);
                }
            } else {
                c0905c2 = this.aqr[aDr - 1];
                if (c0905c2 != null) {
                    this.aqr[aDr] = aBP(c0905c2.aDr() + 1);
                }
            }
        }
        aBN();
        requestLayout();
    }

    private void aCj() {
        int i;
        this.apZ.aEj(true);
        this.apZ.aEi();
        this.aqc = 0;
        if (!(this.aqk == null || this.aqr[2] == null)) {
            this.aqk.aDe(this.aqr[2].aDr(), false);
        }
        for (i = 0; i < this.aqr.length; i++) {
            if (this.aqr[i] != null) {
                View aDx = this.aqr[i].aDx();
                if (aDx != this.apW) {
                    removeView(aDx);
                }
                this.aqb.aAE(this.aqr[i].aDr()).aBc();
            }
        }
        Arrays.fill(this.aqr, null);
        if (this.aqb.aAG() != 0) {
            this.aqr[2] = aBP(0);
            if (this.aqr[2] != null) {
                this.aqr[2].aDH(0);
                for (i = 3; i < 5; i++) {
                    this.aqr[i] = aBP(this.aqr[i - 1].aDr() + 1);
                    if (this.aqr[i] == null) {
                        break;
                    }
                }
                this.apX = -1;
                this.aqn = 1.0f;
                aBN();
                invalidate();
                if (this.aqk != null) {
                    this.aqk.aDi();
                    this.aqk.aDe(this.aqr[2].aDr(), true);
                }
            }
        }
    }

    private void aCi(int i, int i2) {
        if (this.aqk != null) {
            this.aqk.aDg(i2);
        }
    }

    private void aBU(int i, int i2) {
        if (this.aqk != null) {
            this.aqk.aDd(i2);
        }
    }
}
