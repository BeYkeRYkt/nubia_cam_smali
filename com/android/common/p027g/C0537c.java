package com.android.common.p027g;

import android.content.Context;
import android.graphics.Rect;
import android.opengl.Matrix;
import android.os.Build;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import com.android.common.custom.C0421M;
import com.android.common.effects.C0473c;
import com.android.common.effects.p026a.C0476A;
import com.android.common.effects.p026a.C0486g;
import com.android.common.gles.C0544a;
import com.android.common.gles.C0547d;
import com.android.common.gles.C0550g;
import com.android.common.p016a.C0290f;
import com.p010a.C0090a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;

public class C0537c {
    public static final long WG = ((long) C0421M.dC().dD().bA());
    private static final int WH = (Build.PRODUCT.equals("NX518J") ? 7 : 10);
    private Interpolator WI;
    private ArrayList WJ = new ArrayList();
    private boolean WK = false;
    private long WL = -1;
    private boolean WM = false;
    private long WN = -1;
    private Context WO = null;
    private float[] WP = new float[16];
    private C0473c WQ;
    private C0547d WR;
    private float[] WS = new float[16];
    private C0473c WT;
    private C0547d WU;
    private int WV = 0;
    private boolean WW = false;
    private C0547d WX;
    private C0547d WY;
    private Interpolator WZ;
    private int Xa = 10;
    private long Xb = -1;
    private boolean Xc = false;
    private long Xd = -1;
    private int Xe = 0;
    private boolean Xf = false;
    private int Xg;
    private Rect Xh;
    private int Xi;
    private FloatBuffer Xj;
    private float[] Xk = new float[16];

