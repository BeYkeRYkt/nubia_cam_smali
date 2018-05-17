package com.android.common.independentFocusExposure;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.app.Activity;
import android.content.SharedPreferences;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.Camera.Area;
import android.os.Handler;
import android.view.MotionEvent;
import android.widget.RelativeLayout.LayoutParams;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0305G;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.appService.IDualCameraControl$DualCameraMode;
import com.android.common.appService.PhysicalShutterButtonManager$ButtonState;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.DeviceState;
import com.android.common.custom.C0421M;
import com.android.common.ui.RotateLayout;
import com.p010a.C0090a;
import java.util.ArrayList;
import java.util.List;

public class C0586b extends C0585t {
    private C0590f JX;
    private boolean JY;
    AnimatorSet JZ;
    private boolean KA;
    private boolean KB;
    private boolean KC;
    private boolean KD;
    private ObjectAnimator KE;
    private ObjectAnimator KF;
    private C0591g KG;
    private PropertyValuesHolder KH;
    private PropertyValuesHolder KI;
    private PropertyValuesHolder KJ;
    private PropertyValuesHolder KK;
    private LayoutParams KL;
    private int KM;
    private int KN;
    AnimatorSet Ka;
    private int[] Kb;
    private int[] Kc;
    private int Kd;
    private Runnable Ke;
    private Runnable Kf;
    private List Kg;
    private int Kh;
    private CameraFocusIndicatorView Ki;
    private RotateLayout Kj;
    private CameraFocusService$FocusIndicatorState Kk;
    private int Kl;
    private int Km;
    private CameraFocusService$FocusModeState Kn;
    private int Ko;
    private int Kp;
    private int Kq;
    private final Handler Kr;
    private boolean Ks;
    private boolean Kt;
    private boolean Ku;
    private boolean Kv;
    private boolean Kw;
    private int Kx;
    private Matrix Ky;
    private boolean Kz;
    private int mState;

    public C0586b(C0329e c0329e) {
        this.Kz = false;
        this.Ky = null;
        this.Kg = null;
        this.Kj = null;
        this.Ki = null;
        this.Kk = CameraFocusService$FocusIndicatorState.IDLE;
        this.Ko = C0616j.aoT(66);
        this.Kh = C0616j.aoT(66);
        this.Km = C0616j.aoT(360);
        this.Kl = C0616j.aoT(640);
        this.Kc = new int[2];
        this.mState = 0;
        this.Kw = false;
        this.Kb = new int[2];
        this.KH = null;
        this.KI = null;
        this.KJ = null;
        this.KK = null;
        this.KE = null;
        this.KF = null;
        this.Ku = false;
        this.JZ = new AnimatorSet();
        this.Ka = new AnimatorSet();
        this.KA = true;
        this.Kt = false;
        this.Kv = false;
        this.Ke = new C0587c();
        this.Kf = new C0588d();
        this.Kr = new C0589e();
        this.Ks = false;
        this.KN = 0;
        this.Kn = CameraFocusService$FocusModeState.CAF;
        this.KB = false;
        this.JY = false;
        this.Kq = 0;
        this.Kp = 0;
        this.KD = false;
        this.KC = false;
        this.Kd = 90;
        this.JX = new C0590f();
        this.Ky = new Matrix();
        this.NB = c0329e;
        if (this.Kg == null) {
            this.Kg = new ArrayList();
            this.Kg.add(new Area(new Rect(), 1));
        }
        this.Kd = this.NB.TN();
        this.NC = Mf().SN().getResources().getDimensionPixelSize(R.dimen.topbar_height);
        this.ND = Mf().SN().getResources().getDimensionPixelSize(R.dimen.bottombar_height);
    }

    private void MY() {
        Matrix matrix = new Matrix();
        C0616j.aoY(matrix, this.Kz, this.Kd, this.Km, this.Kl);
        matrix.invert(this.Ky);
    }

    public C0329e Mf() {
        return this.NB;
    }

    public void LH(C0305G c0305g) {
        this.Km = c0305g.aaX();
        this.Kl = c0305g.aaY();
        c0305g.aaZ(this.Kc);
        this.Kq = this.Km / 2;
        this.Kp = this.Kc[1] + (this.Kl / 2);
        MY();
        C0090a.m1e("CameraFocusService", "setFocusFrameSize, mHalfWindowHeight = " + this.Kp);
    }

    public void LG(Activity activity, C0305G c0305g) {
        this.Kj = (RotateLayout) activity.findViewById(R.id.focus_indicator_rotate_layout_custom);
        this.Ki = (CameraFocusIndicatorView) activity.findViewById(R.id.focus_indicator_custom);
        this.Ki.Qh(this);
        this.Ki.Qi();
        if (Ms()) {
            this.Ku = true;
        }
        Mo();
        Mp();
        LH(c0305g);
    }

    public void MV(CameraFocusService$FocusIndicatorState cameraFocusService$FocusIndicatorState) {
        if (cameraFocusService$FocusIndicatorState != CameraFocusService$FocusIndicatorState.FOCUSED || this.NB.SP() != CameraMember.NORMAL || !this.NB.TO()) {
            this.Kk = cameraFocusService$FocusIndicatorState;
        }
    }

