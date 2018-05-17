package com.android.common.ui;

import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.animation.AccelerateInterpolator;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0328d;
import com.android.common.appService.C0329e;
import com.android.common.setting.IconListPreference;
import com.android.common.setting.ListPreference;
import com.p010a.C0090a;

public class C0730q implements C0729E {
    protected static final int mG = C0616j.aoT(3);
    protected static final int mP = C0616j.aoT(5);
    protected static final int mQ = C0616j.aoT(13);
    protected static final int mR = C0616j.aoT(10);
    protected static final int mS = C0616j.aoT(36);
    protected static final int mT = C0616j.aoT(15);
    protected static final int mU = C0616j.aoT(30);
    protected static boolean mY = false;
    private static final /* synthetic */ int[] nr = null;
    private String TAG;
    protected String[] mA;
    protected float mB;
    protected RectF mC;
    protected Paint mD;
    protected Paint mE;
    protected float[] mF;
    protected boolean mH;
    protected Paint mI;
    protected float mJ;
    protected float mK;
    protected float mL;
    protected HighSettingLayout mM;
    protected boolean mN;
    protected float mO;
    protected ValueAnimator mV;
    protected float mW;
    protected boolean mX;
    protected boolean mZ;
    protected int mt;
    protected int mu;
    protected String mv;
    protected int mw;
    protected int mx;
    protected int my;
    protected String[] mz;
    protected int na;
    protected C0329e nb;
    protected Path nc;
    protected int[] nd;
    protected Drawable[] ne;
    protected String nf;
    protected int ng;
    protected ListPreference nh;
    protected C0763r ni;
    protected Drawable nj;
    protected Drawable nk;
    protected int nl;
    protected Drawable nm;
    protected Paint nn;
    protected ValueAnimator no;
    protected int np;
    protected ValueAnimator nq;

