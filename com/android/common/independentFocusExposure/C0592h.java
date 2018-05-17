package com.android.common.independentFocusExposure;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.app.Activity;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.Camera.Area;
import android.os.Handler;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0305G;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.DeviceState;
import com.android.common.custom.C0421M;
import com.android.common.ui.RotateLayout;
import com.android.common.ui.VerticalSeekBarForEv;
import com.p010a.C0090a;
import java.util.ArrayList;
import java.util.List;

public class C0592h extends C0585t {
    private boolean LA;
    private boolean LB;
    private boolean LC;
    private boolean LD;
    private int LE;
    private Matrix LF;
    private List LG;
    private boolean LH;
    private boolean LI;
    private boolean LJ;
    private ObjectAnimator LK;
    private ObjectAnimator LL;
    private PropertyValuesHolder LM;
    private PropertyValuesHolder LN;
    private PropertyValuesHolder LO;
    private PropertyValuesHolder LP;
    private LayoutParams LQ;
    private int LR;
    private int LS;
    private int LT;
    private int LU;
    private int LV;
    private VerticalSeekBarForEv LW;
    private int LX;
    private RotateLayout LY;
    AnimatorSet Lb;
    AnimatorSet Lc;
    private C0597m Ld;
    private int[] Le;
    private int[] Lf;
    private int Lg;
    private Runnable Lh;
    private Runnable Li;
    private Runnable Lj;
    private int Lk;
    private CameraExposureIndicatorView Ll;
    private RotateLayout Lm;
    private CameraExposureService$ExposureIndicatorState Ln;
    private TextView Lo;
    AnimatorSet Lp;
    AnimatorSet Lq;
    private RotateLayout Lr;
    private int Ls;
    private int Lt;
    private int Lu;
    private RelativeLayout Lv;
    private int Lw;
    private int Lx;
    private final Handler Ly;
    private boolean Lz;

    public C0592h(C0329e c0329e) {
        this.Lm = null;
        this.Ll = null;
        this.Ls = C0616j.aoT(66);
        this.Lk = C0616j.aoT(66);
        this.Lu = C0616j.aoT(360);
        this.Lt = C0616j.aoT(640);
        this.Lf = new int[2];
        this.Ln = CameraExposureService$ExposureIndicatorState.IDLE;
        this.LF = null;
        this.LG = null;
        this.LH = false;
        this.LR = 0;
        this.Le = new int[2];
        this.LM = null;
        this.LN = null;
        this.LO = null;
        this.LP = null;
        this.LK = null;
        this.LL = null;
        this.LB = false;
        this.Lb = new AnimatorSet();
        this.Lc = new AnimatorSet();
        this.Lp = new AnimatorSet();
        this.Lq = new AnimatorSet();
        this.Ly = new C0596l();
        this.Lz = false;
        this.LA = false;
        this.LD = false;
        this.LC = false;
        this.Lh = new C0593i();
        this.Li = new C0594j();
        this.Lj = new C0595k();
        this.LT = 0;
        this.LI = false;
        this.Lx = 0;
        this.Lw = 0;
        this.Lg = 90;
        this.LU = 0;
        this.LV = 0;
        this.LX = C0616j.aoT(140);
        this.Ld = new C0597m();
        this.LJ = true;
        this.Lv = null;
        this.LF = new Matrix();
        this.NB = c0329e;
        if (this.LG == null) {
            this.LG = new ArrayList();
            this.LG.add(new Area(new Rect(), 1));
        }
        this.Lg = this.NB.TN();
        Os();
        this.NC = NL().SN().getResources().getDimensionPixelSize(R.dimen.topbar_height);
        this.ND = NL().SN().getResources().getDimensionPixelSize(R.dimen.bottombar_height);
    }

    public void Nu(C0305G c0305g) {
        this.Lu = c0305g.aaX();
        this.Lt = c0305g.aaY();
        c0305g.aaZ(this.Lf);
        this.Lx = this.Lu / 2;
        this.Lw = this.Lf[1] + (this.Lt / 2);
        Os();
        C0090a.m1e("CameraExposureService", "setExposureFrameSize, mHalfWindowHeight = " + this.Lw);
    }

    public void Nt(Activity activity, C0305G c0305g) {
        this.Lm = (RotateLayout) activity.findViewById(R.id.exposure_indicator_rotate_layout);
        this.Ll = (CameraExposureIndicatorView) activity.findViewById(R.id.exposure_indicator);
        this.Ll.OE(this);
        this.Ll.OF();
        if (Oc()) {
            this.LB = true;
        }
        if (!Oe()) {
            this.Ll.setVisibility(8);
        }
        this.Lo = (TextView) activity.findViewById(R.id.exposure_textview);
        this.Lr = (RotateLayout) activity.findViewById(R.id.exposure_textview_rotate_layout);
        this.LY = (RotateLayout) activity.findViewById(R.id.exposure_seek_bar_rotate_layout);
        this.LW = (VerticalSeekBarForEv) activity.findViewById(R.id.exposure_seek_bar);
        this.LW.gF(this.NB);
        this.Lv = (RelativeLayout) activity.findViewById(R.id.foucus_face_content);
        NU();
        NV();
        NW();
        NX();
        Nu(c0305g);
    }

