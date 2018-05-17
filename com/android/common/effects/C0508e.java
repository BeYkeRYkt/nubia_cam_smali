package com.android.common.effects;

import android.content.ContentValues;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.util.Log;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.appService.C0304F;
import com.android.common.appService.C0336k;
import com.android.common.gles.C0544a;
import com.android.common.gles.C0550g;
import com.android.common.p016a.C0126g;
import com.android.common.p016a.C0290f;
import com.android.common.setting.ListPreference;
import com.android.common.ui.C0474A;
import com.android.common.ui.C0734J;
import com.android.common.ui.C0735K;
import com.p010a.C0090a;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

public class C0508e implements C0126g, C0336k {
    private static final /* synthetic */ int[] hX = null;
    private static boolean hr = Log.isLoggable("FunEffectRenderer", 3);
    private final int gR = 3;
    private final float gS = 1.3333334f;
    private boolean gT = false;
    private long gU = -1;
    private C0473c gV = null;
    private int gW = 3;
    private Context gX;
    private int gY = 0;
    private C0473c gZ = null;
    private int hA = 3;
    private int hB = 0;
    private int hC = 0;
    private C0735K hD;
    private boolean hE = true;
    private float[] hF = new float[16];
    private boolean hG = false;
    private int hH = 3;
    private float[] hI = new float[16];
    private boolean hJ = false;
    private int hK = -1;
    private int hL = -1;
    private boolean hM = false;
    private int hN = 0;
    private Bitmap hO = null;
    private ByteBuffer hP = null;
    private int hQ = 36197;
    private int hR;
    private int hS;
    private int hT;
    private FloatBuffer hU;
    private int hV;
    private int hW = 0;
    private String ha = "negative-effect";
    private int hb = 0;
    private int hc = 0;
    private int hd = 0;
    private C0473c[] he;
    private boolean hf = true;
    private int hg = 0;
    private Interpolator hh = new PathInterpolator(0.25f, 0.1f, 0.25f, 1.0f);
    private int hi = 0;
    private String[] hj;
    private int hk;
    private int hl = 0;
    private int hm = 0;
    private C0322f hn = null;
    private Rect ho;
    private int hp;
    private int hq = 0;
    private int hs;
    private Object ht = new Object();
    private float[] hu = new float[16];
    private int hv;
    private int hw;
    private int hx;
    private int hy;
    private int hz = 3;