    private static /* synthetic */ int[] kU() {
        if (nr != null) {
            return nr;
        }
        int[] iArr = new int[RenderPreference$ActionEvent.values().length];
        try {
            iArr[RenderPreference$ActionEvent.DOWN.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            iArr[RenderPreference$ActionEvent.MOVE.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            iArr[RenderPreference$ActionEvent.UP.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        nr = iArr;
        return iArr;
    }

    public void ke(C0763r c0763r) {
        this.ni = c0763r;
    }

    protected void kz(String str, String str2) {
        if (this.ni != null) {
            this.ni.kV(str, str2);
        }
    }

    public static void kL(boolean z) {
        mY = z;
    }

    protected void kq() {
        this.mZ = true;
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setAlpha(255);
        this.mI = new Paint(paint);
        this.mI.setColor(-1);
        this.mI.setTextSize((float) mR);
        this.mI.setTextAlign(Align.CENTER);
        this.nn = new Paint(this.mI);
        this.nn.setShadowLayer(25.0f, 0.0f, 0.0f, -16777216);
        this.mE = new Paint(this.mI);
        this.mE.setStrokeWidth(2.0f);
        this.mE.setStyle(Style.STROKE);
        this.mD = new Paint(paint);
        this.mD.setStrokeWidth((float) (HighSettingLayout.qh + 1));
        this.mD.setColor(1275068416);
        this.mD.setStyle(Style.STROKE);
        this.mF = new float[4];
    }

    private void ks(Resources resources) {
        this.nf = this.nh.vd();
        this.mu = this.nh.uW(this.nh.tw());
        this.mt = this.nh.ve();
        this.mv = this.nh.zq();
        CharSequence[] vb = this.nh.vb();
        CharSequence[] uX = this.nh.uX();
        if (this.nh instanceof IconListPreference) {
            this.nd = ((IconListPreference) this.nh).uP();
            kI(this.nd, this.nd.length);
        }
        int length = vb.length;
        this.mz = new String[length];
        this.mA = new String[length];
        for (int i = 0; i < length; i++) {
            int i2;
            if (mY) {
                i2 = (length - 1) - i;
            } else {
                i2 = i;
            }
            this.mz[i] = vb[i2].toString();
            this.mA[i] = uX[i2].toString();
        }
        if (mY) {
            this.mu = (length - 1) - this.mu;
            this.mt = (length - 1) - this.mt;
        }
    }

    public C0730q(C0329e c0329e, ListPreference listPreference, Resources resources, int i, int i2, int i3) {
        this(c0329e, listPreference, resources, i, i2, R.drawable.ic_default, i3);
    }

    public C0730q(C0329e c0329e, ListPreference listPreference, Resources resources, int i, int i2, int i3, int i4) {
        this.TAG = "RenderPreference";
        this.mX = false;
        this.mu = 1;
        this.mt = 0;
        this.mH = false;
        this.mN = false;
        this.ni = null;
        this.nb = c0329e;
        this.nh = listPreference;
        this.mw = i;
        this.mx = i4;
        this.my = i2;
        this.nl = i3;
        kq();
        ks(resources);
    }

    public C0730q(C0329e c0329e) {
        this.TAG = "RenderPreference";
        this.mX = false;
        this.mu = 1;
        this.mt = 0;
        this.mH = false;
        this.mN = false;
        this.ni = null;
        this.nb = c0329e;
        this.nl = R.drawable.ic_default;
        kq();
    }

    public void kO(boolean z) {
        this.mH = z;
        if (!this.mH && this.mN) {
            this.mD.setStyle(Style.FILL_AND_STROKE);
        }
    }

    public void kQ(boolean z) {
        if (z) {
            this.mV = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
        } else {
            this.mV = ValueAnimator.ofFloat(new float[]{1.0f, 0.0f});
        }
        this.mV.setDuration(100);
        this.mV.start();
        this.mZ = z;
    }

    public boolean ku() {
        return this.mV != null ? this.mV.isRunning() : false;
    }

    public boolean kv() {
        return this.no != null ? this.no.isStarted() : false;
    }

    public boolean kw() {
        return this.nq != null ? this.nq.isRunning() : false;
    }

    public float[] kk() {
        return this.mF;
    }

    public String ko() {
        return this.mv == null ? "def" : this.mv;
    }

    public String kp() {
        if (this.mu != -1) {
            return this.mz[this.mu];
        }
        return "def";
    }

    public int kl() {
        return this.mx;
    }

    public String kn() {
        return kp();
    }

    public void kK(boolean z) {
        this.mN = z;
        if (this.mN) {
            this.mD.setStyle(Style.FILL_AND_STROKE);
        } else {
            this.mD.setStyle(Style.STROKE);
        }
    }

    protected float ka(float f) {
        return (float) Math.toDegrees(Math.atan((double) (f / this.mW)));
    }

    protected int kb() {
        for (int i = 0; i < this.mz.length; i++) {
            if (Math.abs((this.mK + this.mF[3]) - (((float) i) * this.mO)) * 2.0f < this.mO) {
                return i;
            }
        }
        return -1;
    }

    protected String km(int i) {
        return this.nb.SM().getString(i);
    }

    protected void jY(Canvas canvas) {
        if (this.mu != this.mt) {
            this.mE.setAlpha((int) (this.mB * 255.0f));
            float f = ((float) this.mt) * this.mO;
            float f2 = (-(this.mF[3] + 90.0f)) + f;
            float f3 = (this.mF[3] + this.mK) - f;
            canvas.drawArc(this.mC, f2, f3, false, this.mE);
        }
    }

    protected void kf(Canvas canvas, boolean z) {
        jW((int) (this.mB * 255.0f));
        canvas.save();
        this.mE.setAlpha((int) (this.mB * 75.0f));
        canvas.drawArc(this.mC, 0.0f, 360.0f, false, this.mD);
        canvas.drawArc(this.mC, -(this.mF[3] + 90.0f), 2.0f * this.mF[3], false, this.mE);
        jY(canvas);
        float f = (this.mF[1] - this.mF[2]) - ((float) mG);
        canvas.rotate(-this.mF[3], this.mF[0], this.mF[1]);
        int length = this.mz.length;
        this.mI.setAlpha((int) (this.mB * 255.0f));
        for (int i = 0; i < length; i++) {
            kj(canvas, f, i);
            canvas.rotate(this.mO, this.mF[0], this.mF[1]);
        }
        canvas.restore();
        jX(canvas);
    }

    protected void kj(Canvas canvas, float f, int i) {
        float f2 = 0.0f;
        if (i == this.mz.length - 1) {
            f2 = this.mI.measureText(this.mz[i]) / 2.0f;
        } else if (i == 0) {
            f2 = (-this.mI.measureText(this.mz[i])) / 2.0f;
        }
        if (i != this.mu) {
            if (this.ne != null) {
                this.ne[i].setAlpha((int) (this.mB * 255.0f));
                this.ne[i].draw(canvas);
                return;
            }
            this.mI.setAlpha((int) (this.mB * 255.0f));
            canvas.drawText(this.mz[i], this.mF[0] - f2, f, this.mI);
        } else if (!this.mH) {
        } else {
            if (this.ne != null) {
                this.ne[i].setAlpha(80);
                this.ne[i].draw(canvas);
                return;
            }
            this.mI.setAlpha(80);
            canvas.drawText(this.mz[i], this.mF[0] - f2, f, this.mI);
        }
    }

    protected void kh(Canvas canvas, boolean z) {
        canvas.save();
        canvas.rotate(this.mK, this.mF[0], this.mF[1]);
        if (kG()) {
            this.nk.draw(canvas);
        } else if (kt()) {
            this.nj.draw(canvas);
        } else {
            this.nm.draw(canvas);
        }
        canvas.restore();
    }

    protected void jW(int i) {
        this.nj.setAlpha(i);
        this.nk.setAlpha(i);
        this.nm.setAlpha(i);
    }

    protected void kg(Canvas canvas) {
        canvas.save();
        float floatValue = ((Float) this.no.getAnimatedValue()).floatValue();
        if (kG()) {
            canvas.rotate(floatValue, this.mF[0], this.mF[1]);
            this.nk.draw(canvas);
        } else {
            canvas.rotate(floatValue, this.mF[0], this.mF[1]);
            this.nj.draw(canvas);
        }
        canvas.restore();
    }

    protected void ki(Canvas canvas) {
        String kn = kn();
        float f = 1.0f;
        if (kw()) {
            f = ((Float) this.nq.getAnimatedValue()).floatValue();
        }
        this.nn.setAlpha((int) (255.0f * f));
        this.nn.setTextSize((float) mU);
        float f2 = (this.mF[1] - this.mF[2]) - ((float) HighSettingLayout.qh);
        canvas.save();
        canvas.rotate((float) ((-this.ng) * 90), this.mF[0], f2 - ((float) (mS >> 1)));
        canvas.drawText(kn, this.mF[0], f2, this.nn);
        float f3 = f2 - ((float) mS);
        this.nn.setAlpha((int) (f * 138.0f));
        this.nn.setTextSize((float) mT);
        canvas.drawText(this.mv, this.mF[0], f3, this.nn);
        canvas.restore();
    }

    protected void jX(Canvas canvas) {
        if (!this.mH) {
            this.mI.setTextAlign(this.mK > this.mF[3] / 2.0f ? Align.LEFT : Align.RIGHT);
            this.mI.setAlpha((int) (this.mB * 138.0f));
            canvas.drawTextOnPath(ko(), this.nc, 0.0f, 30.0f, this.mI);
            this.mI.setTextAlign(Align.CENTER);
        }
    }

    protected void kR(int i) {
        int i2 = i + 150;
        this.mV = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
        this.mV.setDuration((long) i2);
        this.mV.setInterpolator(new AccelerateInterpolator());
        this.mK = (((float) this.mu) * this.mO) - this.mF[3];
        float[] fArr = new float[2];
        fArr[0] = mY ? this.mF[3] : -this.mF[3];
        fArr[1] = this.mK;
        this.no = ValueAnimator.ofFloat(fArr);
        this.no.setDuration((long) i2);
        this.no.setInterpolator(new AccelerateInterpolator());
        jW(0);
        this.mV.start();
        this.no.start();
    }

    protected void kS() {
        if (this.no != null) {
            this.no.cancel();
            this.no = null;
        }
        if (this.mV != null) {
            this.mV.cancel();
            this.mV = null;
        }
    }

    protected void kd(boolean z) {
        if (z) {
            this.nq = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
        } else {
            this.nq = ValueAnimator.ofFloat(new float[]{1.0f, 0.0f});
        }
        this.nq.setDuration(100);
        this.nq.start();
    }

    protected void kI(int[] iArr, int i) {
        if (mY) {
            int i2 = 0;
            for (int i3 = i - 1; i2 < i3; i3--) {
                int i4 = iArr[i2];
                iArr[i2] = iArr[i3];
                iArr[i3] = i4;
                i2++;
            }
        }
    }

    protected void kJ(String[] strArr, int i) {
        if (mY) {
            int i2 = 0;
            for (int i3 = i - 1; i2 < i3; i3--) {
                String str = strArr[i2];
                strArr[i2] = strArr[i3];
                strArr[i3] = str;
                i2++;
            }
        }
    }

    protected boolean kc(int i) {
        if (kG()) {
            if (this.mu == this.mt) {
                return false;
            }
            this.mu = this.mt;
            return true;
        } else if (i == -1 || this.mu == i) {
            return false;
        } else {
            this.mu = i;
            return true;
        }
    }

    protected void kP(int i, RenderPreference$ActionEvent renderPreference$ActionEvent, boolean z) {
        this.nh.va(this.mA[this.mu]);
        if (z) {
            kN(renderPreference$ActionEvent);
        }
    }

    public boolean kC(float f, float f2) {
        if (kG()) {
            return false;
        }
        if (f < this.mJ) {
            this.mK = -this.mF[3];
        } else if (f > this.mL) {
            this.mK = this.mF[3];
        } else {
            this.mK = ka(f - this.mF[0]);
        }
        if (kc(kb())) {
            this.nb.SV();
            kP(this.mu, RenderPreference$ActionEvent.MOVE, true);
        }
        this.mM.ny();
        return false;
    }

    public boolean kA(float f, float f2) {
        if (kG()) {
            return false;
        }
        if (f < this.mJ) {
            this.mK = -this.mF[3];
        } else if (f > this.mL) {
            this.mK = this.mF[3];
        } else {
            this.mK = ka(f - this.mF[0]);
        }
        kc(kb());
        kP(this.mu, RenderPreference$ActionEvent.DOWN, true);
        this.mH = true;
        if (this.mN) {
            this.mD.setStyle(Style.STROKE);
        }
        kd(true);
        this.mM.ny();
        return false;
    }

    public boolean kF(float f, float f2) {
        if (kG()) {
            return false;
        }
        kd(false);
        kP(this.mu, RenderPreference$ActionEvent.UP, true);
        this.mH = false;
        this.mK = (-this.mF[3]) + (((float) this.mu) * this.mO);
        if (this.mN) {
            this.mD.setStyle(Style.FILL_AND_STROKE);
        }
        this.mM.ny();
        return false;
    }

    public void kM(HighSettingLayout highSettingLayout) {
        this.mM = highSettingLayout;
    }

    public void kx(int i, int i2, int i3, int i4) {
    }

    public void draw(Canvas canvas) {
        if (this.mX) {
            if (ku()) {
                this.mB = ((Float) this.mV.getAnimatedValue()).floatValue();
            } else {
                this.mB = 1.0f;
            }
            if (kv()) {
                kf(canvas, true);
                kg(canvas);
            } else if (ku()) {
                kf(canvas, true);
                kh(canvas, false);
            } else if (this.mZ) {
                kf(canvas, false);
                kh(canvas, true);
            }
            if ((this.mH || kw()) && this.mu != -1) {
                ki(canvas);
                if (kw()) {
                    this.mM.ny();
                }
            }
            return;
        }
        C0090a.bvo("1", this.nf + " drawabled is not all loaded draw");
    }

    public void kr(float f, float f2, float f3, float f4) {
        this.mF[0] = f;
        this.mF[1] = f2;
        this.mF[2] = f3;
        this.mF[3] = f4;
        this.mW = (float) (((double) f3) * Math.cos(Math.toRadians((double) f4)));
        this.mC = new RectF(this.mF[0] - this.mF[2], this.mF[1] - this.mF[2], this.mF[0] + this.mF[2], this.mF[1] + this.mF[2]);
        this.nc = new Path();
        this.nc.addArc(this.mC, -90.0f - this.mF[3], this.mF[3] * 2.0f);
        this.mO = (2.0f * f4) / ((float) (this.mz.length - 1));
        float sin = (float) (((double) f3) * Math.sin(Math.toRadians((double) f4)));
        this.mJ = this.mF[0] - sin;
        this.mL = sin + this.mF[0];
        this.nj.setBounds(((int) this.mF[0]) - mQ, (((int) this.mF[1]) - ((int) this.mF[2])) - mQ, ((int) this.mF[0]) + mQ, (((int) this.mF[1]) - ((int) this.mF[2])) + mQ);
        this.nm.setBounds(((int) this.mF[0]) - mQ, (((int) this.mF[1]) - ((int) this.mF[2])) - mQ, ((int) this.mF[0]) + mQ, (((int) this.mF[1]) - ((int) this.mF[2])) + mQ);
        this.nk.setBounds(((int) this.mF[0]) - mQ, (((int) this.mF[1]) - ((int) this.mF[2])) - mQ, ((int) this.mF[0]) + mQ, (((int) this.mF[1]) - ((int) this.mF[2])) + mQ);
        if (this.ne != null) {
            for (int i = 0; i < this.nd.length; i++) {
                this.ne[i].setBounds(((int) this.mF[0]) - mP, ((((int) this.mF[1]) - ((int) this.mF[2])) - (mP * 2)) - mG, ((int) this.mF[0]) + mP, (((int) this.mF[1]) - ((int) this.mF[2])) - mG);
            }
            Rect bounds = this.ne[0].getBounds();
            bounds.offset(mP, 0);
            this.ne[0].setBounds(bounds);
            bounds = this.ne[this.ne.length - 1].getBounds();
            bounds.offset(-mP, 0);
            this.ne[this.ne.length - 1].setBounds(bounds);
        }
    }

    public void kB(int i) {
        if (this.mX) {
            this.mI.setAlpha(0);
            this.mE.setAlpha(0);
            kR(i);
        } else {
            C0090a.bvo("1", this.nf + " drawabled is not all loaded");
        }
        this.mM.ny();
    }

    public void kD() {
        kS();
        if (this.nb.Uh() != null) {
            this.nb.Uh().SJ();
            this.nb.Ui(null);
        }
    }

    public void setOrientation(int i) {
        this.ng = i;
    }

    public void kH(boolean z) {
        if (this.mu != this.mt) {
            this.mu = this.mt;
            kP(this.mu, RenderPreference$ActionEvent.UP, z);
            float f = this.mK;
            this.mK = (-this.mF[3]) + (((float) this.mu) * this.mO);
            this.no = ValueAnimator.ofFloat(new float[]{f, this.mK});
            this.no.setDuration(150);
            this.no.setInterpolator(new AccelerateInterpolator());
            this.no.start();
        }
    }

    public boolean kG() {
        return false;
    }

    protected void kN(RenderPreference$ActionEvent renderPreference$ActionEvent) {
        switch (C0730q.kU()[renderPreference$ActionEvent.ordinal()]) {
            case 1:
                kT();
                return;
            case 2:
                kT();
                return;
            case 3:
                jZ();
                return;
            default:
                return;
        }
    }

    protected void kT() {
        if (this.nb.Uh() == null) {
            this.nb.Ui(new C0328d(this.nb));
            this.nb.Uh().start();
        }
        this.nb.Uh().SL();
    }

    protected void jZ() {
        if (this.nb.Uh() == null) {
            this.nb.Ui(new C0328d(this.nb));
            this.nb.Uh().start();
        }
        this.nb.Uh().SK();
    }

    public void kE() {
        this.mH = false;
        if (this.mN) {
            this.mD.setStyle(Style.FILL_AND_STROKE);
        }
    }

    public boolean kt() {
        return this.mt == this.mu;
    }

    public void ky(Resources resources) {
        if (!this.mX) {
            this.nj = resources.getDrawable(this.mw);
            this.nm = resources.getDrawable(this.my);
            this.nk = resources.getDrawable(this.nl);
            if (this.nd != null) {
                this.ne = new Drawable[this.nd.length];
                for (int i = 0; i < this.nd.length; i++) {
                    this.ne[i] = resources.getDrawable(this.nd[i]);
                }
            }
            this.mX = true;
        }
    }
}
