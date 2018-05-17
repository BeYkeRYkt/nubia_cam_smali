package com.android.gallery3d.ui;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask.Status;
import android.os.Handler;
import android.view.animation.DecelerateInterpolator;
import com.android.gallery3d.p038a.C0874d;
import com.p010a.C0090a;

class C0906d implements C0904b {
    private AnimatorSet aqA;
    private final ValueAnimator aqB;
    private AnimatorUpdateListener aqC = new C0919q(this);
    private final C0908f aqD;
    private final C0909g aqE = new C0918p(this);
    private ValueAnimator aqF;
    final /* synthetic */ FilmStripView aqG;
    private boolean aqz;

    C0906d(FilmStripView filmStripView, Context context) {
        this.aqG = filmStripView;
        TimeInterpolator decelerateInterpolator = new DecelerateInterpolator(1.5f);
        this.aqD = new C0908f(filmStripView.apV, new Handler(filmStripView.apV.getMainLooper()), this.aqE, decelerateInterpolator);
        this.aqz = true;
        this.aqB = new ValueAnimator();
        this.aqB.addUpdateListener(this.aqC);
        this.aqB.setInterpolator(decelerateInterpolator);
    }

    public boolean aDZ() {
        return !this.aqD.aEC();
    }

    public boolean aDY() {
        return this.aqB.isRunning();
    }

    private int aDS(int i, int i2, int i3) {
        return i2 - ((i + 100) * (this.aqG.aqq + i3));
    }

    private int aDR(int i, int i2, int i3) {
        return (((this.aqG.aqb.aAG() - i) + 100) * (this.aqG.aqq + i3)) + i2;
    }

    private void aEk(C0905c c0905c, float f, float f2) {
        if (this.aqF != null) {
            this.aqF.end();
        }
        float aDW = aDW(false);
        if (this.aqG.aqn >= aDW - (0.1f * aDW)) {
            aDW = 1.0f;
        }
        this.aqF = new ValueAnimator();
        this.aqF.setFloatValues(new float[]{this.aqG.aqn, aDW});
        this.aqF.setDuration(200);
        this.aqF.addListener(new C0920r(this, aDW, c0905c, f, f2));
        this.aqF.addUpdateListener(new C0921s(this, c0905c, f, f2));
        this.aqF.start();
    }

    public void aEf(float f) {
        if (aEj(false)) {
            FilmStripView filmStripView = this.aqG;
            filmStripView.apX = (int) (((float) filmStripView.apX) + f);
            boolean aCQ = this.aqG.aBT();
            this.aqG.aBR(this.aqG.aBZ());
            if (aCQ) {
                this.aqG.apZ.aEj(true);
            }
            this.aqG.invalidate();
        }
    }

    public void aDT(float f) {
        if (aEj(false)) {
            C0905c c0905c = this.aqG.aqr[2];
            if (c0905c != null) {
                float aCG = f / this.aqG.aqn;
                if (this.aqG.aCc() && this.aqG.aCa() == 1 && aCG < 0.0f) {
                    aDl();
                }
                int width = this.aqG.getWidth();
                this.aqD.aEA(this.aqG.apX, 0, (int) (-f), 0, aDS(c0905c.aDr(), c0905c.aDs(), width), aDR(c0905c.aDr(), c0905c.aDs(), width), 0, 0);
            }
        }
    }

    public void aDU(float f, float f2) {
        if (aEb()) {
            C0905c c0905c = this.aqG.aqr[2];
            if (c0905c != null) {
                float pow = (float) (Math.pow((double) Math.max(Math.abs(f), Math.abs(f2)), 0.3333333432674408d) * 0.05000000074505806d);
                float aDv = c0905c.aDv();
                float aDw = c0905c.aDw();
                Animator ofFloat = ValueAnimator.ofFloat(new float[]{aDv, aDv + ((pow / 4.0f) * f)});
                Animator ofFloat2 = ValueAnimator.ofFloat(new float[]{aDw, aDw + ((pow / 4.0f) * f2)});
                ofFloat2.addUpdateListener(new C0922t(this, ofFloat, ofFloat2, c0905c));
                this.aqA = new AnimatorSet();
                this.aqA.play(ofFloat).with(ofFloat2);
                this.aqA.setDuration((long) ((int) (pow * 1000.0f)));
                this.aqA.setInterpolator(new C0923u(this));
                this.aqA.addListener(new C0924v(this));
                this.aqA.start();
            }
        }
    }