    public void Or(CameraExposureService$ExposureIndicatorState cameraExposureService$ExposureIndicatorState) {
        if (cameraExposureService$ExposureIndicatorState != CameraExposureService$ExposureIndicatorState.FOCUSED || this.NB.SP() != CameraMember.NORMAL || !this.NB.TO()) {
            this.Ln = cameraExposureService$ExposureIndicatorState;
        }
    }

    public CameraExposureService$ExposureIndicatorState Ns() {
        return this.Ln;
    }

    public boolean Ny() {
        return this.LT > 10;
    }

    public void Nz() {
        Or(CameraExposureService$ExposureIndicatorState.IDLE);
        Oq(false);
        this.Lz = false;
        this.LD = false;
        this.LT = 0;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void Og(android.view.MotionEvent r14) {
        /*
        r13 = this;
        r12 = 10;
        r11 = 8;
        r8 = 0;
        r10 = 1;
        r9 = 0;
        r0 = r13.Ob();
        if (r0 == 0) goto L_0x0011;
    L_0x000d:
        r0 = r13.Lm;
        if (r0 != 0) goto L_0x0012;
    L_0x0011:
        return;
    L_0x0012:
        r0 = r13.Lm;
        r0 = r0.getVisibility();
        if (r0 == r11) goto L_0x0011;
    L_0x001a:
        r0 = r13.Oe();
        if (r0 == 0) goto L_0x0011;
    L_0x0020:
        r0 = r14.getX();
        r3 = java.lang.Math.round(r0);
        r0 = r14.getY();
        r5 = java.lang.Math.round(r0);
        r13.LU = r3;
        r13.LV = r5;
        r0 = r13.Oe();
        if (r0 == 0) goto L_0x0042;
    L_0x003a:
        r0 = r13.Lm;
        r0 = r0.getVisibility();
        if (r0 != r11) goto L_0x0043;
    L_0x0042:
        return;
    L_0x0043:
        r0 = r13.LC;
        if (r0 != 0) goto L_0x004a;
    L_0x0047:
        r13.Oo();
    L_0x004a:
        r0 = r13.LC;
        if (r0 != 0) goto L_0x0055;
    L_0x004e:
        r0 = r13.Of(r3, r5);
        if (r0 == 0) goto L_0x0055;
    L_0x0054:
        return;
    L_0x0055:
        r13.LC = r10;
        r13.LD = r10;
        r0 = r13.LT;
        r0 = r0 + 1;
        r13.LT = r0;
        r0 = r13.LT;
        r1 = 2;
        if (r0 >= r1) goto L_0x007d;
    L_0x0064:
        r0 = r13.Lb;
        r0.cancel();
        r0 = r13.Lm;
        r0 = r0.getLayoutParams();
        r0 = (android.widget.RelativeLayout.LayoutParams) r0;
        r13.LQ = r0;
        r0 = r13.Qg();
        if (r0 != 0) goto L_0x01e3;
    L_0x0079:
        r13.NC = r9;
        r13.ND = r9;
    L_0x007d:
        r0 = r13.LT;
        if (r0 <= r12) goto L_0x01b1;
    L_0x0081:
        r0 = r13.Lm;
        r0 = r0.getTranslationX();
        r0 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1));
        if (r0 == 0) goto L_0x0090;
    L_0x008b:
        r0 = r13.Lm;
        r0.setTranslationX(r8);
    L_0x0090:
        r0 = r13.Lm;
        r0 = r0.getTranslationY();
        r0 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1));
        if (r0 == 0) goto L_0x009f;
    L_0x009a:
        r0 = r13.Lm;
        r0.setTranslationY(r8);
    L_0x009f:
        r0 = r13.NB;
        r0 = r0.Tc();
        r0 = r0.Mm();
        if (r0 == 0) goto L_0x00b4;
    L_0x00ab:
        r0 = r13.NB;
        r0 = r0.Tc();
        r0.MZ(r9);
    L_0x00b4:
        r0 = r13.Lz;
        if (r0 != 0) goto L_0x00d9;
    L_0x00b8:
        r0 = r13.LB;
        if (r0 == 0) goto L_0x00d9;
    L_0x00bc:
        r0 = r13.Ly;
        r6 = 0;
        r1 = 99;
        r0.sendEmptyMessageDelayed(r1, r6);
        r0 = r13.NB;
        r0 = r0.Tc();
        r0.MO();
        r0 = r13.NB;
        r0 = r0.Te();
        r0.Pc();
        r13.Lz = r10;
    L_0x00d9:
        r0 = r13.Lf;
        r0 = r0[r9];
        r0 = r3 - r0;
        r1 = r13.Ls;
        r1 = r1 / 2;
        r0 = r0 - r1;
        r1 = r13.Lu;
        r2 = r13.Ls;
        r1 = r1 - r2;
        r0 = com.android.common.C0616j.aoN(r0, r9, r1);
        r13.LE = r0;
        r0 = r13.Lf;
        r0 = r0[r10];
        r0 = r5 - r0;
        r1 = r13.Lk;
        r1 = r1 / 2;
        r0 = r0 - r1;
        r1 = r13.NC;
        r2 = r13.Lt;
        r4 = r13.Lk;
        r2 = r2 - r4;
        r4 = r13.ND;
        r2 = r2 - r4;
        r0 = com.android.common.C0616j.aoN(r0, r1, r2);
        r13.LS = r0;
        r0 = r13.LQ;
        r1 = r13.LE;
        r2 = r13.LS;
        r0.setMargins(r1, r2, r9, r9);
        r0 = r13.LQ;
        r0 = r0.getRules();
        r1 = 13;
        r0[r1] = r9;
        r1 = 9;
        r0[r1] = r10;
        r0 = r13.Lm;
        r0.requestLayout();
        r0 = r13.Ll;
        r0.setVisibility(r9);
        r0 = r13.LY;
        r0.setVisibility(r9);
        r13.Oj();
        r13.Ol();
        r13.LJ = r9;
        r0 = r13.LB;
        if (r0 != 0) goto L_0x015e;
    L_0x013c:
        r13.Oh(r3, r5);
        r0 = r13.Ly;
        r1 = 104; // 0x68 float:1.46E-43 double:5.14E-322;
        r0.removeMessages(r1);
        r0 = r13.LT;
        r1 = 12;
        if (r1 != r0) goto L_0x015e;
    L_0x014c:
        r0 = r13.Lr;
        r0 = r0.getVisibility();
        if (r0 != 0) goto L_0x015e;
    L_0x0154:
        r0 = r13.Lr;
        r0 = r0.getAlpha();
        r0 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1));
        if (r0 != 0) goto L_0x015e;
    L_0x015e:
        r0 = r13.LR;
        r0 = r0 + 1;
        r13.LR = r0;
        r1 = r13.Ls;
        r2 = r13.Lk;
        r0 = r13.Lf;
        r0 = r0[r9];
        r4 = r3 - r0;
        r0 = r13.Lf;
        r0 = r0[r10];
        r0 = r5 - r0;
        r3 = r13.NC;
        r5 = r13.Ls;
        r5 = r5 / 2;
        r3 = r3 + r5;
        r5 = r13.Lt;
        r6 = r13.Lk;
        r6 = r6 / 2;
        r5 = r5 - r6;
        r6 = r13.ND;
        r5 = r5 - r6;
        r5 = com.android.common.C0616j.aoN(r0, r3, r5);
        r6 = r13.Lu;
        r7 = r13.Lt;
        r0 = r13.LG;
        r0 = r0.get(r9);
        r0 = (android.hardware.Camera.Area) r0;
        r8 = r0.rect;
        r3 = 1069547520; // 0x3fc00000 float:1.5 double:5.28426686E-315;
        r0 = r13;
        r0.NJ(r1, r2, r3, r4, r5, r6, r7, r8);
        r0 = r13.LR;
        r0 = r0 % 10;
        if (r0 != 0) goto L_0x01a8;
    L_0x01a3:
        r0 = r13.NB;
        r0.SZ(r11);
    L_0x01a8:
        r0 = r13.NB;
        r0 = r0.Tc();
        r0.MM();
    L_0x01b1:
        r0 = r14.getAction();
        if (r0 != r10) goto L_0x01e2;
    L_0x01b7:
        r0 = "CameraExposureService";
        r1 = "CES -- touch up";
        com.p010a.C0090a.bvm(r0, r1);
        r13.Lz = r9;
        r0 = r13.LT;
        if (r0 <= r12) goto L_0x01d4;
    L_0x01c6:
        r0 = r13.Lb;
        r0.start();
        r0 = r13.Ly;
        r2 = 3000; // 0xbb8 float:4.204E-42 double:1.482E-320;
        r1 = 104; // 0x68 float:1.46E-43 double:5.14E-322;
        r0.sendEmptyMessageDelayed(r1, r2);
    L_0x01d4:
        r13.LD = r9;
        r0 = r13.LT;
        r1 = 6;
        if (r0 <= r1) goto L_0x01e0;
    L_0x01db:
        r0 = r13.NB;
        r0.SZ(r11);
    L_0x01e0:
        r13.LT = r9;
    L_0x01e2:
        return;
    L_0x01e3:
        r0 = r13.NL();
        r0 = r0.SN();
        r0 = r0.getResources();
        r1 = 2131558432; // 0x7f0d0020 float:1.874218E38 double:1.0531297934E-314;
        r0 = r0.getDimensionPixelSize(r1);
        r13.NC = r0;
        r0 = r13.NL();
        r0 = r0.SN();
        r0 = r0.getResources();
        r1 = 2131558431; // 0x7f0d001f float:1.8742178E38 double:1.053129793E-314;
        r0 = r0.getDimensionPixelSize(r1);
        r13.ND = r0;
        goto L_0x007d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.independentFocusExposure.h.Og(android.view.MotionEvent):void");
    }

    private boolean Ob() {
        if (this.NB.Tn() == null || this.NB.Tn().Gl() <= 0) {
            return false;
        }
        return true;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean No(int r14, int r15) {
        /*
        r13 = this;
        r2 = 10;
        r12 = 4;
        r11 = 1;
        r10 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r9 = 0;
        r0 = r13.Ob();
        if (r0 == 0) goto L_0x0011;
    L_0x000d:
        r0 = r13.Lm;
        if (r0 != 0) goto L_0x0012;
    L_0x0011:
        return r9;
    L_0x0012:
        r0 = r13.Lm;
        r0 = r0.getVisibility();
        r1 = 8;
        if (r0 == r1) goto L_0x0011;
    L_0x001c:
        r0 = r13.Oe();
        if (r0 == 0) goto L_0x0011;
    L_0x0022:
        r0 = com.android.common.C0616j.aoT(r2);
        if (r14 < r0) goto L_0x0031;
    L_0x0028:
        r0 = r13.Lu;
        r1 = com.android.common.C0616j.aoT(r2);
        r0 = r0 - r1;
        if (r14 <= r0) goto L_0x0032;
    L_0x0031:
        return r9;
    L_0x0032:
        r0 = r13.Qg();
        if (r0 == 0) goto L_0x0079;
    L_0x0038:
        r0 = r13.NL();
        r0 = r0.SN();
        r0 = r0.getResources();
        r1 = 2131558432; // 0x7f0d0020 float:1.874218E38 double:1.0531297934E-314;
        r0 = r0.getDimensionPixelSize(r1);
        r13.NC = r0;
        r0 = r13.NL();
        r0 = r0.SN();
        r0 = r0.getResources();
        r1 = 2131558431; // 0x7f0d001f float:1.8742178E38 double:1.053129793E-314;
        r0 = r0.getDimensionPixelSize(r1);
        r13.ND = r0;
        r0 = r13.Lk;
        r0 = r0 / 2;
        r0 = r15 - r0;
        r1 = r13.NC;
        if (r0 < r1) goto L_0x0078;
    L_0x006c:
        r0 = r13.Lk;
        r0 = r0 / 2;
        r0 = r0 + r15;
        r1 = r13.Lt;
        r2 = r13.ND;
        r1 = r1 - r2;
        if (r0 <= r1) goto L_0x0079;
    L_0x0078:
        return r9;
    L_0x0079:
        r0 = r13.LY;
        r0.setVisibility(r12);
        r0 = r13.Ll;
        r0.setVisibility(r9);
        r1 = r13.Ls;
        r2 = r13.Lk;
        r6 = r13.Lu;
        r7 = r13.Lt;
        r0 = r13.LG;
        r0 = r0.get(r9);
        r0 = (android.hardware.Camera.Area) r0;
        r8 = r0.rect;
        r3 = 1069547520; // 0x3fc00000 float:1.5 double:5.28426686E-315;
        r0 = r13;
        r4 = r14;
        r5 = r15;
        r0.NJ(r1, r2, r3, r4, r5, r6, r7, r8);
        r0 = r13.Lb;
        r0.cancel();
        r0 = r13.Lc;
        r0.cancel();
        r0 = r13.LB;
        if (r0 == 0) goto L_0x010c;
    L_0x00ab:
        r0 = r13.Ls;
        r0 = r0 / 2;
        r0 = r14 - r0;
        r1 = r13.Lu;
        r2 = r13.Ls;
        r1 = r1 - r2;
        r0 = com.android.common.C0616j.aoN(r0, r9, r1);
        r13.LE = r0;
        r0 = r13.Lk;
        r0 = r0 / 2;
        r0 = r15 - r0;
        r1 = r13.Lt;
        r2 = r13.Lk;
        r1 = r1 - r2;
        r0 = com.android.common.C0616j.aoN(r0, r9, r1);
        r13.LS = r0;
        r0 = r13.Lm;
        r0 = r0.animate();
        r0 = r0.alpha(r10);
        r0 = r0.scaleX(r10);
        r0 = r0.scaleY(r10);
        r1 = r13.LE;
        r1 = (float) r1;
        r0 = r0.x(r1);
        r1 = r13.LS;
        r1 = (float) r1;
        r0 = r0.y(r1);
        r2 = 280; // 0x118 float:3.92E-43 double:1.383E-321;
        r0 = r0.setDuration(r2);
        r1 = r13.Lh;
        r0 = r0.withEndAction(r1);
        r0.start();
    L_0x00fc:
        r13.LB = r9;
        r0 = r13.Lr;
        r0.setVisibility(r12);
        r13.Oj();
        r13.Ol();
        r13.LJ = r11;
        return r11;
    L_0x010c:
        r0 = r13.Ls;
        r0 = r0 / 2;
        r0 = r14 - r0;
        r1 = r13.Lu;
        r2 = r13.Ls;
        r1 = r1 - r2;
        r0 = com.android.common.C0616j.aoN(r0, r9, r1);
        r13.LE = r0;
        r0 = r13.Lk;
        r0 = r0 / 2;
        r0 = r15 - r0;
        r1 = r13.Lt;
        r2 = r13.Lk;
        r1 = r1 - r2;
        r0 = com.android.common.C0616j.aoN(r0, r9, r1);
        r13.LS = r0;
        r0 = r13.Lm;
        r0 = r0.animate();
        r1 = r13.LE;
        r1 = (float) r1;
        r0 = r0.x(r1);
        r1 = r13.LS;
        r1 = (float) r1;
        r0 = r0.y(r1);
        r2 = 280; // 0x118 float:3.92E-43 double:1.383E-321;
        r0 = r0.setDuration(r2);
        r1 = r13.Lh;
        r0 = r0.withEndAction(r1);
        r0.start();
        goto L_0x00fc;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.independentFocusExposure.h.No(int, int):boolean");
    }

    private int NI(int i, int i2) {
        if (i < i2) {
            return i2;
        }
        return i;
    }

    private void NU() {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.Lm, "alpha", new float[]{0.8f, 0.25f}).setDuration(220);
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.Lm, "alpha", new float[]{0.25f, 0.8f}).setDuration(220);
        ObjectAnimator duration3 = ObjectAnimator.ofFloat(this.Lm, "alpha", new float[]{0.8f, 0.25f}).setDuration(220);
        ObjectAnimator duration4 = ObjectAnimator.ofFloat(this.Lm, "alpha", new float[]{0.25f, 0.8f}).setDuration(220);
        ObjectAnimator duration5 = ObjectAnimator.ofFloat(this.Lm, "alpha", new float[]{0.8f, 0.25f}).setDuration(220);
        ObjectAnimator duration6 = ObjectAnimator.ofFloat(this.Lm, "alpha", new float[]{0.25f, 1.0f}).setDuration(220);
        this.Lb = null;
        this.Lb = new AnimatorSet();
        this.Lb.playSequentially(new Animator[]{duration, duration2, duration3, duration4, duration5, duration6});
    }

    private void NV() {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.Lm, "alpha", new float[]{0.8f, 0.25f}).setDuration(220);
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.Lm, "alpha", new float[]{0.25f, 0.8f}).setDuration(220);
        ObjectAnimator duration3 = ObjectAnimator.ofFloat(this.Lm, "alpha", new float[]{0.8f, 0.25f}).setDuration(220);
        ObjectAnimator duration4 = ObjectAnimator.ofFloat(this.Lm, "alpha", new float[]{0.25f, 0.8f}).setDuration(220);
        ObjectAnimator duration5 = ObjectAnimator.ofFloat(this.Lm, "alpha", new float[]{0.8f, 0.25f}).setDuration(220);
        ObjectAnimator duration6 = ObjectAnimator.ofFloat(this.Lm, "alpha", new float[]{0.25f, 0.0f}).setDuration(220);
        this.Lc = null;
        this.Lc = new AnimatorSet();
        this.Lc.playSequentially(new Animator[]{duration, duration2, duration3, duration4, duration5, duration6});
    }

    private void NW() {
        Animator duration = ObjectAnimator.ofFloat(this.Lr, "alpha", new float[]{0.0f, 1.0f}).setDuration(1200);
        this.Lp = null;
        this.Lp = new AnimatorSet();
        this.Lp.play(duration);
    }

    private void NX() {
        Animator duration = ObjectAnimator.ofFloat(this.Lr, "alpha", new float[]{1.0f, 0.0f}).setDuration(1200);
        this.Lq = null;
        this.Lq = new AnimatorSet();
        this.Lq.play(duration);
    }

    private boolean Of(int i, int i2) {
        if (Math.abs(i - this.Le[0]) < C0616j.aoT(23)) {
            return Math.abs(i2 - this.Le[1]) < C0616j.aoT(23);
        } else {
            return false;
        }
    }

    private void Oo() {
        if (this.Lm != null) {
            r0 = new int[2];
            this.Lm.getLocationInWindow(r0);
            this.Le[0] = NI(r0[0] + (this.Ls / 2), this.Ls / 2);
            this.Le[1] = NI(r0[1] + (this.Ls / 2), this.Ls / 2);
        }
    }

    public void Oq(boolean z) {
        this.LC = z;
    }

    public void NC(Rect rect) {
        this.LB = false;
        RectF rectF = new RectF(rect);
        this.LF.mapRect(rectF);
        C0616j.aoZ(rectF, ((Area) this.LG.get(0)).rect);
    }

    private void NJ(int i, int i2, float f, int i3, int i4, int i5, int i6, Rect rect) {
        int i7 = (int) (((float) i) * f);
        int i8 = (int) (((float) i2) * f);
        int aoN = C0616j.aoN(i3 - (i7 / 2), 0, i5 - i7);
        int aoN2 = C0616j.aoN(i4 - (i8 / 2), 0, i6 - i8);
        RectF rectF = new RectF((float) aoN, (float) aoN2, (float) (i7 + aoN), (float) (i8 + aoN2));
        this.LF.mapRect(rectF);
        C0616j.aoZ(rectF, rect);
    }

    public List NO() {
        if (this.LB || !Oe()) {
            return null;
        }
        try {
            if (!NZ(((Area) this.LG.get(0)).rect, ((Area) this.LG.get(0)).weight)) {
                return null;
            }
        } catch (Exception e) {
        }
        return this.LG;
    }

    private void Os() {
        Matrix matrix = new Matrix();
        C0616j.aoY(matrix, this.LH, this.Lg, this.Lu, this.Lt);
        matrix.invert(this.LF);
    }

    public C0329e NL() {
        return this.NB;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean NZ(android.graphics.Rect r6, int r7) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.independentFocusExposure.h.NZ(android.graphics.Rect, int):boolean");
    }

    public void Nq(boolean z) {
        if (this.Lm != null && this.Lm.getVisibility() != 8 && Oe()) {
            if (!z && NE() && this.LB) {
                this.Lc.cancel();
                this.Lm.setAlpha(0.0f);
            }
            if (z && NE()) {
                this.Ll.OG(R.drawable.ic_focus_metering_exposure_big);
                if (!this.LB) {
                    this.LY.setVisibility(4);
                    this.LB = true;
                    Ol();
                    this.NB.SZ(8);
                }
                if (Od()) {
                    this.Ll.setVisibility(8);
                    this.LY.setVisibility(8);
                } else if (this.Lm.getWidth() != 0) {
                    this.Ll.setVisibility(0);
                    this.Lm.setVisibility(0);
                    Ok();
                }
            }
        }
    }

    private boolean Od() {
        if (this.NB.SX().JV() == DeviceState.VIDEO_RECORDING || this.NB.SX().JV() == DeviceState.VIDEO_RECORDING_PAUSED || this.NB.SX().JV() == DeviceState.VIDEO_RECORDING_SNAPSHOT) {
            return true;
        }
        return false;
    }

    public boolean NE() {
        if (this.LW == null) {
            return true;
        }
        if (this.LA || this.LW.getProgress() != this.LW.getMax() / 2 || this.NB.Te().Pd()) {
            return false;
        }
        return this.LJ;
    }

    private void Ok() {
        this.LM = PropertyValuesHolder.ofFloat("scaleX", new float[]{2.0f, 2.0f});
        this.LN = PropertyValuesHolder.ofFloat("scaleY", new float[]{2.0f, 2.0f});
        this.LK = ObjectAnimator.ofPropertyValuesHolder(this.Lm, new PropertyValuesHolder[]{this.LM, this.LN}).setDuration(0);
        this.LO = PropertyValuesHolder.ofFloat("x", new float[]{(float) ((C0616j.aoT(360) / 2) - (this.Lm.getWidth() / 2)), (float) ((C0616j.aoT(360) / 2) - (this.Lm.getWidth() / 2))});
        this.LP = PropertyValuesHolder.ofFloat("y", new float[]{(float) ((this.Lw - (this.Lm.getHeight() / 2)) - this.Lf[1]), (float) ((this.Lw - (this.Lm.getHeight() / 2)) - this.Lf[1])});
        this.LL = ObjectAnimator.ofPropertyValuesHolder(this.Lm, new PropertyValuesHolder[]{this.LO, this.LP}).setDuration(0);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{this.LK, this.LL});
        animatorSet.addListener(new C0605v(this));
        animatorSet.start();
    }

    public void Np() {
        if (this.LB) {
            C0090a.bvo("CameraExposureService", "Still in BigCAF mode, ignore longpress lock.");
            return;
        }
        this.NB.Tg();
        this.LM = PropertyValuesHolder.ofFloat("scaleX", new float[]{1.0f, 1.5f});
        this.LN = PropertyValuesHolder.ofFloat("scaleY", new float[]{1.0f, 1.5f});
        this.LK = ObjectAnimator.ofPropertyValuesHolder(this.Lm, new PropertyValuesHolder[]{this.LM, this.LN}).setDuration(100);
        PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat("scaleX", new float[]{1.5f, 1.0f});
        PropertyValuesHolder ofFloat2 = PropertyValuesHolder.ofFloat("scaleY", new float[]{1.5f, 1.0f});
        ObjectAnimator duration = ObjectAnimator.ofPropertyValuesHolder(this.Lm, new PropertyValuesHolder[]{ofFloat, ofFloat2}).setDuration(100);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(new Animator[]{this.LK, duration});
        animatorSet.start();
        this.LD = false;
        On();
        C0616j.apa(this.NB.SN(), "lock_exposure", "lock_exposure");
    }

    private void On() {
        if (this.LA) {
            this.LA = false;
            this.Ll.OG(R.drawable.ic_focus_metering_exposure);
        } else {
            this.LA = true;
            this.Ll.OG(R.drawable.ic_focus_metering_exposure_locked);
        }
        this.NB.SZ(8);
        this.NB.Tz().sendEmptyMessage(86);
    }

    public boolean NM() {
        return this.LC;
    }

    public void setVisibility(int i) {
        if (this.Lm != null) {
            this.Lm.setVisibility(i);
        }
    }

    public void NH(int i) {
        if (this.Ll != null) {
            this.Ll.setVisibility(i);
        }
        if (this.LY != null) {
            this.LY.setVisibility(i);
        }
    }

    public boolean NK() {
        return (!this.LA || this.LD) ? this.LI : true;
    }

    public boolean NY() {
        return this.LA;
    }

    public void Nr() {
        if (this.Ll != null) {
            this.LA = false;
            this.LD = false;
            this.Ll.OG(R.drawable.ic_focus_metering_exposure);
            this.NB.Tz().sendEmptyMessage(86);
            this.LI = false;
        }
    }

    public void Oi() {
        C0090a.m1e("CameraExposureService", "onPreviewStopped");
        if (Oc()) {
            this.LB = true;
            this.LJ = true;
        }
        if (this.Lr != null) {
            this.Lr.setVisibility(4);
        }
        if (this.LY != null) {
            this.LY.setVisibility(4);
        }
        if (this.Ll != null) {
            this.Ll.setVisibility(4);
        }
        Ol();
    }

    public boolean NF() {
        return this.LB;
    }

    public void Nv() {
        C0090a.m1e("CameraExposureService", "onStatusRestore");
        this.LB = true;
        this.LA = false;
        this.LI = false;
        this.LC = false;
        this.LD = false;
        this.LJ = true;
    }

    private boolean Oc() {
        return this.NB.TE().Ll();
    }

    private boolean Oe() {
        CameraMember SP = this.NB.SP();
        if (SP == CameraMember.STARCLOUD || SP == CameraMember.STARTRACK || SP == CameraMember.LIGHTDRAW || Oa()) {
            return false;
        }
        return true;
    }

    public void Nw(boolean z) {
        this.LI = z;
    }

    private boolean Oa() {
        boolean z = true;
        boolean z2 = this.NB.SP() == CameraMember.NORMAL ? this.NB.SQ() == C0384o.Jr().Js() : false;
        if (NQ().getString("pref_camera_exposure_disable_key", NL().SN().getString(R.string.pref_camera_exposure_disable_key_default)).equals("off")) {
            z = false;
        }
        if (z2) {
            return z;
        }
        return false;
    }

    public void NG() {
        if (this.LB) {
            this.Lc.cancel();
            this.Lm.setAlpha(0.0f);
            return;
        }
        this.Lb.cancel();
        this.Lm.setAlpha(1.0f);
    }

    public void Nx() {
        if (this.Ly != null) {
            this.Ly.removeCallbacksAndMessages(null);
        }
    }

    public VerticalSeekBarForEv NR() {
        return this.LW;
    }

    private int NT() {
        return this.Ls - this.Lo.getWidth();
    }

    private int NN() {
        return this.LX - this.Lk;
    }

    private void Oh(int i, int i2) {
        LayoutParams layoutParams = (LayoutParams) this.Lr.getLayoutParams();
        int NS = NS(this.Lr.getWidth(), this.Lr.getHeight());
        NL().SN().getResources().getDimensionPixelSize(R.dimen.topbar_height);
        int dimensionPixelSize = NL().SN().getResources().getDimensionPixelSize(R.dimen.bottombar_height);
        int width = NL().SN().getWindowManager().getDefaultDisplay().getWidth();
        int height = NL().SN().getWindowManager().getDefaultDisplay().getHeight();
        switch (this.NB.To()) {
            case 0:
                if (this.LS - NS <= this.NC) {
                    layoutParams.setMargins(this.LE + (NT() / 2), this.LS + this.Lk, 0, 0);
                    break;
                } else {
                    layoutParams.setMargins(this.LE + (NT() / 2), this.LS - NS, 0, 0);
                    break;
                }
            case 90:
                if (this.LE - NS <= 0) {
                    layoutParams.setMargins(this.LE + this.Ls, this.LS + (NT() / 2), 0, 0);
                    break;
                } else {
                    layoutParams.setMargins(this.LE - NS, this.LS + (NT() / 2), 0, 0);
                    break;
                }
            case 180:
                if (((this.LS + this.Lk) + NS) + this.Lf[1] >= height - dimensionPixelSize) {
                    layoutParams.setMargins(this.LE + (NT() / 2), this.LS - NS, 0, 0);
                    break;
                } else {
                    layoutParams.setMargins(this.LE + (NT() / 2), this.LS + this.Lk, 0, 0);
                    break;
                }
            case 270:
                if ((this.LE + this.Ls) + NS >= width) {
                    layoutParams.setMargins(this.LE - NS, this.LS + (NT() / 2), 0, 0);
                    break;
                } else {
                    layoutParams.setMargins(this.LE + this.Ls, this.LS + (NT() / 2), 0, 0);
                    break;
                }
        }
        this.Lr.requestLayout();
    }

    private void Oj() {
        LayoutParams layoutParams = (LayoutParams) this.LY.getLayoutParams();
        int NS = NS(this.LY.getWidth(), this.LY.getHeight());
        NL().SN().getResources().getDimensionPixelSize(R.dimen.topbar_height);
        int dimensionPixelSize = NL().SN().getResources().getDimensionPixelSize(R.dimen.bottombar_height);
        int width = NL().SN().getWindowManager().getDefaultDisplay().getWidth();
        int height = NL().SN().getWindowManager().getDefaultDisplay().getHeight();
        switch (this.NB.To()) {
            case 0:
                if ((this.LE + this.Ls) + NS >= width) {
                    layoutParams.setMargins(this.LE - NS, this.LS - (NN() / 2), 0, 0);
                    break;
                } else {
                    layoutParams.setMargins(this.LE + this.Ls, this.LS - (NN() / 2), 0, 0);
                    break;
                }
            case 90:
                if (this.LS - NS <= this.NC) {
                    layoutParams.setMargins(this.LE - (NN() / 2), this.LS + this.Ls, 0, 0);
                    break;
                } else {
                    layoutParams.setMargins(this.LE - (NN() / 2), this.LS - NS, 0, 0);
                    break;
                }
            case 180:
                if (this.LE - NS <= 0) {
                    layoutParams.setMargins(this.LE + this.Ls, this.LS - (NN() / 2), 0, 0);
                    break;
                } else {
                    layoutParams.setMargins(this.LE - NS, this.LS - (NN() / 2), 0, 0);
                    break;
                }
            case 270:
                C0305G arW = this.NB.SM().arW();
                int aaY = arW.aaY();
                int[] iArr = new int[2];
                arW.aaZ(iArr);
                if (1.0d == arW.aba()) {
                    dimensionPixelSize = (height - iArr[1]) - aaY;
                }
                if (((this.LS + this.Lk) + NS) + this.Lf[1] >= height - dimensionPixelSize) {
                    layoutParams.setMargins(this.LE - (NN() / 2), this.LS - NS, 0, 0);
                    break;
                } else {
                    layoutParams.setMargins(this.LE - (NN() / 2), this.LS + this.Lk, 0, 0);
                    break;
                }
        }
        if (C0616j.ahp) {
            layoutParams.getRules()[9] = 1;
        }
        this.LY.requestLayout();
    }

    private void Ol() {
        Editor edit = NQ().edit();
        edit.putString("pref_camera_exposure_key", "0");
        edit.apply();
        if (this.LW != null) {
            this.LW.setProgress(this.LW.getMax() / 2);
            Op();
            this.LW.gG();
        }
    }

    public void Om() {
        if (!C0421M.dC().dD().bU() && this.NB.SY().tx()) {
            Ol();
        }
    }

    private void Op() {
        this.LW.setProgressDrawable(this.NB.SN().getResources().getDrawable(R.drawable.ev_seek_bar_bg_transparent_rotate));
    }

    private int NS(int i, int i2) {
        if (i <= i2) {
            return i;
        }
        return i2;
    }

    public void NA() {
        if (this.NB.SQ() == C0384o.Jr().Js() || this.NB.SQ() == C0384o.Jr().Jx()) {
            this.NB.TP(this.Ld);
            this.Ld.gc(this.NB.To());
        }
    }

    public void NB() {
        if (this.NB.SQ() == C0384o.Jr().Js() || this.NB.SQ() == C0384o.Jr().Jx()) {
            this.NB.TQ(this.Ld);
        }
    }

    public int NP() {
        if (this.Lv != null) {
            return this.Lv.getVisibility();
        }
        return 0;
    }

    private SharedPreferences NQ() {
        return this.NB.SS();
    }

    public void ND() {
        if (this.Ll != null) {
            this.Ll.setVisibility(4);
        }
        if (this.LY != null) {
            this.LY.setVisibility(4);
        }
    }
}