    public CameraFocusService$FocusIndicatorState LF() {
        return this.Kk;
    }

    public boolean LL() {
        return this.KN > 10;
    }

    public void LM() {
        MV(CameraFocusService$FocusIndicatorState.IDLE);
        MU(false);
        this.KN = 0;
        this.Ks = false;
    }

    public void MH(MotionEvent motionEvent) {
        if (Mv() && this.Kj != null && this.Kn != CameraFocusService$FocusModeState.MANUAL && this.Kj.getVisibility() != 8 && MC()) {
            int round = Math.round(motionEvent.getX());
            int round2 = Math.round(motionEvent.getY());
            if (!this.Kv) {
                MS();
            }
            if (this.Kv || !ME(round, round2)) {
                this.Kv = true;
                this.KN++;
                if (this.KN < 2) {
                    this.JZ.cancel();
                    this.Ki.setVisibility(0);
                    if (!this.Kt) {
                        this.Ki.Qj(R.drawable.ic_focus_metering_focused_big);
                    }
                    this.KL = (LayoutParams) this.Kj.getLayoutParams();
                    if (Qg()) {
                        this.NC = Mf().SN().getResources().getDimensionPixelSize(R.dimen.topbar_height);
                        this.ND = Mf().SN().getResources().getDimensionPixelSize(R.dimen.bottombar_height);
                    } else {
                        this.NC = 0;
                        this.ND = 0;
                    }
                }
                if (this.KN > 10) {
                    if (!this.Ks && this.Ku) {
                        this.Kr.sendEmptyMessageDelayed(99, 0);
                        this.Ks = true;
                    }
                    if (this.Kj.getTranslationX() != 0.0f) {
                        this.Kj.setTranslationX(0.0f);
                    }
                    if (this.Kj.getTranslationY() != 0.0f) {
                        this.Kj.setTranslationY(0.0f);
                    }
                    this.Kx = C0616j.aoN((round - this.Kc[0]) - (this.Ko / 2), 0, this.Km - this.Ko);
                    this.KM = C0616j.aoN((round2 - this.Kc[1]) - (this.Kh / 2), this.NC, (this.Kl - this.Kh) - this.ND);
                    this.KL.setMargins(this.Kx, this.KM, 0, 0);
                    int[] rules = this.KL.getRules();
                    rules[13] = 0;
                    rules[9] = 1;
                    this.Kj.requestLayout();
                }
                if (motionEvent.getAction() == 1) {
                    C0090a.bvm("CameraFocusService", "CFS -- touch up");
                    this.KN = 0;
                    this.Ks = false;
                    LY(this.Ko, this.Kh, 1.0f, round - this.Kc[0], round2 - this.Kc[1], this.Km, this.Kl, ((Area) this.Kg.get(0)).rect);
                    this.JZ.start();
                    this.Kw = true;
                    MR(1);
                    if (Me()) {
                        this.NB.SU().RP();
                    } else {
                        this.Kn = CameraFocusService$FocusModeState.AUTO;
                        this.NB.SZ(8);
                        LW();
                    }
                }
            }
        }
    }