    public boolean aEj(boolean z) {
        if (!aDZ()) {
            return true;
        }
        if (!this.aqz && !z) {
            return false;
        }
        this.aqD.aEB(true);
        return true;
    }

    private void aEi() {
        this.aqB.cancel();
    }

    public void aEg(int i, int i2, boolean z) {
        if (this.aqG.aqr[2] != null) {
            this.aqz = z;
            this.aqD.aEE(this.aqG.apX, 0, i - this.aqG.apX, 0, i2);
            this.aqG.aBR(this.aqG.aqr[2].aDr());
        }
    }

    private void aEe(float f, int i) {
        if (this.aqG.aqr[2] != null) {
            aEi();
            this.aqB.setDuration((long) i);
            this.aqB.setFloatValues(new float[]{this.aqG.aqn, f});
            this.aqB.start();
        }
    }

    public void aDl() {
        C0090a.m0d("FilmStripView", "goToFilmStrip");
        aEe(0.5f, 400);
        C0905c c0905c = this.aqG.aqr[3];
        if (this.aqG.aqr[2].aDr() == 0 && this.aqG.aCa() == 1 && c0905c != null) {
            aEg(c0905c.aDq(), 400, false);
        }
        if (this.aqG.aqk != null) {
            this.aqG.aqk.aDf(this.aqG.aqr[2].aDr(), false);
        }
    }

    public void aDm() {
        if (!this.aqG.aCc()) {
            aDQ();
            aEe(1.0f, 400);
        }
    }

    private void aDN() {
        if (aDX()) {
            this.aqA.cancel();
        }
    }

    private void aDP() {
        if (aEa()) {
            this.aqF.cancel();
        }
    }

    private void aDQ() {
        if (this.aqG.aqk != null) {
            this.aqG.aqk.aDf(this.aqG.aqr[2].aDr(), true);
        }
    }

    private void aEh(boolean z) {
        int i = 0;
        while (i < 2) {
            if (!(i == 2 || this.aqG.aqr[i] == null)) {
                this.aqG.aqr[i].aDx().setVisibility(z ? 0 : 4);
            }
            i++;
        }
    }

    private void aEc() {
        if (this.aqG.aqk != null) {
            this.aqG.aqk.aDf(this.aqG.aqr[2].aDr(), false);
        }
    }

    private Uri aDV() {
        C0905c c0905c = this.aqG.aqr[2];
        if (c0905c == null) {
            return Uri.EMPTY;
        }
        return this.aqG.aqb.aAE(c0905c.aDr()).aAV();
    }

    private float aDW(boolean z) {
        C0905c c0905c = this.aqG.aqr[2];
        C0874d aAE = this.aqG.aqb.aAE(c0905c.aDr());
        if (c0905c == null || !aAE.aBa(4)) {
            return 1.0f;
        }
        float aAZ = (float) aAE.aAZ();
        if (aAE.aAX() == 90 || aAE.aAX() == 270) {
            aAZ = (float) aAE.aAW();
        }
        aAZ /= (float) c0905c.aDz();
        if (z) {
            aAZ *= this.aqG.aqm;
        }
        return aAZ;
    }

    private void aEd() {
        if (aEb()) {
            C0905c c0905c = this.aqG.aqr[2];
            if (c0905c != null) {
                C0874d aAE = this.aqG.aqb.aAE(c0905c.aDr());
                if (aAE.aBa(4)) {
                    Uri aDV = aDV();
                    c0905c.aDy();
                    if (aDV != null && aDV != Uri.EMPTY) {
                        aAE.aAX();
                        aDO();
                        this.aqG.aql = new C0907e();
                        this.aqG.aql.execute(new C0905c[]{c0905c});
                    }
                }
            }
        }
    }

    private void aDO() {
        if (this.aqG.aql != null && this.aqG.aql.getStatus() != Status.FINISHED && !this.aqG.aql.isCancelled()) {
            this.aqG.aql.cancel(true);
        }
    }

    public boolean aEb() {
        return this.aqG.aqn > 1.0f;
    }

    public boolean aDX() {
        return this.aqA != null ? this.aqA.isRunning() : false;
    }

    public boolean aEa() {
        return this.aqF != null ? this.aqF.isRunning() : false;
    }
}
