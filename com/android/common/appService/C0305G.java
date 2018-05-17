package com.android.common.appService;

import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import com.android.camera.R;
import com.android.common.C0616j;
import com.p010a.C0090a;
import java.util.ArrayList;

public class C0305G {
    private int Tf;
    private int Tg = C0616j.aoL();
    private int Th = C0616j.apG();
    private int Ti;
    private double Tj;
    private int Tk;
    private boolean Tl;
    private int Tm;
    private Handler Tn = null;
    private ArrayList To = null;
    private Resources Tp = null;
    private int Tq;
    private int Tr;

    public C0305G(Resources resources, Handler handler) {
        this.Tp = resources;
        this.Tn = handler;
        this.Ti = resources.getDimensionPixelOffset(R.dimen.topbar_height);
        this.Tf = resources.getDimensionPixelOffset(R.dimen.bottombar_height);
        this.Tl = false;
        this.To = new ArrayList();
        abe(1.7777777777777777d);
    }

    public void abd(boolean z) {
        this.Tl = z;
    }

    public void abe(double d) {
        if (d <= 0.0d) {
            throw new IllegalArgumentException();
        }
        double d2 = 1.0d / d;
        if (this.Tj != d2) {
            this.Tj = d2;
            abj();
        }
    }

    public boolean abc(float f, float f2) {
        if (f < ((float) this.Tm) || f >= ((float) this.Tq) || f2 < ((float) this.Tr) || f2 >= ((float) this.Tk)) {
            return false;
        }
        return true;
    }

    public int aaX() {
        return this.Tq - this.Tm;
    }

    public int aaY() {
        return this.Tk - this.Tr;
    }

    public void aaZ(int[] iArr) {
        if (iArr == null || iArr.length != 2) {
            C0090a.bvo("PreviewAreaController", "Can't getLocationInWindow");
            return;
        }
        iArr[0] = this.Tm;
        iArr[1] = this.Tr;
    }

    public double aba() {
        return this.Tj;
    }

    private void abj() {
        int i;
        int i2;
        int i3 = this.Th;
        int i4 = this.Tg;
        C0090a.bvo("PreviewAreaController", "original preview dimensions are " + i3 + " x " + i4);
        if (i3 <= i4) {
            int i5 = i4;
            i4 = i3;
            i3 = i5;
        }
        if (this.Tl) {
            i = (int) ((((double) i4) * this.Tj) + 0.5d);
            i2 = i4;
        } else {
            i2 = (int) ((((double) i3) * this.Tj) + 0.5d);
            i = i3;
        }
        if (i2 > i4) {
            i3 = (int) (((double) i) * (((double) i4) / ((double) i2)));
        } else if (i > i3) {
            i4 = (int) (((double) i2) * (((double) i3) / ((double) i)));
        } else {
            i3 = i;
            i4 = i2;
        }
        i4 = (i4 >> 1) << 1;
        i3 = (i3 >> 1) << 1;
        C0090a.bvo("PreviewAreaController", "preview dimensions are " + i4 + " x " + i3);
        int i6 = this.Tm;
        int i7 = this.Tr;
        int i8 = this.Tq;
        int i9 = this.Tk;
        if ((this.Tg - this.Tf) - i3 <= this.Ti / 2) {
            this.Tr = 0;
        } else {
            this.Tr = this.Ti + ((((this.Tg - this.Ti) - this.Tf) - i3) / 2);
        }
        this.Tk = i3 + this.Tr;
        this.Tq = this.Tm + i4;
        abh(this, this.Tm, this.Tr, this.Tq, this.Tk, i6, i7, i8, i9);
    }

    private void abh(C0305G c0305g, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (this.To != null) {
            for (Object obj : this.To.toArray()) {
                abf((C0295H) obj, i, i2, i3, i4, i5, i6, i7, i8);
            }
        }
    }

    private void abf(C0295H c0295h, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (c0295h != null) {
            if (!c0295h.aZ() || Looper.myLooper() == Looper.getMainLooper()) {
                c0295h.ba(this, i, i2, i3, i4, i5, i6, i7, i8);
            } else {
                this.Tn.post(new ax(this, c0295h, i, i2, i3, i4, i5, i6, i7, i8));
            }
        }
    }

    public void abb(C0295H c0295h) {
        if (c0295h != null && !this.To.contains(c0295h)) {
            this.To.add(c0295h);
            abg(c0295h, this.Tm, this.Tr, this.Tq, this.Tk);
        }
    }

    private void abg(C0295H c0295h, int i, int i2, int i3, int i4) {
        if (c0295h != null) {
            if (!c0295h.aZ() || Looper.myLooper() == Looper.getMainLooper()) {
                c0295h.bb(i, i2, i3, i4);
            } else {
                this.Tn.post(new ay(this, c0295h, i, i2, i3, i4));
            }
        }
    }

    public void abi(C0295H c0295h) {
        if (this.To != null) {
            this.To.remove(c0295h);
        }
    }
}
