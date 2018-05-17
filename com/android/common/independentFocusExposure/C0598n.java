package com.android.common.independentFocusExposure;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.app.Activity;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.YuvImage;
import android.hardware.Camera;
import android.hardware.Camera.Area;
import android.hardware.Camera.PreviewCallback;
import android.hardware.Camera.Size;
import android.os.Handler;
import android.view.MotionEvent;
import android.widget.RelativeLayout.LayoutParams;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0305G;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0384o;
import com.android.common.custom.C0421M;
import com.android.common.ui.RotateLayout;
import com.p010a.C0090a;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

public class C0598n extends C0585t implements PreviewCallback {
    private int MA;
    private int MB;
    private int MC;
    private final Handler MD;
    private boolean ME;
    private boolean MF;
    private boolean MG;
    private boolean MH;
    private boolean MI;
    private boolean MJ;
    private byte[] MK;
    private int ML;
    private Matrix MM;
    private List MN;
    private boolean MO;
    private C0603s MP;
    private boolean MQ;
    private ObjectAnimator MR;
    private ObjectAnimator MS;
    private PropertyValuesHolder MT;
    private PropertyValuesHolder MU;
    private PropertyValuesHolder MV;
    private PropertyValuesHolder MW;
    private LayoutParams MX;
    private byte[] MY;
    private boolean MZ;
    private final int Mj;
    private final int Mk;
    private int Ml;
    private int Mm;
    private AnimatorSet Mn;
    private AnimatorSet Mo;
    private int Mp;
    private int[] Mq;
    private float[] Mr;
    private int[] Ms;
    private int Mt;
    private Runnable Mu;
    private Runnable Mv;
    private int Mw;
    private int Mx;
    private int My;
    private C0599o Mz;
    private int Na;
    private int Nb;
    private int Nc;
    private int Nd;
    private int Ne;
    private int Nf;
    private int Ng;
    private int Nh;
    private MwbIndicatorView Ni;
    private MwbService$WbIndicatorState Nj;
    private RotateLayout Nk;
    private int Nl;
    private int Nm;
    private int Nn;
    private int No;

    public C0598n(C0329e c0329e) {
        this.Nk = null;
        this.Ni = null;
        this.Nl = C0616j.aoT(66);
        this.Nh = C0616j.aoT(66);
        this.Mx = C0616j.aoT(360);
        this.Mw = C0616j.aoT(480);
        this.No = C0616j.aoT(59);
        this.Nj = MwbService$WbIndicatorState.IDLE;
        this.MM = null;
        this.MN = null;
        this.MO = false;
        this.Ne = 0;
        this.Mq = new int[2];
        this.MI = false;
        this.MY = null;
        this.Mk = C0616j.aoT(150);
        this.Mj = C0616j.aoT(150);
        this.Mm = this.Mk;
        this.Ml = this.Mj;
        this.MK = null;
        this.Mz = null;
        this.MA = 0;
        this.Nd = 0;
        this.My = 0;
        this.Mp = 0;
        this.Mr = new float[4];
        this.Nm = 0;
        this.Nn = 0;
        this.Nc = 0;
        this.MJ = true;
        this.MD = new C0602r();
        this.MT = null;
        this.MU = null;
        this.MV = null;
        this.MW = null;
        this.MR = null;
        this.MS = null;
        this.MH = false;
        this.ME = false;
        this.Mn = new AnimatorSet();
        this.Mo = new AnimatorSet();
        this.Mu = new C0600p();
        this.Mv = new C0601q();
        this.Ms = new int[2];
        this.Ng = 0;
        this.MQ = false;
        this.MG = false;
        this.MF = false;
        this.MC = 0;
        this.MB = 0;
        this.Mt = 90;
        this.MZ = false;
        this.MP = new C0603s();
        this.MM = new Matrix();
        this.NB = c0329e;
        if (this.MN == null) {
            this.MN = new ArrayList();
            this.MN.add(new Area(new Rect(), 100));
        }
        this.Mt = this.NB.TN();
        PD();
        this.NC = Pi().SN().getResources().getDimensionPixelSize(R.dimen.topbar_height);
        this.ND = Pi().SN().getResources().getDimensionPixelSize(R.dimen.bottombar_height);
    }