    public C0537c(Context context) {
        this.WO = context;
        Matrix.setIdentityM(this.WP, 0);
        Matrix.setIdentityM(this.Xk, 0);
        float[] fArr = new float[]{-1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
        this.Xj = ByteBuffer.allocateDirect((fArr.length * 32) / 8).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.Xj.put(fArr).position(0);
        this.WZ = new PathInterpolator(0.5f, 0.0f, 0.4f, 1.0f);
        this.WI = new AccelerateInterpolator();
    }

    public boolean aeK() {
        return this.WW;
    }

    public void aeV(C0290f c0290f, C0550g c0550g, boolean z) {
        if (Thread.currentThread().getId() != c0290f.getId()) {
            C0090a.bvo("PreviewBlurAnim", "Error! Can't call startBlur() out of renderThread");
        } else if (!this.WM) {
            this.WW = z;
            aeL(c0290f, c0550g);
            this.WV = 0;
            this.WM = true;
            this.WK = false;
            this.WL = -1;
            this.WN = System.currentTimeMillis();
            aeO();
        }
    }

    private void aeL(C0290f c0290f, C0550g c0550g) {
        int DG;
        if (this.WQ == null) {
            this.WQ = new C0476A(this.WO);
        }
        if (this.WT == null) {
            this.WT = new C0486g(this.WO);
        }
        float[] fArr = new float[16];
        c0290f.ae().getTransformMatrix(fArr);
        int i = c0290f.ar() != null ? 1 : 0;
        int DM = i != 0 ? c0290f.ar().DM() : c0290f.ap().width();
        if (i != 0) {
            DG = c0290f.ar().DG();
        } else {
            DG = c0290f.ap().height();
        }
        this.Xi = c0290f.ap().width();
        this.Xg = c0290f.ap().height();
        this.Xh = c0290f.ap();
        aeC(DM / this.Xa, DG / this.Xa);
        c0550g.Ek();
        c0550g.Ep(this.WU);
        C0544a ar = i != 0 ? c0290f.ar() : c0290f.ao();
        if (i != 0) {
            fArr = this.WP;
        }
        c0550g.En(ar, fArr, 0, 0, this.WU.DM(), this.WU.DG());
        c0550g.Eq();
        c0550g.Eo();
    }

    public void aeX(C0290f c0290f, boolean z) {
        if (Thread.currentThread().getId() != c0290f.getId()) {
            C0090a.bvo("PreviewBlurAnim", "Error! Can't call startBlur() out of renderThread");
        } else if (this.WM && !this.WK) {
            this.WW = z;
            this.WL = System.currentTimeMillis();
            this.WN = -1;
            this.WK = true;
            this.WM = false;
        }
    }

    public void aeW(C0290f c0290f, C0550g c0550g, int i) {
        if (!this.Xf) {
            aeL(c0290f, c0550g);
            this.Xe = i;
            this.Xf = true;
            this.Xc = false;
            this.Xd = -1;
            this.Xb = System.currentTimeMillis();
            aeR();
        }
    }

    public void aeY(C0290f c0290f, C0550g c0550g) {
        if (Thread.currentThread().getId() != c0290f.getId()) {
            C0090a.bvo("PreviewBlurAnim", "Error! Can't call startBlur() out of renderThread");
        } else if (this.Xf && !this.Xc) {
            this.Xc = true;
            this.Xf = false;
            this.Xd = System.currentTimeMillis();
            this.Xb = -1;
        }
    }

    public void aeT(C0290f c0290f, C0550g c0550g) {
        if (this.WQ == null) {
            this.WQ = new C0476A(this.WO);
        }
        if (this.WT == null) {
            this.WT = new C0486g(this.WO);
        }
        Rect al = c0290f.al();
        aeE(al.width() / this.Xa, al.height() / this.Xa);
        aeI(c0290f, c0550g, al, WH);
    }

    public int aeS(C0290f c0290f, C0550g c0550g) {
        if (this.WM || this.WK || this.Xf || this.Xc) {
            Rect al = c0290f.al();
            long currentTimeMillis = System.currentTimeMillis();
            if (this.WM) {
                if (this.WW) {
                    if (this.WV < WH) {
                        this.WV++;
                        aeI(c0290f, c0550g, al, this.WV);
                        this.WU = this.WY;
                        return 2;
                    }
                    aeI(c0290f, c0550g, al, WH);
                    return 3;
                } else if (this.WN <= -1 || currentTimeMillis - this.WN > WG || currentTimeMillis - this.WN < 0) {
                    aeH(this.WU, al, c0290f, c0550g, 1.0f);
                    aeN();
                    return 3;
                } else {
                    aeH(aeJ(c0550g, this.WU, this.WR), al, c0290f, c0550g, 1.0f);
                    return 2;
                }
            } else if (this.WK) {
                if (this.WW && this.WV > 1) {
                    aeI(c0290f, c0550g, al, WH);
                    this.WK = false;
                    aeM();
                    this.WL = -1;
                    this.WN = -1;
                    return 1;
                } else if (this.WL <= -1 || currentTimeMillis - this.WL > 400 || currentTimeMillis - this.WL < 0) {
                    this.WK = false;
                    aeM();
                    this.WL = -1;
                    this.WN = -1;
                    return 1;
                } else {
                    aeH(this.WU, al, c0290f, c0550g, 1.0f - this.WI.getInterpolation(((float) (currentTimeMillis - this.WL)) / 400.0f));
                    return 4;
                }
            } else if (this.Xf) {
                if (this.Xb <= -1 || currentTimeMillis - this.Xb > 450 || currentTimeMillis - this.Xb < 0) {
                    c0550g.Ek();
                    c0550g.En(this.WU, this.WP, this.Xh.left, this.Xh.top, this.Xh.width(), this.Xh.height());
                    c0550g.Eo();
                    aeQ();
                    return 7;
                }
                float interpolation = this.WZ.getInterpolation(((float) (currentTimeMillis - this.Xb)) / 450.0f);
                C0544a aeJ = aeJ(c0550g, this.WU, this.WR);
                float f = interpolation * 180.0f;
                if (currentTimeMillis - this.Xb < 250) {
                    r0 = (this.WI.getInterpolation(((float) (currentTimeMillis - this.Xb)) / 250.0f) * -0.5f) + 1.0f;
                } else {
                    r0 = (this.WI.getInterpolation(((float) ((currentTimeMillis - this.Xb) - 250)) / 250.0f) * 0.5f) + 0.5f;
                }
                c0550g.Ek();
                c0550g.setAlpha(r0);
                c0550g.El(0.0f, 0.0f, (float) (-Math.sin(((double) interpolation) * 3.141592653589793d)));
                switch (this.Xe) {
                    case 0:
                        c0550g.Er(f, 0.0f, 1.0f, 0.0f);
                        if (f - 90.0f > 0.05f) {
                            c0550g.Em(-1.0f, 1.0f, 1.0f);
                            break;
                        }
                        break;
                    case 1:
                        c0550g.Er(-f, 0.0f, 1.0f, 0.0f);
                        if (f - 90.0f > 0.05f) {
                            c0550g.Em(-1.0f, 1.0f, 1.0f);
                            break;
                        }
                        break;
                    case 2:
                        c0550g.Er(f, 1.0f, 0.0f, 0.0f);
                        if (f - 90.0f > 0.05f) {
                            c0550g.Em(1.0f, -1.0f, 1.0f);
                            break;
                        }
                        break;
                    case 3:
                        c0550g.Er(-f, 1.0f, 0.0f, 0.0f);
                        if (f - 90.0f > 0.05f) {
                            c0550g.Em(1.0f, -1.0f, 1.0f);
                            break;
                        }
                        break;
                }
                c0550g.En(aeJ, this.WP, this.Xh.left, this.Xh.top, this.Xh.width(), this.Xh.height());
                c0550g.Eo();
                return 6;
            } else if (!this.Xc) {
                return 0;
            } else {
                if (this.Xd <= -1 || currentTimeMillis - this.Xd > 250 || currentTimeMillis - this.Xd < 0) {
                    this.Xc = false;
                    this.Xb = -1;
                    this.Xd = -1;
                    aeP();
                    return 5;
                }
                r0 = 1.0f - this.WI.getInterpolation(((float) (currentTimeMillis - this.Xd)) / 250.0f);
                c0550g.Ek();
                c0550g.setAlpha(r0);
                c0550g.En(this.WU, this.WP, this.Xh.left, this.Xh.top, this.Xh.width(), this.Xh.height());
                c0550g.Eo();
                return 8;
            }
        }
        if (this.WW) {
            Rect al2 = c0290f.al();
            aeE(al2.width() / this.Xa, al2.height() / this.Xa);
            aeI(c0290f, c0550g, c0290f.al(), WH);
        }
        return 0;
    }

    private void aeI(C0290f c0290f, C0550g c0550g, Rect rect, int i) {
        int i2 = 0;
        if (i >= 1) {
            c0550g.Ek();
            c0550g.Ep(this.WY);
            c0290f.ae().getTransformMatrix(this.Xk);
            c0550g.En(c0290f.ao(), this.Xk, 0, 0, this.WY.DM(), this.WY.DG());
            c0550g.Eq();
            c0550g.Eo();
            C0544a c0544a = this.WY;
            while (i2 < i) {
                c0544a = aeJ(c0550g, this.WY, this.WX);
                i2++;
            }
            aeH(c0544a, rect, c0290f, c0550g, 1.0f);
        }
    }

    private C0547d aeJ(C0550g c0550g, C0547d c0547d, C0547d c0547d2) {
        c0550g.Ek();
        c0550g.Ep(c0547d2);
        this.WQ.dF(this.WS, this.WP, this.Xj, 0, 0, c0547d2.DM(), c0547d2.DG(), c0547d, c0550g);
        c0550g.Eq();
        c0550g.Eo();
        c0550g.Ek();
        c0550g.Ep(c0547d);
        this.WT.dF(this.WS, this.WP, this.Xj, 0, 0, c0547d.DM(), c0547d.DG(), c0547d2, c0550g);
        c0550g.Eq();
        c0550g.Eo();
        return c0547d;
    }

    private void aeH(C0544a c0544a, Rect rect, C0290f c0290f, C0550g c0550g, float f) {
        c0550g.Ek();
        c0550g.setAlpha(f);
        c0544a.DS(rect.width(), rect.height());
        c0544a.DP(false);
        c0550g.En(c0544a, this.WP, rect.left, rect.top, rect.width(), rect.height());
        c0550g.Eo();
        c0544a.DP(true);
    }

    public void release() {
        this.Xb = -1;
        this.Xd = -1;
        this.Xc = false;
        this.Xf = false;
        this.WM = false;
        this.WK = false;
        this.WL = -1;
        this.WN = -1;
        if (this.WQ != null) {
            this.WQ.release();
            this.WQ = null;
        }
        if (this.WT != null) {
            this.WT.release();
            this.WT = null;
        }
        aeG();
    }

    public void aeU() {
        this.WM = false;
        this.WK = false;
        this.WN = -1;
        this.WL = -1;
    }

    private void aeO() {
        for (C0538d c0538d : this.WJ) {
            if (c0538d != null) {
                c0538d.afb();
            }
        }
    }

    private void aeN() {
        for (C0538d c0538d : this.WJ) {
            if (c0538d != null) {
                c0538d.afa();
            }
        }
    }

    private void aeM() {
        for (C0538d c0538d : this.WJ) {
            if (c0538d != null) {
                c0538d.aeZ();
            }
        }
    }

    private void aeR() {
        for (C0538d c0538d : this.WJ) {
            if (c0538d != null) {
                c0538d.afe();
            }
        }
    }

    private void aeQ() {
        for (C0538d c0538d : this.WJ) {
            if (c0538d != null) {
                c0538d.afd();
            }
        }
    }

    private void aeP() {
        for (C0538d c0538d : this.WJ) {
            if (c0538d != null) {
                c0538d.afc();
            }
        }
    }

    private C0547d aeD(C0547d c0547d, int i, int i2) {
        if (c0547d != null && c0547d.DM() == i && c0547d.DG() == i2) {
            return c0547d;
        }
        if (c0547d == null) {
            return new C0547d(i, i2);
        }
        c0547d.Ed(i, i2);
        return c0547d;
    }

    private void aeF(C0547d c0547d) {
        if (c0547d != null && c0547d.DN()) {
            c0547d.Ec();
        }
    }

    private void aeE(int i, int i2) {
        this.WY = aeD(this.WY, i, i2);
        this.WX = aeD(this.WX, i, i2);
    }

    private void aeC(int i, int i2) {
        this.WU = aeD(this.WU, i, i2);
        this.WR = aeD(this.WR, i, i2);
        this.WY = aeD(this.WY, i, i2);
        this.WX = aeD(this.WX, i, i2);
    }

    private void aeG() {
        aeF(this.WR);
        aeF(this.WU);
        aeF(this.WY);
        aeF(this.WX);
        this.WR = null;
        this.WU = null;
        this.WY = null;
        this.WX = null;
    }
}
