package com.android.common.p027g;

import com.android.common.custom.C0421M;
import com.android.common.gles.C0547d;
import com.android.common.gles.C0550g;
import com.android.common.p016a.C0126g;
import com.android.common.p016a.C0290f;
import com.fotonation.utils.Rectangle;
import com.fotonation.vfb.VfbFaceArray;
import com.fotonation.vfb.VfbHandler;
import com.p010a.C0090a;

public class C0535a implements C0126g {
    final String TAG = "FaceBeautyRenderer";
    private VfbFaceArray Wk;
    private int Wl = -1;
    private boolean Wm = false;
    private int Wn;
    private VfbHandler Wo = null;
    private float[] Wp = new float[16];
    private boolean Wq = false;
    private int Wr;
    private int Ws = 40;
    private int Wt = 20;
    private int Wu;
    private C0547d Wv = null;
    private int Ww;
    private int Wx = -1;
    private boolean Wy = false;

    public C0535a(int i, int i2, boolean z, boolean z2) {
        this.Wx = i;
        this.Wl = i2;
        this.Wm = z;
        this.Wy = z2;
        float[] fArr = this.Wp;
        this.Wp[15] = 1.0f;
        this.Wp[10] = 1.0f;
        fArr[0] = 1.0f;
        this.Wp[5] = -1.0f;
        this.Wp[13] = 1.0f;
        this.Ww = 30;
        this.Wu = 30;
        this.Wr = 80;
        this.Wk = new VfbFaceArray();
        this.Wk.allocate(10);
    }

    public boolean aJ(C0290f c0290f, C0550g c0550g) {
        this.Wn = c0290f.aj();
        synchronized (this) {
            if (this.Wy && this.Wo == null) {
                C0090a.bvo("FaceBeautyRenderer", "init vfbHandler");
                this.Wo = new VfbHandler();
                aez(this.Wo, c0290f);
            } else if (!(this.Wy || this.Wo == null)) {
                C0090a.bvo("FaceBeautyRenderer", "destory vfbHandler");
                aez(null, null);
            }
        }
        if (!this.Wy && this.Wo == null) {
            aey(c0290f);
            c0290f.m57U(this);
        }
        if (this.Wo != null) {
            int i;
            int i2;
            synchronized (this) {
                i = this.Wx;
                i2 = this.Wl;
            }
            if (!(i == this.Wo.getPreviewWidth() && i2 == this.Wo.getPreviewHeight())) {
                C0090a.m0d("FaceBeautyRenderer", "in Run: mPreviewRect.width=" + this.Wx + " height=" + this.Wl);
                aey(c0290f);
                this.Wv = new C0547d(i, i2);
                c0290f.ak(this.Wv);
                this.Wo.setPreviewSize(i, i2);
                this.Wo.setViewSize(i, i2);
            }
            if (!this.Wv.DN()) {
                this.Wv.Eb(c0550g);
            }
            this.Wo.setVfbEffectLevel(this.Wu, this.Ww, this.Wr, 0, 0, this.Wt, this.Ws, true);
            this.Wq = this.Wo.process(this.Wp, this.Wn, 36197, this.Wv.DH());
            if (this.Wq) {
                this.Wo.getFaces(this.Wk);
                aex(this.Wk);
            }
        }
        return true;
    }

    private void aey(C0290f c0290f) {
        if (this.Wv != null) {
            if (this.Wv.DN()) {
                this.Wv.Ec();
            }
            this.Wv = null;
            c0290f.ak(null);
        }
    }

    public boolean aL(C0290f c0290f, C0550g c0550g) {
        return false;
    }

    public void aK(C0290f c0290f) {
        aez(null, null);
    }

    public int aI() {
        return -100;
    }

    public synchronized void aeB(int i, int i2) {
        C0090a.m0d("FaceBeautyRenderer", "setVfbSize:" + i + "x" + i2);
        if (i < i2) {
            this.Wx = i2;
            this.Wl = i;
        } else {
            this.Wx = i;
            this.Wl = i2;
        }
    }

    public int aew() {
        return this.Wx;
    }

    public int aev() {
        return this.Wl;
    }

    public void aeA(int i, int i2, int i3) {
        C0090a.m0d("FaceBeautyRenderer", "setVfbParameters " + i + " " + i2 + " " + i3);
        if (i != -1) {
            this.Wu = i;
        }
        if (i2 != -1) {
            this.Ww = i2;
        }
        if (i3 != -1) {
            this.Wr = i3;
        }
        if (this.Wu == 0 && this.Ww == 0 && this.Wr == 0) {
            this.Ws = 0;
            this.Wt = 0;
            return;
        }
        this.Ws = 40;
        this.Wt = 20;
    }

    public void release() {
        this.Wy = false;
    }

    private void aez(VfbHandler vfbHandler, C0290f c0290f) {
        if (!C0421M.dC().dD().dv()) {
            return;
        }
        if (this.Wx == -1 || this.Wl == -1) {
            C0090a.bvo("vfb", "width height is not set");
            return;
        }
        VfbHandler vfbHandler2 = this.Wo;
        this.Wo = vfbHandler;
        if (this.Wo != null) {
            C0090a.m0d("FaceBeautyRenderer", "before initializeVfbEngine width=" + this.Wx + " height=" + this.Wl);
            synchronized (this) {
                if (this.Wo.initializeVfbEngine(this.Wm, this)) {
                    aey(c0290f);
                    this.Wv = new C0547d(this.Wx, this.Wl);
                    c0290f.ak(this.Wv);
                } else {
                    this.Wo = null;
                    C0090a.m1e("FaceBeautyRenderer", "VFB initialization failed !");
                }
            }
        }
        synchronized (this) {
            if (vfbHandler2 != null) {
                vfbHandler2.destroyVfbEngine();
            }
        }
    }

    private void aex(VfbFaceArray vfbFaceArray) {
        for (int i = 0; i < vfbFaceArray.mFaceCount; i++) {
            Rectangle rectangle = vfbFaceArray.mFaces[i].boundRect;
            C0090a.bvm("VFB", "faces[" + i + "]: l:" + rectangle.Left() + " t:" + rectangle.Top() + " size:" + rectangle.Width() + "x" + rectangle.Height());
            C0090a.bvm("VFB", "faces[" + i + "]: smileLevel:" + vfbFaceArray.mFaces[i].smileLevel);
            C0090a.bvm("VFB", "faces[" + i + "]: blinkLevel:" + vfbFaceArray.mFaces[i].blinkLevel);
        }
    }
}