    public void ON(C0305G c0305g) {
        this.Mx = c0305g.aaX();
        this.Mw = c0305g.aaY();
        c0305g.aaZ(this.Ms);
        this.MC = this.Mx / 2;
        this.MB = this.Ms[1] + (this.Mw / 2);
        PD();
    }

    public void OM(Activity activity, C0305G c0305g) {
        this.Nk = (RotateLayout) activity.findViewById(R.id.mwb_indicator_rotate_layout);
        this.Ni = (MwbIndicatorView) activity.findViewById(R.id.mwb_indicator);
        this.Ni.OF();
        this.Ni.Qk(this);
        Po();
        Pp();
        ON(c0305g);
    }

    private void Pz() {
        this.MT = PropertyValuesHolder.ofFloat("scaleX", new float[]{2.0f, 2.0f});
        this.MU = PropertyValuesHolder.ofFloat("scaleY", new float[]{2.0f, 2.0f});
        this.MR = ObjectAnimator.ofPropertyValuesHolder(this.Nk, new PropertyValuesHolder[]{this.MT, this.MU}).setDuration(0);
        this.MV = PropertyValuesHolder.ofFloat("x", new float[]{(float) ((C0616j.aoT(360) / 2) - (this.Nk.getWidth() / 2)), (float) ((C0616j.aoT(360) / 2) - (this.Nk.getWidth() / 2))});
        this.MW = PropertyValuesHolder.ofFloat("y", new float[]{(float) ((this.MB - (this.Nk.getHeight() / 2)) - this.Ms[1]), (float) ((this.MB - (this.Nk.getHeight() / 2)) - this.Ms[1])});
        this.MS = ObjectAnimator.ofPropertyValuesHolder(this.Nk, new PropertyValuesHolder[]{this.MV, this.MW}).setDuration(0);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{this.MR, this.MS});
        animatorSet.addListener(new C0606w(this));
        animatorSet.start();
    }

    public void PE(boolean z) {
        if (!z || !C0421M.dC().dD().cD()) {
            OK();
            this.Ni.setVisibility(8);
            this.NB.Wf();
        } else if (!(Pk().Mm() && this.NB.Td().NF())) {
            this.Ni.setVisibility(0);
            this.Nk.setAlpha(1.0f);
            this.Nk.setScaleX(1.0f);
            this.Nk.setScaleY(1.0f);
        }
        this.NB.Tz().sendEmptyMessage(87);
    }

    public void PH(MwbService$WbIndicatorState mwbService$WbIndicatorState) {
        if (mwbService$WbIndicatorState != MwbService$WbIndicatorState.FOCUSED || this.NB.SP() != CameraMember.NORMAL || !this.NB.TO()) {
            this.Nj = mwbService$WbIndicatorState;
        }
    }

    public MwbService$WbIndicatorState OL() {
        return this.Nj;
    }

    public boolean OR() {
        return this.Ng > 10;
    }

    public void OS() {
        PH(MwbService$WbIndicatorState.IDLE);
        PF(false);
        this.Ng = 0;
        this.ME = false;
    }

    public void Py(MotionEvent motionEvent) {
        if (!this.NB.TO() && this.Ni.getVisibility() == 0) {
            int round = Math.round(motionEvent.getX());
            int round2 = Math.round(motionEvent.getY());
            this.Ng++;
            if (this.Ng < 2) {
                this.Mn.cancel();
                if (Qg()) {
                    this.NC = Pi().SN().getResources().getDimensionPixelSize(R.dimen.topbar_height);
                    this.ND = Pi().SN().getResources().getDimensionPixelSize(R.dimen.bottombar_height);
                } else {
                    this.NC = 0;
                    this.ND = 0;
                }
            }
            if (this.Ng > 10) {
                this.Nk.setTranslationX(0.0f);
                this.Nk.setTranslationY(0.0f);
                PC();
                if (this.MI || !Pv(round, round2)) {
                    this.MI = true;
                    if (!this.ME && this.MH) {
                        this.MD.sendEmptyMessageDelayed(99, 0);
                        this.ME = true;
                    }
                    this.Nm = round;
                    this.Nn = round2;
                    this.MX = (LayoutParams) this.Nk.getLayoutParams();
                    this.ML = C0616j.aoN((round - this.Ms[0]) - (this.Nl / 2), 0, this.Mx - this.Nl);
                    this.Nf = C0616j.aoN((round2 - this.Ms[1]) - (this.Nh / 2), this.NC, (this.Mw - this.Nh) - this.ND);
                    this.MX.setMargins(this.ML, this.Nf, 0, 0);
                    int[] rules = this.MX.getRules();
                    rules[13] = 0;
                    rules[9] = 1;
                    this.Nk.requestLayout();
                    this.Ne++;
                    Ph(this.Nl, this.Nh, 1.0f, round - this.Ms[0], C0616j.aoN(round2 - this.Ms[1], this.NC + (this.Nl / 2), (this.Mw - (this.Nh / 2)) - this.ND), this.Mx, this.Mw, ((Area) this.MN.get(0)).rect);
                    if (this.Ne % 10 == 0 && !Pr()) {
                        this.NB.SZ(8);
                    }
                    this.MJ = false;
                } else {
                    return;
                }
            }
            if (motionEvent.getAction() == 1) {
                this.Ng = 0;
                this.ME = false;
            }
        }
    }

    private void Ph(int i, int i2, float f, int i3, int i4, int i5, int i6, Rect rect) {
        int i7 = (int) (((float) i) * f);
        int i8 = (int) (((float) i2) * f);
        int aoN = C0616j.aoN(i3 - (i7 / 2), 0, i5 - i7);
        int aoN2 = C0616j.aoN(i4 - (i8 / 2), 0, i6 - i8);
        RectF rectF = new RectF((float) aoN, (float) aoN2, (float) (i7 + aoN), (float) (i8 + aoN2));
        this.MM.mapRect(rectF);
        C0616j.aoZ(rectF, rect);
    }

    public List Pm() {
        if (this.MH) {
            return null;
        }
        try {
            if (!Ps(((Area) this.MN.get(0)).rect)) {
                return null;
            }
        } catch (Exception e) {
        }
        return this.MN;
    }

    private void PD() {
        Matrix matrix = new Matrix();
        if (Pu()) {
            C0616j.aoY(matrix, this.MO, this.Mt, this.Mx, this.Mw);
        } else {
            C0616j.aoY(matrix, this.MO, 0, this.Mx, this.Mw);
        }
        matrix.invert(this.MM);
    }

    private boolean Pu() {
        return Pi().SN().getResources().getConfiguration().orientation == 1;
    }

    public C0329e Pi() {
        return this.NB;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean Ps(android.graphics.Rect r6) {
        /*
        r5 = this;
        r4 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r3 = 1;
        r1 = -1000; // 0xfffffffffffffc18 float:NaN double:NaN;
        r2 = 0;
        r0 = r6.left;
        if (r0 != 0) goto L_0x0023;
    L_0x000a:
        r0 = r6.right;
        if (r0 != 0) goto L_0x0023;
    L_0x000e:
        r0 = r6.top;
        if (r0 != 0) goto L_0x0023;
    L_0x0012:
        r0 = r6.bottom;
        if (r0 != 0) goto L_0x0023;
    L_0x0016:
        r0 = r5.MN;
        r0 = r0.get(r2);
        r0 = (android.hardware.Camera.Area) r0;
        r0 = r0.weight;
        if (r0 != 0) goto L_0x0023;
    L_0x0022:
        return r3;
    L_0x0023:
        r0 = r6.left;
        if (r0 >= r1) goto L_0x0028;
    L_0x0027:
        return r2;
    L_0x0028:
        r0 = r6.top;
        if (r0 >= r1) goto L_0x002d;
    L_0x002c:
        return r2;
    L_0x002d:
        r0 = r6.right;
        if (r0 > r4) goto L_0x0035;
    L_0x0031:
        r0 = r6.bottom;
        if (r0 <= r4) goto L_0x0036;
    L_0x0035:
        return r2;
    L_0x0036:
        r0 = r6.left;
        r1 = r6.right;
        if (r0 < r1) goto L_0x003d;
    L_0x003c:
        return r2;
    L_0x003d:
        r0 = r6.top;
        r1 = r6.bottom;
        if (r0 < r1) goto L_0x0044;
    L_0x0043:
        return r2;
    L_0x0044:
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.independentFocusExposure.n.Ps(android.graphics.Rect):boolean");
    }

    public void OI() {
        if (MwbService$WbIndicatorState.FOCUSED == this.Nj) {
            if (this.MH) {
                C0090a.bvo("MwbService", "Still in BigCAF mode, ignore longpress lock.");
                return;
            }
            this.NB.Tg();
            this.MT = PropertyValuesHolder.ofFloat("scaleX", new float[]{1.0f, 1.5f});
            this.MU = PropertyValuesHolder.ofFloat("scaleY", new float[]{1.0f, 1.5f});
            this.MR = ObjectAnimator.ofPropertyValuesHolder(this.Nk, new PropertyValuesHolder[]{this.MT, this.MU}).setDuration(100);
            PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat("scaleX", new float[]{1.5f, 1.0f});
            PropertyValuesHolder ofFloat2 = PropertyValuesHolder.ofFloat("scaleY", new float[]{1.5f, 1.0f});
            ObjectAnimator duration = ObjectAnimator.ofPropertyValuesHolder(this.Nk, new PropertyValuesHolder[]{ofFloat, ofFloat2}).setDuration(100);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playSequentially(new Animator[]{this.MR, duration});
            animatorSet.start();
            if (this.MG) {
                this.MG = false;
                this.Ni.Ql(R.drawable.ic_mwb);
            } else {
                this.MG = true;
                this.Ni.Ql(R.drawable.ic_mwb_locked);
                this.MF = false;
            }
            if (!Pr()) {
                this.NB.SZ(8);
            }
        }
    }

    public boolean Pd() {
        return this.MG;
    }

    public boolean Pj() {
        return (!this.MG || this.MF) ? this.MQ : true;
    }

    public void OK() {
        if (this.Ni != null) {
            this.MG = false;
            this.MF = false;
            this.MQ = false;
            this.Ni.Ql(R.drawable.ic_mwb);
        }
    }

    private void PA() {
        ((Area) this.MN.get(0)).rect.top = 0;
        ((Area) this.MN.get(0)).rect.bottom = 0;
        ((Area) this.MN.get(0)).rect.left = 0;
        ((Area) this.MN.get(0)).rect.right = 0;
    }

    private boolean Pv(int i, int i2) {
        if (Math.abs(i - this.Mq[0]) < C0616j.aoT(23)) {
            return Math.abs(i2 - this.Mq[1]) < C0616j.aoT(23);
        } else {
            return false;
        }
    }

    private void PC() {
        if (this.Nk != null) {
            r0 = new int[2];
            this.Nk.getLocationInWindow(r0);
            this.Mq[0] = Pg(r0[0] + (this.Nl / 2), this.Nl / 2);
            this.Mq[1] = Pg(r0[1] + (this.Nl / 2), this.Nl / 2);
        }
    }

    private int Pg(int i, int i2) {
        if (i < i2) {
            return i2;
        }
        return i;
    }

    public void PF(boolean z) {
        this.MI = z;
    }

    public boolean Pl() {
        return this.MI;
    }

    public void Pf() {
        this.NB.Tz().sendEmptyMessage(91);
    }

    public void Pq() {
        Size Gv = this.NB.Tn().Gv();
        C0090a.bvm("MwbService", " width = " + Gv.width + " height " + Gv.height);
        this.Nb = Gv.width;
        this.Na = Gv.height;
        this.NB.Ts().abE(this, this.NB.SQ());
        this.MY = new byte[(((this.Nb * this.Na) * 3) / 2)];
        this.NB.Tr().IK(this.MY);
        this.MZ = true;
    }

    public void onPreviewFrame(byte[] bArr, Camera camera) {
        camera.addCallbackBuffer(this.MY);
        this.Nc++;
        if (this.Nc % 5 == 0 && bArr != null) {
            YuvImage yuvImage = new YuvImage(bArr, 17, this.Nb, this.Na, null);
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            float f = ((float) this.Nb) / ((float) this.Mw);
            float f2 = ((float) this.Na) / ((float) this.Mx);
            yuvImage.compressToJpeg(new Rect((int) (((float) C0616j.aoN(this.Nn - (this.Mj / 2), 0, this.Mw - this.Mj)) * f), (int) (((float) C0616j.aoN((this.Mx - this.Nm) - (this.Mk / 2), 0, this.Mx - this.Mk)) * f2), (int) (f * ((float) C0616j.aoN(this.Nn + (this.Mj / 2), this.Mj, this.Mw))), (int) (f2 * ((float) C0616j.aoN((this.Mx - this.Nm) + (this.Mk / 2), this.Mk, this.Mx)))), 80, byteArrayOutputStream);
            this.MK = byteArrayOutputStream.toByteArray();
            Options options = new Options();
            options.inSampleSize = 1;
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(this.MK, 0, this.MK.length, options);
            if (this.Mz == null && decodeByteArray != null) {
                this.Mz = new C0599o(this);
                this.Mz.start();
            }
            if (decodeByteArray != null) {
                this.Mz.Qf(decodeByteArray);
            }
        }
    }

    public float[] Pa() {
        return this.Mr;
    }

    private boolean Pr() {
        return C0421M.dC().dD().bD();
    }

    public boolean OY() {
        if (this.Ni != null && this.Ni.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    public void Pb() {
        if (this.MZ) {
            this.NB.Ts().abD(this);
        }
        this.MZ = false;
        PB();
        PG(true);
        if (this.Mz != null) {
            this.Mz.Qe();
            try {
                this.Mz.join();
            } catch (InterruptedException e) {
            }
            this.Mz = null;
        }
    }

    public void PB() {
        for (int i = 0; i < this.Mr.length; i++) {
            this.Mr[i] = 1.0f;
        }
    }

    public void PG(boolean z) {
        this.MJ = z;
    }

    public boolean OZ() {
        return this.MJ;
    }

    public void OJ(boolean z) {
        if (this.Ni != null && this.Nk.getVisibility() != 8) {
            if (!z && this.NB.Td().NE() && Pt() && this.MH) {
                this.Mo.cancel();
                this.Nk.setAlpha(0.0f);
            }
            if (z && this.NB.Td().NE() && Pt()) {
                this.Ni.Ql(R.drawable.ic_mwb_big);
                if (!this.MH) {
                    this.MH = true;
                    this.NB.SZ(8);
                }
                if (this.Nk.getWidth() != 0) {
                    this.Ni.setVisibility(0);
                    Pz();
                }
            }
        }
    }

    private C0586b Pk() {
        return this.NB.Tc();
    }

    private boolean Pt() {
        return "on".equals("on") ? "point-measure".equals(Pn().getString("pref_camera_whitebalance_key", this.NB.SN().getString(R.string.pref_camera_whitebalance_default))) : false;
    }

    public void Pe() {
        this.MH = true;
        if (this.Ni != null) {
            this.Ni.setVisibility(4);
        }
    }

    public void Pc() {
        this.MD.sendEmptyMessageDelayed(99, 0);
    }

    private void Po() {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.Nk, "alpha", new float[]{0.8f, 0.25f}).setDuration(220);
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.Nk, "alpha", new float[]{0.25f, 0.8f}).setDuration(220);
        ObjectAnimator duration3 = ObjectAnimator.ofFloat(this.Nk, "alpha", new float[]{0.8f, 0.25f}).setDuration(220);
        ObjectAnimator duration4 = ObjectAnimator.ofFloat(this.Nk, "alpha", new float[]{0.25f, 0.8f}).setDuration(220);
        ObjectAnimator duration5 = ObjectAnimator.ofFloat(this.Nk, "alpha", new float[]{0.8f, 0.25f}).setDuration(220);
        ObjectAnimator duration6 = ObjectAnimator.ofFloat(this.Nk, "alpha", new float[]{0.25f, 1.0f}).setDuration(220);
        ObjectAnimator.ofFloat(this.Nk, "alpha", new float[]{0.8f, 0.25f}).setDuration(220);
        ObjectAnimator.ofFloat(this.Nk, "alpha", new float[]{0.25f, 1.0f}).setDuration(220);
        this.Mn = null;
        this.Mn = new AnimatorSet();
        this.Mn.playSequentially(new Animator[]{duration, duration2, duration3, duration4, duration5, duration6});
    }

    private void Pp() {
        ObjectAnimator duration = ObjectAnimator.ofFloat(this.Nk, "alpha", new float[]{0.8f, 0.25f}).setDuration(220);
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this.Nk, "alpha", new float[]{0.25f, 0.8f}).setDuration(220);
        ObjectAnimator duration3 = ObjectAnimator.ofFloat(this.Nk, "alpha", new float[]{0.8f, 0.25f}).setDuration(220);
        ObjectAnimator duration4 = ObjectAnimator.ofFloat(this.Nk, "alpha", new float[]{0.25f, 0.8f}).setDuration(220);
        ObjectAnimator duration5 = ObjectAnimator.ofFloat(this.Nk, "alpha", new float[]{0.8f, 0.25f}).setDuration(220);
        ObjectAnimator duration6 = ObjectAnimator.ofFloat(this.Nk, "alpha", new float[]{0.25f, 0.0f}).setDuration(220);
        ObjectAnimator.ofFloat(this.Nk, "alpha", new float[]{0.8f, 0.25f}).setDuration(220);
        ObjectAnimator.ofFloat(this.Nk, "alpha", new float[]{0.25f, 1.0f}).setDuration(220);
        this.Mo = null;
        this.Mo = new AnimatorSet();
        this.Mo.playSequentially(new Animator[]{duration, duration2, duration3, duration4, duration5, duration6});
    }

    public boolean OH(int i, int i2) {
        if (this.Nk == null || this.Nk.getVisibility() != 0 || !Pt()) {
            return false;
        }
        if (i < C0616j.aoT(10) || i > this.Mx - C0616j.aoT(10)) {
            return false;
        }
        if (Qg()) {
            this.NC = Pi().SN().getResources().getDimensionPixelSize(R.dimen.topbar_height);
            this.ND = Pi().SN().getResources().getDimensionPixelSize(R.dimen.bottombar_height);
            if (i2 - (this.Nl / 2) < this.NC || (this.Nl / 2) + i2 > this.Mw - this.ND) {
                return false;
            }
        }
        this.Ni.setVisibility(0);
        this.MJ = false;
        this.Nm = i;
        this.Nn = i2;
        PC();
        C0090a.bvm("MwbService", " x = " + i + " y = " + i2 + " mCenterPosition[0] = " + this.Mq[0] + " mCenterPosition[1] = " + this.Mq[1]);
        this.Mn.cancel();
        this.Mo.cancel();
        Ph(this.Nl, this.Nh, 1.0f, i, i2, this.Mx, this.Mw, ((Area) this.MN.get(0)).rect);
        if (this.MH) {
            this.Nk.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).x((float) C0616j.aoN(i - (this.Nl / 2), 0, this.Mx - this.Nl)).y((float) C0616j.aoN(i2 - (this.Nh / 2), 0, this.Mw - this.Nh)).setDuration(280).withEndAction(this.Mu).start();
        } else {
            this.Nk.animate().x((float) C0616j.aoN(i - (this.Nl / 2), 0, this.Mx - this.Nl)).y((float) C0616j.aoN(i2 - (this.Nh / 2), 0, this.Mw - this.Nh)).setDuration(280).withEndAction(this.Mu).start();
        }
        this.MH = false;
        return true;
    }

    public void Px() {
        this.MD.removeMessages(103);
        this.MF = true;
    }

    public void Pw() {
        if (Pr()) {
            this.MD.removeMessages(103);
            this.MD.sendEmptyMessageDelayed(103, 1000);
            return;
        }
        this.MF = false;
    }

    public void setVisibility(int i) {
        if (this.Nk != null) {
            this.Nk.setVisibility(i);
        }
    }

    public void OO() {
        this.MH = true;
        this.MQ = false;
        this.MF = false;
        this.MG = false;
        PA();
    }

    public void OP(boolean z) {
        this.MQ = z;
    }

    public void OW() {
        if (this.MH) {
            this.Mo.cancel();
            this.Nk.setAlpha(0.0f);
            return;
        }
        this.Mn.cancel();
        this.Nk.setAlpha(1.0f);
    }

    public void OQ() {
        if (this.MD != null) {
            this.MD.removeCallbacksAndMessages(null);
        }
    }

    public void OT() {
        if (this.NB.SQ() == C0384o.Jr().Js() || this.NB.SQ() == C0384o.Jr().Jx()) {
            this.NB.TP(this.MP);
            this.MP.gc(this.NB.To());
        }
    }

    public void OU() {
        if (this.NB.SQ() == C0384o.Jr().Js() || this.NB.SQ() == C0384o.Jr().Jx()) {
            this.NB.TQ(this.MP);
        }
    }

    private SharedPreferences Pn() {
        return this.NB.SS();
    }

    public void OX(int i) {
        if (this.Ni != null) {
            this.Ni.setVisibility(i);
        }
    }

    public void OV() {
        if (this.Ni != null) {
            this.Ni.setVisibility(4);
        }
    }
}