    private boolean Mv() {
        if (this.NB.Tn() == null || this.NB.Tn().Gk() <= 0) {
            return false;
        }
        return true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void LB(int r10, int r11) {
        /*
        r9 = this;
        r0 = r9.Mv();
        if (r0 == 0) goto L_0x000a;
    L_0x0006:
        r0 = r9.Kj;
        if (r0 != 0) goto L_0x000b;
    L_0x000a:
        return;
    L_0x000b:
        r0 = r9.Kn;
        r1 = com.android.common.independentFocusExposure.CameraFocusService$FocusModeState.MANUAL;
        if (r0 == r1) goto L_0x000a;
    L_0x0011:
        r0 = r9.Kj;
        r0 = r0.getVisibility();
        r1 = 8;
        if (r0 == r1) goto L_0x000a;
    L_0x001b:
        r0 = r9.MC();
        if (r0 == 0) goto L_0x000a;
    L_0x0021:
        r0 = 10;
        r0 = com.android.common.C0616j.aoT(r0);
        if (r10 < r0) goto L_0x0034;
    L_0x0029:
        r0 = r9.Km;
        r1 = 10;
        r1 = com.android.common.C0616j.aoT(r1);
        r0 = r0 - r1;
        if (r10 <= r0) goto L_0x0035;
    L_0x0034:
        return;
    L_0x0035:
        r0 = r9.Qg();
        if (r0 == 0) goto L_0x007c;
    L_0x003b:
        r0 = r9.Mf();
        r0 = r0.SN();
        r0 = r0.getResources();
        r1 = 2131558432; // 0x7f0d0020 float:1.874218E38 double:1.0531297934E-314;
        r0 = r0.getDimensionPixelSize(r1);
        r9.NC = r0;
        r0 = r9.Mf();
        r0 = r0.SN();
        r0 = r0.getResources();
        r1 = 2131558431; // 0x7f0d001f float:1.8742178E38 double:1.053129793E-314;
        r0 = r0.getDimensionPixelSize(r1);
        r9.ND = r0;
        r0 = r9.Kh;
        r0 = r0 / 2;
        r0 = r11 - r0;
        r1 = r9.NC;
        if (r0 < r1) goto L_0x007b;
    L_0x006f:
        r0 = r9.Kh;
        r0 = r0 / 2;
        r0 = r0 + r11;
        r1 = r9.Kl;
        r2 = r9.ND;
        r1 = r1 - r2;
        if (r0 <= r1) goto L_0x007c;
    L_0x007b:
        return;
    L_0x007c:
        r0 = r9.JZ;
        r0.cancel();
        r0 = r9.Ka;
        r0.cancel();
        r0 = r9.Ki;
        r1 = 0;
        r0.setVisibility(r1);
        r0 = r9.Kt;
        if (r0 != 0) goto L_0x0098;
    L_0x0090:
        r0 = r9.Ki;
        r1 = 2130837742; // 0x7f0200ee float:1.7280447E38 double:1.052773725E-314;
        r0.Qj(r1);
    L_0x0098:
        r1 = r9.Ko;
        r2 = r9.Kh;
        r6 = r9.Km;
        r7 = r9.Kl;
        r0 = r9.Kg;
        r3 = 0;
        r0 = r0.get(r3);
        r0 = (android.hardware.Camera.Area) r0;
        r8 = r0.rect;
        r3 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r0 = r9;
        r4 = r10;
        r5 = r11;
        r0.LY(r1, r2, r3, r4, r5, r6, r7, r8);
        r0 = r9.Ku;
        if (r0 == 0) goto L_0x0148;
    L_0x00b7:
        r0 = r9.Kj;
        r0 = r0.animate();
        r1 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r0 = r0.alpha(r1);
        r1 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r0 = r0.scaleX(r1);
        r1 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r0 = r0.scaleY(r1);
        r1 = r9.Ko;
        r1 = r1 / 2;
        r1 = r10 - r1;
        r2 = r9.Km;
        r3 = r9.Ko;
        r2 = r2 - r3;
        r3 = 0;
        r1 = com.android.common.C0616j.aoN(r1, r3, r2);
        r1 = (float) r1;
        r0 = r0.x(r1);
        r1 = r9.Kh;
        r1 = r1 / 2;
        r1 = r11 - r1;
        r2 = r9.Kl;
        r3 = r9.Kh;
        r2 = r2 - r3;
        r3 = 0;
        r1 = com.android.common.C0616j.aoN(r1, r3, r2);
        r1 = (float) r1;
        r0 = r0.y(r1);
        r2 = 280; // 0x118 float:3.92E-43 double:1.383E-321;
        r0 = r0.setDuration(r2);
        r1 = r9.Ke;
        r0 = r0.withEndAction(r1);
        r0.start();
    L_0x0108:
        r0 = 0;
        r9.KA = r0;
        r0 = 0;
        r9.Ku = r0;
        r0 = r9.Me();
        if (r0 != 0) goto L_0x0188;
    L_0x0114:
        r0 = com.android.common.independentFocusExposure.CameraFocusService$FocusModeState.AUTO;
        r9.Kn = r0;
        r0 = r9.Kr;
        r1 = 109; // 0x6d float:1.53E-43 double:5.4E-322;
        r0.removeMessages(r1);
        r0 = 1;
        r9.MR(r0);
        r0 = r9.NB;
        r1 = 8;
        r0.SZ(r1);
        r9.LW();
        r0 = com.android.common.custom.C0421M.dC();
        r0 = r0.dD();
        r0 = r0.dk();
        if (r0 == 0) goto L_0x0147;
    L_0x013b:
        r9.MM();
        r0 = r9.Kr;
        r2 = 5000; // 0x1388 float:7.006E-42 double:2.4703E-320;
        r1 = 110; // 0x6e float:1.54E-43 double:5.43E-322;
        r0.sendEmptyMessageDelayed(r1, r2);
    L_0x0147:
        return;
    L_0x0148:
        r0 = r9.Kj;
        r0 = r0.animate();
        r1 = r9.Ko;
        r1 = r1 / 2;
        r1 = r10 - r1;
        r2 = r9.Km;
        r3 = r9.Ko;
        r2 = r2 - r3;
        r3 = 0;
        r1 = com.android.common.C0616j.aoN(r1, r3, r2);
        r1 = (float) r1;
        r0 = r0.x(r1);
        r1 = r9.Kh;
        r1 = r1 / 2;
        r1 = r11 - r1;
        r2 = r9.Kl;
        r3 = r9.Kh;
        r2 = r2 - r3;
        r3 = 0;
        r1 = com.android.common.C0616j.aoN(r1, r3, r2);
        r1 = (float) r1;
        r0 = r0.y(r1);
        r2 = 280; // 0x118 float:3.92E-43 double:1.383E-321;
        r0 = r0.setDuration(r2);
        r1 = r9.Ke;
        r0 = r0.withEndAction(r1);
        r0.start();
        goto L_0x0108;
    L_0x0188:
        r0 = r9.NB;
        r0 = r0.SU();
        r0.RP();
        goto L_0x0147;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.independentFocusExposure.b.LB(int, int):void");
    }

    public void MM() {
        if (this.Kr != null) {
            this.Kr.removeMessages(110);
        }
    }

    private int LX(int i, int i2) {
        if (i < i2) {
            return i2;
        }
        return i;
    }

    private void Mo() {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.Kj, "alpha", new float[]{0.8f, 0.25f}).setDuration(220);
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.Kj, "alpha", new float[]{0.25f, 0.8f}).setDuration(220);
        ObjectAnimator duration3 = ObjectAnimator.ofFloat(this.Kj, "alpha", new float[]{0.8f, 0.25f}).setDuration(220);
        ObjectAnimator duration4 = ObjectAnimator.ofFloat(this.Kj, "alpha", new float[]{0.25f, 0.8f}).setDuration(220);
        ObjectAnimator duration5 = ObjectAnimator.ofFloat(this.Kj, "alpha", new float[]{0.8f, 0.25f}).setDuration(220);
        ObjectAnimator duration6 = ObjectAnimator.ofFloat(this.Kj, "alpha", new float[]{0.25f, 1.0f}).setDuration(220);
        this.JZ = null;
        this.JZ = new AnimatorSet();
        this.JZ.playSequentially(new Animator[]{duration, duration2, duration3, duration4, duration5, duration6});
    }

    private void Mp() {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.Kj, "alpha", new float[]{0.8f, 0.25f}).setDuration(220);
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.Kj, "alpha", new float[]{0.25f, 0.8f}).setDuration(220);
        ObjectAnimator duration3 = ObjectAnimator.ofFloat(this.Kj, "alpha", new float[]{0.8f, 0.25f}).setDuration(220);
        ObjectAnimator duration4 = ObjectAnimator.ofFloat(this.Kj, "alpha", new float[]{0.25f, 0.8f}).setDuration(220);
        ObjectAnimator duration5 = ObjectAnimator.ofFloat(this.Kj, "alpha", new float[]{0.8f, 0.25f}).setDuration(220);
        ObjectAnimator duration6 = ObjectAnimator.ofFloat(this.Kj, "alpha", new float[]{0.25f, 0.0f}).setDuration(220);
        this.Ka = null;
        this.Ka = new AnimatorSet();
        this.Ka.playSequentially(new Animator[]{duration, duration2, duration3, duration4, duration5, duration6});
    }

    private boolean ME(int i, int i2) {
        if (Math.abs(i - this.Kb[0]) < C0616j.aoT(23)) {
            return Math.abs(i2 - this.Kb[1]) < C0616j.aoT(23);
        } else {
            return false;
        }
    }

    private void MS() {
        if (this.Kj != null) {
            r0 = new int[2];
            this.Kj.getLocationInWindow(r0);
            this.Kb[0] = LX(r0[0] + (this.Ko / 2), this.Ko / 2);
            this.Kb[1] = LX(r0[1] + (this.Ko / 2), this.Ko / 2);
        }
    }

    public void MU(boolean z) {
        this.Kv = z;
    }

    private void LY(int i, int i2, float f, int i3, int i4, int i5, int i6, Rect rect) {
        int i7 = (int) (((float) i) * f);
        int i8 = (int) (((float) i2) * f);
        int aoN = C0616j.aoN(i3 - (i7 / 2), 0, i5 - i7);
        int aoN2 = C0616j.aoN(i4 - (i8 / 2), 0, i6 - i8);
        RectF rectF = new RectF((float) aoN, (float) aoN2, (float) (i7 + aoN), (float) (i8 + aoN2));
        this.Ky.mapRect(rectF);
        C0616j.aoZ(rectF, rect);
    }

    public List Mj() {
        if (this.Ku) {
            return null;
        }
        try {
            if (!Mq(((Area) this.Kg.get(0)).rect, ((Area) this.Kg.get(0)).weight)) {
                return null;
            }
        } catch (Exception e) {
        }
        return this.Kg;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean Mq(android.graphics.Rect r6, int r7) {
        /*
        r5 = this;
        r4 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r1 = -1000; // 0xfffffffffffffc18 float:NaN double:NaN;
        r3 = 1;
        r2 = 0;
        r0 = r6.left;
        if (r0 != 0) goto L_0x0019;
    L_0x000a:
        r0 = r6.right;
        if (r0 != 0) goto L_0x0019;
    L_0x000e:
        r0 = r6.top;
        if (r0 != 0) goto L_0x0019;
    L_0x0012:
        r0 = r6.bottom;
        if (r0 != 0) goto L_0x0019;
    L_0x0016:
        if (r7 != r3) goto L_0x0019;
    L_0x0018:
        return r2;
    L_0x0019:
        r0 = r6.left;
        if (r0 != 0) goto L_0x002a;
    L_0x001d:
        r0 = r6.right;
        if (r0 != 0) goto L_0x002a;
    L_0x0021:
        r0 = r6.top;
        if (r0 != 0) goto L_0x002a;
    L_0x0025:
        r0 = r6.bottom;
        if (r0 != 0) goto L_0x002a;
    L_0x0029:
        return r3;
    L_0x002a:
        r0 = r6.left;
        if (r0 >= r1) goto L_0x002f;
    L_0x002e:
        return r2;
    L_0x002f:
        r0 = r6.top;
        if (r0 >= r1) goto L_0x0034;
    L_0x0033:
        return r2;
    L_0x0034:
        r0 = r6.right;
        if (r0 > r4) goto L_0x003c;
    L_0x0038:
        r0 = r6.bottom;
        if (r0 <= r4) goto L_0x003d;
    L_0x003c:
        return r2;
    L_0x003d:
        r0 = r6.left;
        r1 = r6.right;
        if (r0 < r1) goto L_0x0044;
    L_0x0043:
        return r2;
    L_0x0044:
        r0 = r6.top;
        r1 = r6.bottom;
        if (r0 < r1) goto L_0x004b;
    L_0x004a:
        return r2;
    L_0x004b:
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.independentFocusExposure.b.Mq(android.graphics.Rect, int):boolean");
    }

    public void MR(int i) {
        this.Kr.removeMessages(98);
        this.mState = i;
    }

    public int Mh() {
        return this.mState;
    }

    public void MW(boolean z) {
        this.Kw = z;
    }

    public void MO() {
        if (this.Kn != CameraFocusService$FocusModeState.MANUAL) {
            this.Kr.sendEmptyMessageDelayed(99, 0);
        }
    }

    public void LN() {
        if (this.NB.SQ() == C0384o.Jr().Js() || this.NB.SQ() == C0384o.Jr().Jx()) {
            this.NB.TP(this.JX);
            this.JX.gc(this.NB.To());
        }
    }

    public void LO() {
        if (this.NB.SQ() == C0384o.Jr().Js() || this.NB.SQ() == C0384o.Jr().Jx()) {
            this.NB.TQ(this.JX);
        }
    }

    public void LD(boolean z) {
        MQ(z);
        if (this.Kj != null && this.Kj.getVisibility() != 8) {
            if (!(!this.KD || z || Mu())) {
                this.Kr.removeMessages(108);
                this.NB.Tt();
                this.KD = false;
            }
            if (!z && this.NB.Td().NE() && this.Ku) {
                this.Ka.cancel();
                this.Kj.setAlpha(0.0f);
            }
            if (z && this.NB.Td().NE()) {
                this.Ki.Qj(R.drawable.ic_focus_metering_focused_big);
                if (!this.Ku) {
                    this.Ku = true;
                    this.NB.SZ(8);
                }
                if (MA()) {
                    this.Ki.setVisibility(8);
                } else if (this.Kj.getWidth() != 0) {
                    this.Ki.setVisibility(0);
                    MK();
                }
            }
        }
    }

    private boolean MA() {
        if (this.NB.SX().JV() == DeviceState.VIDEO_RECORDING || this.NB.SX().JV() == DeviceState.VIDEO_RECORDING_PAUSED || this.NB.SX().JV() == DeviceState.VIDEO_RECORDING_SNAPSHOT) {
            return true;
        }
        return false;
    }

    private void MK() {
        this.KH = PropertyValuesHolder.ofFloat("scaleX", new float[]{2.0f, 2.0f});
        this.KI = PropertyValuesHolder.ofFloat("scaleY", new float[]{2.0f, 2.0f});
        this.KE = ObjectAnimator.ofPropertyValuesHolder(this.Kj, new PropertyValuesHolder[]{this.KH, this.KI}).setDuration(0);
        this.KJ = PropertyValuesHolder.ofFloat("x", new float[]{(float) ((C0616j.aoT(360) / 2) - (this.Kj.getWidth() / 2)), (float) ((C0616j.aoT(360) / 2) - (this.Kj.getWidth() / 2))});
        this.KK = PropertyValuesHolder.ofFloat("y", new float[]{(float) ((this.Kp - (this.Kj.getHeight() / 2)) - this.Kc[1]), (float) ((this.Kp - (this.Kj.getHeight() / 2)) - this.Kc[1])});
        this.KF = ObjectAnimator.ofPropertyValuesHolder(this.Kj, new PropertyValuesHolder[]{this.KJ, this.KK}).setDuration(0);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{this.KE, this.KF});
        animatorSet.addListener(new C0604u(this));
        animatorSet.start();
    }

    public boolean Mm() {
        return this.KA;
    }

    public void MZ(boolean z) {
        this.KA = z;
    }

    public void MP(boolean z) {
        C0090a.bvm("CameraFocusService", "setAfLock flag = " + z);
        if (this.Kn != CameraFocusService$FocusModeState.MANUAL) {
            this.Kt = z;
            if (this.Kt) {
                this.Ki.Qj(R.drawable.ic_focus_metering_focused_locked);
                this.Kn = CameraFocusService$FocusModeState.EDOF;
            } else {
                this.Ki.Qj(R.drawable.ic_focus_metering_focused);
                this.Kn = CameraFocusService$FocusModeState.CAF;
            }
            this.NB.SZ(8);
            this.NB.TR();
        }
    }

    public void MT(boolean z) {
        if ((z || this.Kn != CameraFocusService$FocusModeState.MANUAL) && (!z || this.Kn == CameraFocusService$FocusModeState.MANUAL)) {
            if (z) {
                this.Kn = CameraFocusService$FocusModeState.CAF;
                this.Kt = false;
                if (!this.NB.Td().NF()) {
                    this.Ki.setVisibility(0);
                    this.Ki.Qj(R.drawable.ic_focus_metering_focused);
                    this.Kj.setAlpha(1.0f);
                    this.Kj.setScaleX(1.0f);
                    this.Kj.setScaleY(1.0f);
                    this.KA = false;
                }
            } else {
                this.Kn = CameraFocusService$FocusModeState.MANUAL;
                this.Ki.setVisibility(8);
            }
            this.mState = 0;
            MQ(false);
            MN();
        }
    }

    public boolean Me() {
        return this.Kt;
    }

    public void LC() {
        boolean z = true;
        if (this.Ku) {
            C0090a.bvo("CameraFocusService", "Still in BigCAF mode, ignore longpress lock.");
            return;
        }
        this.NB.Tg();
        this.KH = PropertyValuesHolder.ofFloat("scaleX", new float[]{1.0f, 1.5f});
        this.KI = PropertyValuesHolder.ofFloat("scaleY", new float[]{1.0f, 1.5f});
        this.KE = ObjectAnimator.ofPropertyValuesHolder(this.Kj, new PropertyValuesHolder[]{this.KH, this.KI}).setDuration(100);
        PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat("scaleX", new float[]{1.5f, 1.0f});
        PropertyValuesHolder ofFloat2 = PropertyValuesHolder.ofFloat("scaleY", new float[]{1.5f, 1.0f});
        ObjectAnimator duration = ObjectAnimator.ofPropertyValuesHolder(this.Kj, new PropertyValuesHolder[]{ofFloat, ofFloat2}).setDuration(100);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(new Animator[]{this.KE, duration});
        animatorSet.start();
        if (this.Kt) {
            if (this.Kt) {
                z = false;
            }
            MP(z);
        } else {
            if (this.Kt) {
                z = false;
            }
            MP(z);
        }
        MQ(false);
        C0616j.apa(this.NB.SN(), "lock_focus", "lock_focus");
    }

    public boolean Mi() {
        return this.Kv;
    }

    public void setVisibility(int i) {
        if (this.Kj != null) {
            if (this.NB.SM().arD().Sz() == IDualCameraControl$DualCameraMode.DUAL_CAMERA_APERTURE_MODE && i == 8) {
                i = 4;
            }
            this.Kj.setVisibility(i);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void MF(boolean r7) {
        /*
        r6 = this;
        r5 = 109; // 0x6d float:1.53E-43 double:5.4E-322;
        r4 = 3;
        r3 = 2;
        r0 = "CameraFocusService";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "onAutoFocus -- focused = ";
        r1 = r1.append(r2);
        r1 = r1.append(r7);
        r2 = ", mState = ";
        r1 = r1.append(r2);
        r2 = r6.mState;
        r1 = r1.append(r2);
        r1 = r1.toString();
        com.p010a.C0090a.m1e(r0, r1);
        r0 = r6.MD();
        if (r0 == 0) goto L_0x0033;
    L_0x0031:
        if (r7 == 0) goto L_0x00a5;
    L_0x0033:
        r0 = r6.Kt;
        if (r0 != 0) goto L_0x003f;
    L_0x0037:
        r0 = r6.Ki;
        r1 = 2130837742; // 0x7f0200ee float:1.7280447E38 double:1.052773725E-314;
        r0.Qj(r1);
    L_0x003f:
        r0 = r6.mState;
        r1 = 1;
        if (r0 != r1) goto L_0x00c0;
    L_0x0044:
        r0 = r6.Kr;
        r1 = 107; // 0x6b float:1.5E-43 double:5.3E-322;
        r0.removeMessages(r1);
        r0 = r6.Ku;
        if (r0 == 0) goto L_0x00a6;
    L_0x004f:
        r0 = r6.Ka;
        r0.cancel();
        r0 = r6.Kj;
        r1 = 0;
        r0.setAlpha(r1);
    L_0x005a:
        r0 = r6.NB;
        r0 = r0.Td();
        r0.NG();
        r0 = r6.NB;
        r0 = r0.Te();
        r0.OW();
        if (r7 == 0) goto L_0x00b3;
    L_0x006e:
        r6.MR(r3);
        r0 = r6.Kt;
        if (r0 != 0) goto L_0x0075;
    L_0x0075:
        r0 = r6.Kt;
        if (r0 != 0) goto L_0x0085;
    L_0x0079:
        r0 = r6.Kr;
        r0.removeMessages(r5);
        r0 = r6.Kr;
        r2 = 150; // 0x96 float:2.1E-43 double:7.4E-322;
        r0.sendEmptyMessageDelayed(r5, r2);
    L_0x0085:
        r0 = r6.NB;
        r0 = r0.SU();
        r0 = r0.RP();
        r1 = r6.Mr();
        if (r1 == 0) goto L_0x009b;
    L_0x0095:
        r1 = r6.KC;
        if (r1 == 0) goto L_0x009b;
    L_0x0099:
        if (r0 == 0) goto L_0x00b7;
    L_0x009b:
        r0 = r6.Kr;
        r2 = 3000; // 0xbb8 float:4.204E-42 double:1.482E-320;
        r1 = 98;
        r0.sendEmptyMessageDelayed(r1, r2);
        return;
    L_0x00a5:
        return;
    L_0x00a6:
        r0 = r6.JZ;
        r0.cancel();
        r0 = r6.Kj;
        r1 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r0.setAlpha(r1);
        goto L_0x005a;
    L_0x00b3:
        r6.MR(r4);
        goto L_0x0075;
    L_0x00b7:
        r0 = r6.NB;
        r0.Tt();
        r0 = 0;
        r6.KC = r0;
        goto L_0x009b;
    L_0x00c0:
        r0 = r6.mState;
        r1 = 4;
        if (r0 != r1) goto L_0x009b;
    L_0x00c5:
        r0 = r6.Kr;
        r1 = 31;
        r0.removeMessages(r1);
        if (r7 == 0) goto L_0x00d5;
    L_0x00ce:
        r6.MR(r3);
    L_0x00d1:
        r6.LZ();
        goto L_0x009b;
    L_0x00d5:
        r6.MR(r4);
        goto L_0x00d1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.independentFocusExposure.b.MF(boolean):void");
    }

    private boolean MD() {
        return C0421M.dC().dD().dl();
    }

    public void MJ() {
        C0090a.m1e("CameraFocusService", "onPreviewStopped");
        MR(0);
        if (Ms()) {
            if (My()) {
                this.Kn = CameraFocusService$FocusModeState.MANUAL;
            } else {
                this.Kn = CameraFocusService$FocusModeState.CAF;
                this.KA = true;
                this.Ku = true;
            }
        }
        if (this.Ki != null) {
            this.Ki.setVisibility(4);
        }
        MN();
        MM();
    }

    public void MG(ArrayList arrayList) {
        if (6 == ((Integer) arrayList.get(0)).intValue() && 1 == ((Integer) arrayList.get(2)).intValue() && this.NB.Td().NE() && !this.NB.TE().Lk()) {
            if (this.Ki != null) {
                this.Ki.setVisibility(4);
                this.NB.Td().NH(4);
                this.NB.Te().OX(4);
            }
            if (C0616j.aoM(this.NB.SP(), this.NB.ST()) && !((Area) this.Kg.get(0)).rect.isEmpty()) {
                C0090a.bvo("CameraFocusService", "clear focus area");
                ((Area) this.Kg.get(0)).rect.setEmpty();
                this.NB.SZ(8);
            }
        }
        if (6 == ((Integer) arrayList.get(0)).intValue() && 1 == ((Integer) arrayList.get(2)).intValue() && this.KG != null) {
            this.KG.Nn();
        }
    }

    public CameraFocusService$FocusModeState Ml() {
        return this.Kn;
    }

    public void MX(CameraFocusService$FocusModeState cameraFocusService$FocusModeState) {
        this.Kn = cameraFocusService$FocusModeState;
    }

    public void LU() {
        if (Mt() && MB() && Mk().equals("manual") && Mn().getInt("maf_key", -1) > 0) {
            LV();
        }
    }

    public void Ma() {
        if (Mt() && MB()) {
            LT();
        }
    }

    private void LV() {
        this.NB.SM().arG(this.NB.SM().arF());
    }

    public void LT() {
        this.NB.SM().arH(this.NB.SM().arF());
    }

    public void LE() {
        if (this.Ki != null) {
            this.Ki.Qj(R.drawable.ic_focus_metering_focused);
            this.Kt = false;
            this.KB = false;
        }
    }

    private boolean Mt() {
        return Mn().getString("pref_fengzhi_focus_key", Mf().SN().getString(R.string.pref_fengzhi_focus_default)).equals("on");
    }

    private void LW() {
        if (this.mState == 1) {
            this.NB.TR();
        }
        MR(1);
        MQ(false);
        this.NB.TS();
        this.Kr.removeMessages(107);
        this.Kr.removeMessages(108);
    }

    public void LI() {
        C0090a.m1e("CameraFocusService", "onStatusRestore");
        this.Ku = true;
        this.KA = true;
        this.Kt = false;
        this.Kv = false;
        this.KB = false;
        this.Kn = CameraFocusService$FocusModeState.CAF;
        MR(0);
        MN();
        MM();
    }

    private boolean Ms() {
        return this.NB.TE().Ll();
    }

    private boolean MC() {
        CameraMember SP = this.NB.SP();
        if (SP == CameraMember.STARCLOUD || SP == CameraMember.STARTRACK || SP == CameraMember.LIGHTDRAW) {
            return false;
        }
        return true;
    }

    public void LJ(boolean z) {
        this.KB = z;
    }

    public String Mk() {
        CameraFocusService$FocusModeState cameraFocusService$FocusModeState = this.Kn;
        String str = "continuous-picture";
        if (this.KB) {
            return "edof";
        }
        if (cameraFocusService$FocusModeState == CameraFocusService$FocusModeState.CAF) {
            str = "continuous-picture";
        } else if (cameraFocusService$FocusModeState == CameraFocusService$FocusModeState.MACRO) {
            str = "macro";
        } else if (cameraFocusService$FocusModeState == CameraFocusService$FocusModeState.AUTO) {
            str = "auto";
        } else if (cameraFocusService$FocusModeState == CameraFocusService$FocusModeState.MANUAL) {
            str = "manual";
        } else if (cameraFocusService$FocusModeState == CameraFocusService$FocusModeState.EDOF) {
            str = "edof";
        }
        return str;
    }

    public boolean Mg() {
        if (this.Kn == CameraFocusService$FocusModeState.MANUAL) {
            return false;
        }
        return this.JY;
    }

    private void MQ(boolean z) {
        this.JY = z;
    }

    private boolean Mu() {
        return C0421M.dC().dD().bX();
    }

    private boolean Mr() {
        if (this.NB.SP() == CameraMember.NORMAL && this.NB.SQ() == C0384o.Jr().Js()) {
            return true;
        }
        return false;
    }

    private boolean MB() {
        if (this.NB.SP() == CameraMember.NORMAL || this.NB.SP() == CameraMember.PRO || this.NB.SP() == CameraMember.ELETRONIC || this.NB.SP() == CameraMember.SLOWSHUTTER || this.NB.SP() == CameraMember.INTERVALOMETER || this.NB.SP() == CameraMember.DNG || this.NB.SP() == CameraMember.STARTRACK || this.NB.SP() == CameraMember.MICROSPUR) {
            return true;
        }
        return false;
    }

    public void MI() {
        if (!Mz() && !this.Kt && this.NB.SQ() == C0384o.Jr().Js() && this.NB.SP() != CameraMember.LIGHTDRAW && this.NB.SP() != CameraMember.STARTRACK && this.NB.Tc().Mk() != "edof" && this.NB.Tc().Mk() != "manual") {
            this.Kn = CameraFocusService$FocusModeState.AUTO;
            MR(1);
            this.NB.SZ(8);
            LW();
        }
    }

    private boolean Mz() {
        return this.NB.TT().abl() == PhysicalShutterButtonManager$ButtonState.HALFPRESSUP;
    }

    private boolean My() {
        if (Mn() == null || Mn().getInt("maf_key", -1) == -1) {
            return false;
        }
        return true;
    }

    public boolean Mb() {
        if (this.mState == 2 || this.mState == 3) {
            LZ();
            return true;
        } else if (this.mState == 1) {
            C0090a.bvo("CameraFocusService", "delay capture when focusing");
            this.Kr.sendEmptyMessageDelayed(31, 900);
            MR(4);
            return false;
        } else if (this.mState != 0) {
            return false;
        } else {
            LZ();
            return true;
        }
    }

    public void LK() {
        if (this.Kr != null) {
            this.Kr.removeCallbacksAndMessages(null);
        }
    }

    public void ML() {
        if (this.Kr != null) {
            this.Kr.removeMessages(31);
        }
    }

    private void LZ() {
        Mf().TU();
        MR(0);
    }

    public boolean Mw() {
        return this.mState == 2 || this.mState == 3;
    }

    public boolean Mx() {
        return this.mState == 4;
    }

    public void Nb(boolean z) {
        this.KD = z;
        if (this.KD && Mr()) {
            this.Kr.sendEmptyMessageDelayed(108, 900);
        }
    }

    public void Na(boolean z) {
        this.KC = z;
        if (this.KC && Mr()) {
            this.Kr.sendEmptyMessageDelayed(107, 900);
        }
    }

    public void LS(Rect rect) {
        this.Ku = false;
        this.Kn = CameraFocusService$FocusModeState.AUTO;
        RectF rectF = new RectF(rect);
        this.Ky.mapRect(rectF);
        C0616j.aoZ(rectF, ((Area) this.Kg.get(0)).rect);
        this.NB.SZ(8);
        LW();
    }

    public void LP() {
        this.Kn = CameraFocusService$FocusModeState.CAF;
        this.Ku = true;
        this.NB.SZ(8);
    }

    private void Md() {
        if (Mr() && this.mState == 1 && this.KC) {
            C0090a.bvo("CameraFocusService", "force capture after auto focus for normal");
            MR(0);
            if (this.Ku) {
                this.Ka.cancel();
                this.Kj.setAlpha(0.0f);
            } else {
                this.JZ.cancel();
                this.Kj.setAlpha(1.0f);
            }
            this.NB.Td().NG();
            this.NB.Te().OW();
            if (!this.Kt) {
                this.Kn = CameraFocusService$FocusModeState.CAF;
                this.NB.SZ(8);
            }
            if (this.Kj != null && this.Kj.getVisibility() != 8) {
                this.NB.Tt();
                this.KC = false;
            }
        }
    }

    private void Mc() {
        if (Mr() && this.KD && !Mu()) {
            C0090a.bvo("CameraFocusService", "force capture after caf focus for normal");
            MQ(false);
            if (this.Kj != null && this.Kj.getVisibility() != 8) {
                this.NB.Tt();
                this.KD = false;
            }
        }
    }

    private void MN() {
        this.KD = false;
        this.KC = false;
        this.Kr.removeMessages(31);
        this.Kr.removeMessages(107);
        this.Kr.removeMessages(108);
    }

    private SharedPreferences Mn() {
        return this.NB.SS();
    }

    public void LQ(C0591g c0591g) {
        if (this.KG == null) {
            this.KG = c0591g;
        }
    }

    public void LR() {
        if (this.KG != null) {
            this.KG = null;
        }
    }
}
