package com.android.common.appService;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.hardware.Camera.Size;
import android.view.View;
import android.view.ViewTreeObserver.OnDrawListener;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import android.widget.RelativeLayout.LayoutParams;
import com.android.camera.R;
import com.android.common.ActivityBase;
import com.android.common.camerastate.C0404b;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.effects.C0507d;
import com.android.common.effects.C0508e;
import com.android.common.p012e.C0458b;
import com.android.common.p012e.C0470p;
import com.android.common.setting.ListPreference;
import com.android.common.ui.EffectPage;
import com.android.common.ui.RotateImageView;
import com.p010a.C0090a;

public class C0341p {
    private C0329e QV = null;
    private C0404b QW = null;
    private C0345t QX = null;
    private EffectPage QY = null;
    private RotateImageView QZ = null;
    private C0343r Ra = null;
    private C0344s Rb = new C0344s();
    private C0508e Rc;
    private String Rd = "";
    private OnDrawListener Re = new al(this);
    private C0342q Rf = null;
    private ListPreference Rg = null;
    private C0345t Rh = null;
    private AnimatorSet Ri = null;

    public C0341p(C0329e c0329e, ListPreference listPreference, View view, int i, int i2) {
        if (listPreference == null) {
            view.findViewById(i).setVisibility(8);
            view.findViewById(i2).setVisibility(8);
            return;
        }
        this.QV = c0329e;
        this.QW = c0329e.SX();
        this.Rg = listPreference;
        YU(view, this.Rg, i);
        YV(view, i2);
    }

    public void YE(C0342q c0342q) {
        this.Rf = c0342q;
    }

    public void YF(C0343r c0343r) {
        this.Ra = c0343r;
    }

    public void YC(boolean z) {
        if (YS()) {
            if (this.Rc != null) {
                this.QY.getViewTreeObserver().removeOnDrawListener(this.Re);
                this.Rc.release();
                this.Rc = null;
            }
            C0507d.fy(this.QV.SN().getResources());
            YX();
            this.QZ.setClickable(true);
            if (!z || this.QW.JZ() == FunctionState.INTERVAL) {
                C0090a.bvo("EffectPageManager", "function state: " + this.QW.JZ());
                Zd();
            } else {
                Zg();
            }
        }
    }

    private void YX() {
        this.Rc = new C0508e(this.QV.SN(), this.Rg, this.QY.ow());
        this.QV.TP(this.Rc);
        ((ActivityBase) this.QV.SN()).arG(this.Rc);
        this.Rc.fB(this.QY.ow());
        this.Rc.fC(new am(this));
    }

    public void YD() {
        if (YS()) {
            this.QV.TQ(this.Rc);
            YN();
            if (this.QY.getVisibility() == 8) {
                this.Rc.release();
                this.Rc = null;
            } else {
                this.QY.setVisibility(8);
                this.QY.getViewTreeObserver().addOnDrawListener(this.Re);
            }
            this.Rb.removeCallbacksAndMessages(null);
        }
    }

    public void YM(long j) {
        if (this.QZ != null && this.QZ.getVisibility() == 0) {
            YW();
            if (!YY(this.Ri)) {
                if (j > 0) {
                    this.Ri.setStartDelay(j);
                } else {
                    this.Ri.setStartDelay(0);
                }
                this.Ri.start();
            }
        }
    }

    public void Zh() {
        if (this.Rc != null) {
            this.QV.TQ(this.Rc);
        }
        YX();
    }

    private boolean YY(Animator animator) {
        if (animator != null) {
            return !animator.isStarted() ? animator.isRunning() : true;
        } else {
            return false;
        }
    }

    private void YN() {
        if (this.Ri != null) {
            if (this.Ri.isStarted()) {
                this.Ri.end();
            }
            this.Ri.cancel();
        }
    }