    private static /* synthetic */ int[] gh() {
        if (hX != null) {
            return hX;
        }
        int[] iArr = new int[FunEffectRenderer$EnterEffectAnim.values().length];
        try {
            iArr[FunEffectRenderer$EnterEffectAnim.GRID_EFFECT.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            iArr[FunEffectRenderer$EnterEffectAnim.PREVIEW_EFFECT.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            iArr[FunEffectRenderer$EnterEffectAnim.SHOW_GIRD_EFFECT_ONE_BY_ONE.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            iArr[FunEffectRenderer$EnterEffectAnim.SHOW_GRID_EFFECT_ANIM.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        hX = iArr;
        return iArr;
    }

    public C0508e(Context context, ListPreference listPreference, C0735K c0735k) {
        this.gX = context;
        float[] fArr = new float[]{-1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
        this.hU = ByteBuffer.allocateDirect((fArr.length * 32) / 8).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.hU.put(fArr).position(0);
        Matrix.setIdentityM(this.hI, 0);
        Matrix.setIdentityM(this.hF, 0);
        fB(c0735k);
        CharSequence[] uX = listPreference.uX();
        this.gW = (int) Math.ceil((double) (((float) uX.length) / ((float) this.hz)));
        this.hR = (int) Math.ceil((double) (((float) this.gW) / ((float) this.hz)));
        this.hj = fV(uX, this.hH, this.gW);
        fJ(listPreference.tw(), false);
    }

    public void fB(C0735K c0735k) {
        synchronized (this.ht) {
            this.hE = true;
            this.hD = c0735k;
        }
    }

    private void gg(C0735K c0735k, Rect rect) {
        C0734J pv = c0735k.pv();
        int pr = pv.pr();
        int ps = pv.ps();
        int pt = pv.pt();
        int pq = pv.pq();
        if (rect.height() < C0616j.aoL() && Math.abs(c0735k.pB() - 1.3333333730697632d) <= 0.10000000149011612d) {
            pq -= this.gX.getResources().getDimensionPixelOffset(R.dimen.bottombar_height);
            pt -= this.gX.getResources().getDimensionPixelOffset(R.dimen.topbar_height);
        }
        if (this.hw == pr && this.hx == ps && this.hy == pt && this.hv == pq && this.hs == c0735k.pz() && this.hm == c0735k.pA() && this.hl == c0735k.py() && this.hk == c0735k.px() && this.hz == c0735k.pu()) {
            if (this.hA == c0735k.pw()) {
                return;
            }
        }
        this.hw = pr;
        this.hx = ps;
        this.hy = pt;
        this.hv = pq;
        this.hs = c0735k.pz();
        this.hm = c0735k.pA();
        this.hl = c0735k.py();
        this.hk = c0735k.px();
        this.hA = c0735k.pw();
        this.hz = c0735k.pu();
        if (this.hE) {
            this.ho = new Rect();
            this.ho.left = this.hw;
            this.ho.right = rect.width() - this.hx;
            this.ho.top = this.hv;
            this.ho.bottom = rect.height() - this.hy;
        }
    }

    public void fC(C0322f c0322f) {
        this.hn = c0322f;
    }

    public void fJ(String str, boolean z) {
        synchronized (this.ht) {
            fK("debug, changeEffectID, effectName = " + str + "; anim = " + z);
            this.ha = str;
            this.hf = true;
            if (z) {
                this.hd = 2;
                this.gU = System.currentTimeMillis();
                fZ();
            } else {
                this.hd = 0;
            }
            gf();
        }
    }

    public void fH(boolean z) {
        synchronized (this.ht) {
            C0090a.bvo("FunEffectRenderer", "debug, showSelect " + z);
            if (z) {
                this.hd = 3;
                this.gU = System.currentTimeMillis();
            } else {
                this.hd = 2;
                this.gU = System.currentTimeMillis();
            }
        }
        if (z) {
            gb();
        } else {
            fZ();
        }
    }

    public void fI(FunEffectRenderer$EnterEffectAnim funEffectRenderer$EnterEffectAnim) {
        synchronized (this.ht) {
            switch (C0508e.gh()[funEffectRenderer$EnterEffectAnim.ordinal()]) {
                case 1:
                    this.hd = 5;
                    gb();
                    break;
                case 2:
                    this.hd = 0;
                    break;
                case 3:
                    this.hd = 4;
                    this.hN = 0;
                    gb();
                    break;
                case 4:
                    this.hd = 3;
                    this.gU = System.currentTimeMillis();
                    gb();
                    break;
                default:
                    this.hd = 0;
                    break;
            }
        }
    }

    public boolean fE() {
        return this.hd == 1;
    }

    public boolean fD() {
        if (this.hd == 3 || this.hd == 2 || this.hd == 4 || this.hd == 5) {
            return true;
        }
        return false;
    }

    public void release() {
        synchronized (this.ht) {
            this.hG = true;
        }
    }

    public void fF(int i, int i2, float f) {
        synchronized (this.ht) {
            this.hq += i;
            int apG = ((-((this.hR - this.hb) - 1)) * C0616j.apG()) - this.hk;
            if (this.hq < apG) {
                this.hq = apG;
            }
            apG = (this.hb * C0616j.apG()) + this.hk;
            if (this.hq > apG) {
                this.hq = apG;
            }
            this.hb -= this.hq / C0616j.apG();
            this.hq %= C0616j.apG();
            this.hJ = true;
        }
    }

    public void fG(int i, int i2, float f) {
        synchronized (this.ht) {
            if (((float) (this.hq + i)) > ((float) C0616j.apG()) * f) {
                this.hb--;
            } else if (((float) (this.hq + i)) < ((float) (-C0616j.apG())) * f) {
                this.hb++;
            }
            this.hq = 0;
            this.hJ = false;
        }
    }

    public void gc(int i) {
        this.hC = i;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean aJ(com.android.common.p016a.C0290f r10, com.android.common.gles.C0550g r11) {
        /*
        r9 = this;
        r3 = 5;
        r8 = 1;
        r7 = r9.ht;
        monitor-enter(r7);
        r0 = r9.hG;	 Catch:{ all -> 0x0089 }
        if (r0 == 0) goto L_0x001b;
    L_0x0009:
        r0 = "FunEffectRenderer";
        r1 = "release";
        com.p010a.C0090a.bvo(r0, r1);	 Catch:{ all -> 0x0089 }
        r0 = 1;
        r10.ah(r0);	 Catch:{ all -> 0x0089 }
        r10.m57U(r9);	 Catch:{ all -> 0x0089 }
        monitor-exit(r7);
        return r8;
    L_0x001b:
        r1 = r9.hQ;	 Catch:{ all -> 0x0089 }
        r0 = r10.am();	 Catch:{ all -> 0x0089 }
        if (r0 == 0) goto L_0x0071;
    L_0x0023:
        r0 = 3553; // 0xde1 float:4.979E-42 double:1.7554E-320;
    L_0x0025:
        r9.hQ = r0;	 Catch:{ all -> 0x0089 }
        r0 = r9.hQ;	 Catch:{ all -> 0x0089 }
        if (r0 == r1) goto L_0x0031;
    L_0x002b:
        r0 = 0;
        r9.hg = r0;	 Catch:{ all -> 0x0089 }
        r0 = 0;
        r9.hi = r0;	 Catch:{ all -> 0x0089 }
    L_0x0031:
        r9.ge();	 Catch:{ all -> 0x0089 }
        r9.fX(r10);	 Catch:{ all -> 0x0089 }
        r1 = r10.al();	 Catch:{ all -> 0x0089 }
        r0 = r9.hd;	 Catch:{ all -> 0x0089 }
        r2 = 2;
        if (r0 != r2) goto L_0x007a;
    L_0x0040:
        r0 = 0;
        r10.ah(r0);	 Catch:{ all -> 0x0089 }
        r0 = r9.ho;	 Catch:{ all -> 0x0089 }
        r9.fO(r10, r11, r0, r1);	 Catch:{ all -> 0x0089 }
    L_0x0049:
        r0 = r9.hM;	 Catch:{ all -> 0x0089 }
        if (r0 == 0) goto L_0x006f;
    L_0x004d:
        r0 = r10.al();	 Catch:{ all -> 0x0089 }
        r0 = r0.left;	 Catch:{ all -> 0x0089 }
        r1 = r10.al();	 Catch:{ all -> 0x0089 }
        r1 = r1.top;	 Catch:{ all -> 0x0089 }
        r2 = r10.al();	 Catch:{ all -> 0x0089 }
        r2 = r2.width();	 Catch:{ all -> 0x0089 }
        r3 = r10.al();	 Catch:{ all -> 0x0089 }
        r3 = r3.height();	 Catch:{ all -> 0x0089 }
        r9.gd(r0, r1, r2, r3);	 Catch:{ all -> 0x0089 }
        r0 = 0;
        r9.hM = r0;	 Catch:{ all -> 0x0089 }
    L_0x006f:
        monitor-exit(r7);
        return r8;
    L_0x0071:
        r0 = r10.ao();	 Catch:{ all -> 0x0089 }
        r0 = r0.DJ();	 Catch:{ all -> 0x0089 }
        goto L_0x0025;
    L_0x007a:
        r0 = r9.hd;	 Catch:{ all -> 0x0089 }
        r2 = 3;
        if (r0 != r2) goto L_0x008c;
    L_0x007f:
        r0 = 0;
        r10.ah(r0);	 Catch:{ all -> 0x0089 }
        r0 = r9.ho;	 Catch:{ all -> 0x0089 }
        r9.fS(r10, r11, r1, r0);	 Catch:{ all -> 0x0089 }
        goto L_0x0049;
    L_0x0089:
        r0 = move-exception;
        monitor-exit(r7);
        throw r0;
    L_0x008c:
        r0 = r9.hd;	 Catch:{ all -> 0x0089 }
        r2 = 4;
        if (r0 != r2) goto L_0x0095;
    L_0x0091:
        r9.fT(r10, r11);	 Catch:{ all -> 0x0089 }
        goto L_0x0049;
    L_0x0095:
        r0 = r9.hd;	 Catch:{ all -> 0x0089 }
        if (r0 == r8) goto L_0x009d;
    L_0x0099:
        r0 = r9.hd;	 Catch:{ all -> 0x0089 }
        if (r0 != r3) goto L_0x00ab;
    L_0x009d:
        r9.fP(r10, r11);	 Catch:{ all -> 0x0089 }
        r0 = r9.hd;	 Catch:{ all -> 0x0089 }
        if (r0 != r3) goto L_0x0049;
    L_0x00a4:
        r9.ga();	 Catch:{ all -> 0x0089 }
        r0 = 1;
        r9.hd = r0;	 Catch:{ all -> 0x0089 }
        goto L_0x0049;
    L_0x00ab:
        r0 = r9.hd;	 Catch:{ all -> 0x0089 }
        if (r0 != 0) goto L_0x0049;
    L_0x00af:
        r0 = r10.am();	 Catch:{ all -> 0x0089 }
        if (r0 == 0) goto L_0x00dd;
    L_0x00b5:
        r0 = r10.an();	 Catch:{ all -> 0x0089 }
        r0 = r0.DJ();	 Catch:{ all -> 0x0089 }
    L_0x00bd:
        r2 = r9.gZ;	 Catch:{ all -> 0x0089 }
        if (r2 == 0) goto L_0x0049;
    L_0x00c1:
        r2 = r9.gZ;	 Catch:{ all -> 0x0089 }
        r2 = r2.dG();	 Catch:{ all -> 0x0089 }
        if (r2 != r0) goto L_0x0049;
    L_0x00c9:
        r3 = r1.left;	 Catch:{ all -> 0x0089 }
        r4 = r1.top;	 Catch:{ all -> 0x0089 }
        r5 = r1.width();	 Catch:{ all -> 0x0089 }
        r6 = r1.height();	 Catch:{ all -> 0x0089 }
        r0 = r9;
        r1 = r10;
        r2 = r11;
        r0.fQ(r1, r2, r3, r4, r5, r6);	 Catch:{ all -> 0x0089 }
        goto L_0x0049;
    L_0x00dd:
        r0 = r10.ao();	 Catch:{ all -> 0x0089 }
        r0 = r0.DJ();	 Catch:{ all -> 0x0089 }
        goto L_0x00bd;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.effects.e.aJ(com.android.common.a.f, com.android.common.gles.g):boolean");
    }

    public boolean aL(C0290f c0290f, C0550g c0550g) {
        return false;
    }

    public int aI() {
        return 1;
    }

    private void gf() {
        Object obj = null;
        for (int i = 0; i < this.hH && r2 == null; i++) {
            for (int i2 = 0; i2 < this.gW; i2++) {
                if (this.ha.equals(this.hj[(this.gW * i) + i2])) {
                    this.hc = i;
                    this.gY = i2;
                    obj = 1;
                    break;
                }
            }
        }
        this.hb = this.gY / this.hz;
    }

    private String[] fV(CharSequence[] charSequenceArr, int i, int i2) {
        int length = charSequenceArr.length;
        String[] strArr = new String[(i2 * i)];
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                int i5;
                int i6 = (i3 * i2) + i4;
                if (C0616j.ahp) {
                    i5 = (((i - 1) - i3) * i2) + ((i2 - 1) - i4);
                } else {
                    i5 = (((i - 1) - i3) * i2) + i4;
                }
                if (i5 > length - 1) {
                    strArr[i6] = null;
                } else {
                    strArr[i6] = charSequenceArr[i5].toString();
                }
            }
        }
        return strArr;
    }

    private void fQ(C0290f c0290f, C0550g c0550g, int i, int i2, int i3, int i4) {
        c0550g.Ew();
        c0290f.ae().getTransformMatrix(this.hI);
        fR(this.ha, this.gZ, c0290f, c0550g, this.hI, i, i2, i3, i4);
    }

    private void fR(String str, C0473c c0473c, C0290f c0290f, C0550g c0550g, float[] fArr, int i, int i2, int i3, int i4) {
        fL(c0473c, c0550g, c0290f, fArr, i, i2, i3, i4);
    }

    private void fP(C0290f c0290f, C0550g c0550g) {
        c0550g.Ew();
        if (this.hJ) {
            int i = this.hb - 1;
            while (i <= this.hb + 1) {
                if (i >= 0 && i <= this.hR) {
                    Rect rect = new Rect();
                    rect.left = this.ho.left + ((i - this.hb) * C0616j.apG());
                    rect.right = rect.left + this.ho.width();
                    rect.top = this.ho.top;
                    rect.bottom = this.ho.bottom;
                    fM(c0290f, c0550g, rect, this.ho, this.hm, this.hl, this.hs, this.hq, this.hW, this.hJ, i);
                }
                i++;
            }
            return;
        }
        fM(c0290f, c0550g, this.ho, this.ho, this.hm, this.hl, this.hs, this.hq, this.hW, this.hJ, this.hb);
    }

    private void fT(C0290f c0290f, C0550g c0550g) {
        if (this.hN < this.hH * 3) {
            this.hN++;
            c0550g.Ew();
            fN(c0290f, c0550g, this.ho, this.ho, this.hm, this.hl, this.hs, this.hq, this.hW, this.hJ, this.hb, this.hN);
            return;
        }
        this.hd = 1;
        fP(c0290f, c0550g);
        ga();
    }

    private void fO(C0290f c0290f, C0550g c0550g, Rect rect, Rect rect2) {
        long currentTimeMillis = System.currentTimeMillis();
        if (this.gU <= -1 || currentTimeMillis - this.gU > 350 || currentTimeMillis - this.gU < 0) {
            fK("debug, drawHideEffectGridAnimPreview outer");
            c0550g.Ew();
            c0290f.ae().getTransformMatrix(this.hI);
            fR(this.ha, this.gZ, c0290f, c0550g, this.hI, rect2.left, rect2.top, rect2.width(), rect2.height());
            this.hd = 0;
            this.hL = -1;
            this.hK = -1;
            this.gU = -1;
            this.gT = false;
            c0290f.ah(true);
            fY();
            return;
        }
        fK("debug, drawHideEffectGridAnimPreview inner");
        if (!this.gT) {
            this.hK = this.ho.left + ((this.hm + this.hs) * (this.gY - (this.hz * this.hb)));
            this.hL = this.ho.top + ((this.hs + this.hl) * this.hc);
            this.hS = rect2.left - this.hK;
            this.hT = rect2.top - this.hL;
            this.hp = rect2.width() - this.hm;
            this.hV = rect2.height() - this.hl;
            fK("mSelectItemLeft: " + this.hK + "; mSelectItemTop: " + this.hL);
            this.gT = true;
        }
        float interpolation = this.hh.getInterpolation(((float) (currentTimeMillis - this.gU)) / 350.0f);
        int i = (int) (((float) this.hm) + (((float) this.hp) * interpolation));
        int i2 = (int) (((float) this.hl) + (((float) this.hV) * interpolation));
        int i3 = (int) (((float) this.hK) + (((float) this.hS) * interpolation));
        int i4 = (int) ((interpolation * ((float) this.hT)) + ((float) this.hL));
        if (i3 < rect2.left) {
            i3 = rect2.left;
        }
        if (i4 < rect2.top) {
            i4 = rect2.top;
        }
        if (i3 + i > rect2.left + rect2.width()) {
            i3 = (rect2.left + rect2.width()) - i;
        }
        if (i4 + i2 > rect2.top + rect2.height()) {
            i4 = (rect2.top + rect2.height()) - i2;
        }
        fK("after target l, t, w, h: " + i3 + ", " + i4 + ", " + i + ", " + i2);
        int i5 = (this.hs * i2) / this.hl;
        i3 -= (i + i5) * (this.gY - (this.hz * this.hb));
        i4 -= (i2 + i5) * this.hc;
        int width = (rect.width() * i2) / this.hl;
        int height = (rect.height() * i2) / this.hl;
        c0550g.Ew();
        fM(c0290f, c0550g, new Rect(i3, i4, width + i3, height + i4), i - this.hm > this.hx ? rect2 : rect, i, i2, i5, 0, 0, false, this.hb);
        Rect as = c0290f.as();
        this.gV.dF(this.hu, this.hI, this.hU, 0, rect2.height() + rect2.top, as.width(), (as.height() - rect2.top) - rect2.height(), null, c0550g);
        this.gV.dF(this.hu, this.hI, this.hU, 0, 0, as.width(), rect2.top, null, c0550g);
    }

    private void fS(C0290f c0290f, C0550g c0550g, Rect rect, Rect rect2) {
        long currentTimeMillis = System.currentTimeMillis();
        if (this.gU <= -1 || currentTimeMillis - this.gU > 350 || currentTimeMillis - this.gU < 0) {
            fK("debug, drawShowEffectGridAnimPreview outer");
            this.hd = 1;
            fP(c0290f, c0550g);
            this.hL = -1;
            this.hK = -1;
            this.gU = -1;
            this.gT = false;
            c0290f.ah(true);
            ga();
            return;
        }
        fK("debug, drawShowEffectGridAnimPreview inner");
        if (!this.gT) {
            this.hK = this.ho.left + ((this.hm + this.hs) * (this.gY - (this.hz * this.hb)));
            this.hL = this.ho.top + ((this.hs + this.hl) * this.hc);
            this.hS = this.hK - rect.left;
            this.hT = this.hL - rect.top;
            this.hp = this.hm - rect.width();
            this.hV = this.hl - rect.height();
            this.gT = true;
        }
        float interpolation = this.hh.getInterpolation(((float) (currentTimeMillis - this.gU)) / 350.0f);
        int width = (int) (((float) rect.width()) + (((float) this.hp) * interpolation));
        int height = (int) (((float) rect.height()) + (((float) this.hV) * interpolation));
        int i = (int) (((float) rect.left) + (((float) this.hS) * interpolation));
        int i2 = (int) ((interpolation * ((float) this.hT)) + ((float) rect.top));
        if (i > this.hK) {
            i = this.hK;
        }
        if (i2 > this.hL) {
            i2 = this.hL;
        }
        if (i + width < this.hK + this.hm) {
            i = (this.hK + this.hm) - width;
        }
        if (i2 + height < this.hL + this.hl) {
            i2 = (this.hL + this.hl) - height;
        }
        fK("after target l, t, w, h: " + i + ", " + i2 + ", " + width + ", " + height);
        int i3 = (this.hs * height) / this.hl;
        i -= (width + i3) * (this.gY - (this.hz * this.hb));
        i2 -= (height + i3) * this.hc;
        int width2 = (rect2.width() * height) / this.hl;
        int height2 = (rect2.height() * height) / this.hl;
        c0550g.Ew();
        fM(c0290f, c0550g, new Rect(i, i2, width2 + i, height2 + i2), width > (rect.width() >> 1) ? rect : rect2, width, height, i3, 0, 0, false, this.hb);
        Rect as = c0290f.as();
        this.gV.dF(this.hu, this.hI, this.hU, 0, rect2.height() + rect2.top, as.width(), Math.abs((as.height() - rect2.top) - rect2.height()), null, c0550g);
        this.gV.dF(this.hu, this.hI, this.hU, 0, 0, as.width(), rect2.top, null, c0550g);
    }

    private void fM(C0290f c0290f, C0550g c0550g, Rect rect, Rect rect2, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
        fN(c0290f, c0550g, rect, rect2, i, i2, i3, i4, i5, z, i6, this.hH * 3);
    }

    private void fN(C0290f c0290f, C0550g c0550g, Rect rect, Rect rect2, int i, int i2, int i3, int i4, int i5, boolean z, int i6, int i7) {
        c0290f.ae().getTransformMatrix(this.hI);
        if (this.hb >= 0 && this.hb <= this.hR) {
            int i8;
            int i9 = i6 * this.hz;
            int i10 = (this.hz * i6) + this.hz;
            if (i10 > this.gW) {
                i8 = this.gW;
            } else {
                i8 = i10;
            }
            for (int i11 = this.hH - 1; i11 >= 0; i11--) {
                for (int i12 = i9; i12 < i8; i12++) {
                    i10 = (this.gW * i11) + i12;
                    String str = this.hj[i10];
                    int i13 = ((((this.hH - 1) - i11) * 3) + i12) - i9;
                    if (str != null && i13 < i7) {
                        int i14 = (rect.left + ((i3 + i) * (i12 - i9))) + i4;
                        int i15 = (rect.top + ((i3 + i2) * i11)) + i5;
                        if (z || (i14 + i > rect2.left && i14 < rect2.right && i15 + i2 > rect2.top && i15 < rect2.bottom)) {
                            C0473c fU;
                            if (this.he[i10] == null) {
                                fU = fU(c0290f, str, this.hQ, this.hB);
                            } else {
                                fU = this.he[i10];
                            }
                            fR(str, fU, c0290f, c0550g, this.hI, i14, i15, i, i2);
                        }
                    }
                }
            }
        }
    }

    private void fW(C0290f c0290f) {
        int i;
        int i2;
        if (this.he == null) {
            this.he = new C0473c[this.hj.length];
            for (i = 0; i < this.hj.length; i++) {
                this.he[i] = null;
            }
        }
        if (this.he != null && this.hg < this.hj.length) {
            if (this.hd == 0) {
                i = this.hg + 2;
                if (i > this.hj.length) {
                    i = this.hj.length;
                }
                for (i2 = this.hg; i2 < i; i2++) {
                    if (this.hj[i2] != null) {
                        this.he[i2] = fU(c0290f, this.hj[i2], this.hQ, this.hB);
                    }
                }
                this.hg += 2;
            } else {
                for (i = this.hg; i < this.hj.length; i++) {
                    if (this.hj[i] != null) {
                        this.he[i] = fU(c0290f, this.hj[i], this.hQ, this.hB);
                    }
                }
                this.hg = this.hj.length;
            }
        }
        if (this.he != null && this.hg >= this.hj.length && this.hi < this.hj.length && this.hd == 0) {
            i = this.hi + 2;
            if (i > this.hj.length) {
                i = this.hj.length;
            }
            i2 = this.hi;
            while (i2 < i) {
                if (!(this.hj[i2] == null || this.he[i2] == null)) {
                    this.he[i2].dJ();
                }
                i2++;
            }
            this.hi += 2;
        }
    }

    private void fX(C0290f c0290f) {
        if (this.hf || this.hg == 0) {
            this.gZ = fU(c0290f, this.ha, this.hQ, this.hB);
            this.hf = false;
        }
        if (this.hE) {
            gg(this.hD, c0290f.as());
        }
        fW(c0290f);
        if (this.gV == null) {
            this.gV = fU(c0290f, "BlackRect", this.hQ, this.hB);
        }
        this.hE = false;
    }

    private void fL(C0473c c0473c, C0550g c0550g, C0290f c0290f, float[] fArr, int i, int i2, int i3, int i4) {
        C0544a an = c0290f.am() ? c0290f.an() : c0290f.ao();
        if (c0473c != null) {
            c0473c.dF(this.hu, this.hI, this.hU, i, i2, i3, i4, an, c0550g);
            return;
        }
        c0550g.Ek();
        c0550g.En(an, this.hI, i, i2, i3, i4);
        c0550g.Eo();
    }

    private void gd(int i, int i2, int i3, int i4) {
        C0090a.bvo("FunEffectRenderer", "savePhoto width , height = " + i3 + ", " + i4);
        if (this.hP == null && this.hO == null) {
            this.hP = ByteBuffer.allocateDirect((i3 * i4) * 4).order(ByteOrder.nativeOrder());
            this.hO = Bitmap.createBitmap(i3, i4, Config.ARGB_8888);
        }
        this.hP.position(0);
        this.hP.rewind();
        GLES20.glReadPixels(i, i2, i3, i4, 6408, 5121, this.hP);
        this.hO.copyPixelsFromBuffer(this.hP);
        Bitmap aaS = C0304F.aaS(this.hO, 0, true);
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        aaS.compress(CompressFormat.JPEG, 85, byteArrayOutputStream);
        long currentTimeMillis = System.currentTimeMillis();
        String aoP = C0616j.aoP(currentTimeMillis);
        String arc = C0701s.arc(aoP, -1);
        ContentValues contentValues = new ContentValues();
        contentValues.put("title", aoP);
        contentValues.put("_display_name", aoP + ".jpg");
        contentValues.put("datetaken", Long.valueOf(currentTimeMillis));
        contentValues.put("mime_type", "image/jpeg");
        contentValues.put("_data", arc);
        contentValues.put("width", Integer.valueOf(i4));
        contentValues.put("height", Integer.valueOf(i3));
        C0701s.are(this.gX.getContentResolver(), byteArrayOutputStream.toByteArray(), arc, contentValues);
    }

    private void gb() {
        if (this.hn != null) {
            this.hn.gl();
        }
    }

    private void ga() {
        if (this.hn != null) {
            this.hn.gk();
        }
    }

    private void fZ() {
        if (this.hn != null) {
            this.hn.gj();
        }
    }

    private void fY() {
        if (this.hn != null) {
            this.hn.gi();
        }
    }

    private void fK(String str) {
        if (hr) {
            C0090a.bvo("FunEffectRenderer", str);
        }
    }

    public void aK(C0290f c0290f) {
        if (Thread.currentThread().getId() == c0290f.getId()) {
            C0090a.bvo("FunEffectRenderer", "onResease");
            c0290f.ah(true);
            c0290f.m57U(this);
            this.hG = true;
        }
    }

    private C0473c fU(C0290f c0290f, String str, int i, int i2) {
        return c0290f.at().fx(this.gX, str, i, i2);
    }

    private void ge() {
        if (this.hB != this.hC) {
            this.hB = this.hC;
            if (this.he != null) {
                for (C0473c c0473c : this.he) {
                    if (c0473c instanceof C0474A) {
                        ((C0474A) c0473c).fc(this.hB, false);
                    }
                }
            }
        }
    }
}