    private void YW() {
        if (this.Ri == null) {
            TimeInterpolator pathInterpolator = new PathInterpolator(0.24f, 0.09f, 0.3f, 1.0f);
            TimeInterpolator linearInterpolator = new LinearInterpolator();
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.QZ, View.SCALE_X, new float[]{0.4f, 1.0f});
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.QZ, View.SCALE_Y, new float[]{0.4f, 1.0f});
            ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.QZ, View.ALPHA, new float[]{0.0f, 1.0f});
            ofFloat.setDuration(100);
            ofFloat.setInterpolator(pathInterpolator);
            ofFloat2.setDuration(100);
            ofFloat2.setInterpolator(pathInterpolator);
            ofFloat3.setDuration(100);
            ofFloat3.setInterpolator(linearInterpolator);
            this.Ri = new AnimatorSet();
            this.Ri.playTogether(new Animator[]{ofFloat, ofFloat2, ofFloat3});
            this.Ri.addListener(new an(this));
        }
    }

    public boolean onBackPressed() {
        boolean z = false;
        if (!YS()) {
            return false;
        }
        boolean YZ = YZ();
        if (!YZ) {
            return false;
        }
        C0458b adi = C0458b.adi();
        if (!YZ) {
            z = true;
        }
        adi.adj(new C0470p(this, z));
        return true;
    }

    public void YI(float f) {
        if (YS() && this.QY != null) {
            this.QY.ox(f);
        }
    }

    private void Zg() {
        this.QY.oy();
    }

    public boolean YH() {
        if (YS() && this.Rc != null) {
            return this.Rc.fD();
        }
        return false;
    }

    public boolean YZ() {
        if (YS() && this.Rc != null) {
            return this.Rc.fE();
        }
        return false;
    }

    public void YQ() {
        if (YT() && YS()) {
            this.QY.setVisibility(8);
            C0090a.bvo("EffectPageManager", "debug, excute click effect button");
            YP();
            YO(this.Rg.tw(), true);
            this.QV.SY().tU(32);
        }
    }

    public void YK() {
        if (YT() && YS()) {
            YP();
            YO(this.Rg.tw(), false);
            this.QY.oz();
            this.QV.SZ(4);
        }
    }

    public void YR(boolean z) {
        if (YS()) {
            if (!z) {
                this.QY.oA(false);
            } else if (this.QW.JX(UIState.GRID_EFFECT)) {
                this.QY.oA(true);
            }
        }
    }

    public void YG(int i) {
        if (YS()) {
            if (i != 0) {
                YN();
            }
            if (this.QZ != null) {
                this.QZ.setVisibility(i);
            }
        }
    }

    public void YL(boolean z) {
        if (this.QZ != null) {
            this.QZ.setClickable(z);
        }
    }

    public void YJ(int i, boolean z) {
        if (YS() && this.QZ != null) {
            this.QZ.fc(i, z);
        }
    }

    private void YP() {
        if (!this.Rd.equals(this.Rg.tw()) && ("none".equals(this.Rd) || "none".equals(this.Rg.tw()))) {
            if ("none".equals(this.Rg.tw())) {
                if (this.QZ.getBackground() != null) {
                    this.QZ.setBackgroundResource(R.drawable.effect_grid_none_button);
                } else {
                    this.QZ.setImageResource(R.drawable.effect_grid_none_button);
                }
            } else if (this.QZ.getBackground() != null) {
                this.QZ.setBackgroundResource(R.drawable.effect_grid_button);
            } else {
                this.QZ.setImageResource(R.drawable.effect_grid_button);
            }
        }
        this.Rd = this.Rg.tw();
    }

    private boolean YT() {
        return this.Rc != null;
    }

    private void YU(View view, ListPreference listPreference, int i) {
        this.QY = (EffectPage) view.findViewById(i);
        Size Gv = this.QV.Tn().Gv();
        this.QY.setVisibility(8);
        this.QY.oB(listPreference, ((float) Gv.width) / ((float) Gv.height));
        this.QY.oC(new ao(this));
        this.QY.oD(new ap(this));
    }

    private void YV(View view, int i) {
        this.QZ = (RotateImageView) view.findViewById(i);
        C0313R.ach(this.QZ);
        this.QZ.setOnClickListener(new aq(this));
        YP();
        LayoutParams layoutParams = (LayoutParams) this.QZ.getLayoutParams();
        this.QX = new C0345t(this, layoutParams.width, layoutParams.height, layoutParams.bottomMargin, layoutParams.rightMargin);
        this.Rh = new C0345t(this, -2, -2, this.QV.SN().getResources().getDimensionPixelOffset(R.dimen.dimens_30), this.QV.SN().getResources().getDimensionPixelOffset(R.dimen.dimens_20));
    }

    private boolean YS() {
        return this.Rg != null;
    }

    private void Zc() {
        if (this.Rf != null) {
            this.Rf.Zx();
        }
    }

    private void Za() {
        if (this.Rf != null) {
            this.Rf.Zv();
        }
    }

    private void Zb() {
        if (this.Rf != null) {
            this.Rf.Zw();
        }
    }

    private void Zf(C0345t c0345t) {
        LayoutParams layoutParams = (LayoutParams) this.QZ.getLayoutParams();
        layoutParams.rightMargin = c0345t.Rm;
        layoutParams.bottomMargin = c0345t.Rk;
        layoutParams.width = c0345t.Rn;
        layoutParams.height = c0345t.Rl;
        this.QZ.requestLayout();
    }

    private void YO(String str, boolean z) {
        this.Rc.fJ(str, z);
        this.QV.UR().m35l();
    }

    private void Zd() {
        Za();
        Zf(this.QX);
        this.QW.Kf(UIState.GRID_EFFECT);
    }

    private void Ze() {
        Zf(this.Rh);
        Zc();
    }
}
