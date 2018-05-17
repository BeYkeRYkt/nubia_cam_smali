package com.android.common.p016a;

import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.os.ConditionVariable;
import android.view.SurfaceHolder;
import com.android.common.C0616j;
import com.android.common.effects.C0506b;
import com.android.common.gles.C0544a;
import com.android.common.gles.C0546c;
import com.android.common.gles.C0547d;
import com.android.common.gles.C0550g;
import com.android.common.gles.C0554k;
import com.android.common.gles.C0555l;
import com.android.common.p027g.C0537c;
import com.p010a.C0090a;
import java.util.ArrayList;
import java.util.Collections;

public class C0290f extends Thread {
    private int f58A = 0;
    private boolean f59B = false;
    private SurfaceTexture f60C;
    private int f61D;
    private C0550g f62E = null;
    private int f63F = 1;
    private C0547d f64G;
    private Rect f65H = null;
    private C0554k f66I;
    private C0506b f67J;
    private Rect f68K = new Rect();
    private boolean f69L = false;
    private C0294k f70M;
    private boolean f71N = false;
    private boolean f72O = false;
    private C0537c f73P;
    private C0292i f74Q = new C0292i();
    private C0555l f75R;
    private C0289e f76S = new C0289e();
    private boolean f77T = true;
    private ArrayList f78U = new ArrayList();
    private boolean f79V = true;
    private ConditionVariable f80W = new ConditionVariable();
    private int f81X = 0;
    private boolean f82Y = false;
    private C0547d f83Z;
    private SurfaceHolder aa;

    C0290f(Rect rect, C0537c c0537c, boolean z, boolean z2) {
        super("Nubia Render Thread");
        this.f68K = rect;
        this.f73P = c0537c;
        this.f71N = z;
        this.f79V = z2;
    }

    public void af(SurfaceHolder surfaceHolder) {
        this.aa = surfaceHolder;
        this.f80W.close();
        start();
    }

    public void m54R(int i) {
        synchronized (this) {
            if (i == 1 || i == -1) {
                this.f63F = i;
            }
        }
    }

    public void ak(C0547d c0547d) {
        this.f83Z = c0547d;
    }

    public C0547d an() {
        return this.f83Z;
    }

    public boolean am() {
        return this.f83Z != null;
    }

    public C0544a ar() {
        return this.f64G;
    }

    public void aq(C0550g c0550g) {
        Rect al = al();
        if (this.f64G == null) {
            this.f64G = new C0547d(al.width(), al.height());
            this.f64G.Eb(c0550g);
        } else if (!(this.f64G.DM() == al.width() && this.f64G.DG() == al.height())) {
            this.f64G.Ed(al.width(), al.height());
        }
        c0550g.Ev(this.f64G);
        GLES20.glCopyTexImage2D(3553, 0, 6408, al.left, al.top, al.width(), al.height(), 0);
    }

    public int m55S() {
        return this.f63F;
    }

    public void m58V(boolean z) {
        aw(false, "startBlur realTime: " + z);
        this.f71N = z;
        if (!this.f59B) {
            this.f59B = true;
            ab();
        }
    }

    public void m59W() {
        aw(false, "stopBlur");
        if (this.f59B) {
            this.f59B = false;
            ab();
        }
    }

    public void m60X(int i) {
        aw(false, "startSwithCamera, switchStarted: " + this.f82Y);
        if (!this.f82Y) {
            this.f81X = i;
            this.f82Y = true;
            ab();
        }
    }

    public void m61Y() {
        aw(false, "stopSwitchCamera, switchStarted: " + this.f82Y);
        if (this.f82Y) {
            this.f82Y = false;
            ab();
        }
    }

    private void release() {
        C0090a.bvo("RenderThread", "release resources");
        if (this.f73P != null) {
            this.f73P.release();
        }
        if (this.f64G != null && this.f64G.DN()) {
            this.f64G.Ec();
        }
        az();
        this.f62E.release();
        this.f67J.release();
        this.f64G = null;
        this.f67J = null;
        this.f59B = false;
        this.f82Y = false;
        this.f58A = 0;
    }

    public void m56T(C0126g c0126g) {
        if (c0126g != null && !this.f78U.contains(c0126g)) {
            synchronized (this.f78U) {
                this.f78U.add(c0126g);
                Collections.sort(this.f78U, new C0298n(this));
            }
        }
    }

    public void m57U(C0126g c0126g) {
        synchronized (this.f78U) {
            this.f78U.remove(c0126g);
        }
    }

    public void ai() {
        this.f69L = true;
        this.f72O = false;
        this.f79V = true;
        synchronized (this) {
            notify();
        }
        try {
            join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public synchronized void m62Z() {
        C0090a.bvo("RenderThread", "Pause Render");
        this.f72O = true;
        synchronized (this) {
            notify();
        }
    }

    public synchronized void aa() {
        C0090a.bvo("RenderThread", "Resume Render");
        this.f72O = false;
        synchronized (this) {
            notify();
        }
        this.f59B = false;
        this.f82Y = false;
        if (this.f71N) {
            this.f58A = 7;
        } else {
            this.f58A = 0;
        }
        ah(true);
        if (this.f73P != null) {
            this.f73P.aeU();
        }
        ab();
    }

    public synchronized void ab() {
        this.f79V = true;
        notify();
    }

    private void ay() {
        this.f66I = new C0554k();
        this.f66I.EO(this.aa);
        this.f67J = new C0506b();
    }

    private void av() {
        this.f61D = C0546c.Ea();
        C0090a.m0d("RenderThread", "createSurfaceTextureForCamera: mPreviewRect.width=" + this.f68K.width() + " height=" + this.f68K.height());
        this.f75R = new C0555l(this.f61D, 36197, this.f68K.width(), this.f68K.height());
        this.f70M = new C0294k(this);
        this.f70M.start();
        this.f70M.aY();
    }

    public void ag() {
        this.f80W.block();
    }

    public void run() {
        try {
            ay();
            this.f66I.EP();
            this.f62E = new C0550g();
            av();
            this.f80W.open();
            while (!this.f69L) {
                synchronized (this) {
                    if (this.f72O) {
                        try {
                            C0090a.m1e("RenderThread", "thread pause");
                            wait();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    } else {
                        if (!(this.f68K.width() == 0 || this.f68K.height() == 0)) {
                            if (this.f77T) {
                                synchronized (this) {
                                    if (this.f79V) {
                                        this.f79V = false;
                                    } else {
                                        try {
                                            wait();
                                        } catch (InterruptedException e2) {
                                            e2.printStackTrace();
                                        }
                                    }
                                }
                            }
                            try {
                                this.f60C.updateTexImage();
                            } catch (IllegalStateException e3) {
                                C0090a.m1e("RenderThread", "updateTexImage fail " + e3.getMessage());
                            }
                            ax();
                            GLES20.glFinish();
                            this.f66I.EQ();
                            this.f74Q.aN();
                            aB();
                        }
                    }
                }
            }
            au();
            release();
            this.f60C.release();
            this.f60C = null;
            this.f66I.ER();
            C0090a.bvo("RenderThread", "thread " + getId() + " exit");
            this.f70M.quit();
            this.f66I.release();
        } catch (Exception e4) {
            e4.printStackTrace();
            this.f80W.open();
        }
    }

    private void au() {
        C0090a.bvo("RenderThread", "clearBuffer");
        this.f62E.Ew();
        GLES20.glFinish();
        this.f66I.EQ();
    }

    private void ax() {
        this.f65H = this.f76S.m51N(this);
        this.f62E.Ew();
        if (!(this.f58A == 0 || this.f58A == 6 || (this.f58A == 3 && !this.f71N))) {
            if (this.f58A == 1 && !this.f59B) {
                if (this.f71N) {
                }
            }
            if (!((this.f58A == 3 && this.f71N) || this.f58A == 7)) {
                if (this.f58A == 1 && !this.f59B) {
                    if (!this.f71N) {
                    }
                }
                if (this.f58A == 2 && !this.f59B && this.f71N) {
                }
                if (aD()) {
                    aC();
                }
            }
            aw(false, "realtime draw");
            this.f73P.aeT(this, this.f62E);
            if (aD()) {
                aC();
            }
        }
        aw(false, "defalut draw");
        if (!aA()) {
            C0090a.m1e("RenderThread", "no render!");
        }
        if (aD()) {
            aC();
        }
    }

    private boolean aD() {
        if (this.f82Y) {
            if (this.f58A == 0 || this.f58A == 6) {
                aq(this.f62E);
                this.f58A = 4;
                ah(false);
                aw(false, "switch, none to copy mSwitchState: " + this.f58A);
            } else {
                if (!(this.f58A == 4 || this.f58A == 5)) {
                    if (this.f58A == 8) {
                    }
                }
                aw(false, "switch, copied or started mSwitchState:  " + this.f58A);
                this.f73P.aeW(this, this.f62E, this.f81X);
                if (this.f73P.aeS(this, this.f62E) == 7) {
                    ah(true);
                    this.f58A = 8;
                } else {
                    this.f58A = 5;
                }
            }
            return true;
        } else if (this.f58A == 5 && !this.f59B) {
            this.f73P.aeW(this, this.f62E, this.f81X);
            r0 = this.f73P.aeS(this, this.f62E);
            if (r0 == 7) {
                this.f58A = 8;
            } else {
                this.f58A = 5;
            }
            aw(false, "switchstart false draw switchState: " + r0 + "; animState: " + this.f58A);
            return true;
        } else if ((this.f58A == 5 && this.f59B) || this.f58A == 8 || this.f58A == 6) {
            this.f73P.aeY(this, this.f62E);
            r0 = this.f73P.aeS(this, this.f62E);
            aw(false, "switch, drawing mSwitchState: " + this.f58A + "; next switchDrawingState: " + r0);
            if (r0 != 8 || this.f59B) {
                this.f58A = 0;
                ah(true);
            } else {
                this.f58A = 6;
                ah(false);
            }
            return true;
        } else {
            if (this.f58A == 4) {
                aw(false, "switch, copy to none");
                this.f58A = 0;
                ah(true);
            }
            return false;
        }
    }

    private boolean aC() {
        int i = 7;
        if (this.f59B) {
            if (this.f58A == 0 || this.f58A == 8 || this.f58A == 6 || this.f58A == 3 || this.f58A == 7) {
                aq(this.f62E);
                this.f58A = 1;
                ah(false);
                aw(false, "blur copy: " + this.f58A + "; animTimeBlur: " + this.f73P.aeK());
            } else if (this.f58A == 1 || this.f58A == 2) {
                aw(false, "blur start anim, blurState: " + this.f58A);
                this.f73P.aeV(this, this.f62E, this.f71N);
                if (this.f73P.aeS(this, this.f62E) == 3) {
                    ah(true);
                }
                this.f58A = 2;
            }
            return true;
        } else if (this.f58A == 2 || this.f58A == 3) {
            this.f73P.aeX(this, this.f71N);
            int aeS = this.f73P.aeS(this, this.f62E);
            aw(false, "blur stop anim: " + this.f58A + "; animTimeBlur" + this.f73P.aeK() + ";blurDrawingState: " + aeS);
            if (aeS == 4) {
                this.f58A = 3;
                ah(false);
            } else {
                if (!this.f71N) {
                    i = 0;
                }
                this.f58A = i;
                ah(true);
            }
            return true;
        } else {
            if (this.f58A == 1) {
                if (!this.f71N) {
                    i = 0;
                }
                this.f58A = i;
                aw(false, "blur copy to " + this.f58A);
                ah(true);
            }
            return false;
        }
    }

    private void aw(boolean z, String str) {
        if (z) {
            C0090a.bvo("RenderDebugAnim", str);
        }
    }

    public void m53Q(Rect rect, boolean z) {
        Object obj = 1;
        this.f68K = rect;
        if (!(this.f58A == 0 || this.f58A == 2 || this.f58A == 1 || this.f58A == 3 || this.f58A == 7)) {
            obj = null;
        }
        C0289e c0289e = this.f76S;
        if (obj == null) {
            z = false;
        }
        if (c0289e.m52O(rect, z)) {
            ab();
        }
        synchronized (this) {
            if (!(this.f75R == null || (this.f68K.width() == this.f75R.DM() && this.f68K.width() == this.f75R.DG()))) {
                this.f75R.DR(this.f68K.width(), this.f68K.height());
            }
        }
    }

    private boolean aA() {
        boolean z;
        synchronized (this.f78U) {
            z = false;
            for (Object obj : this.f78U.toArray()) {
                z |= ((C0126g) obj).aJ(this, this.f62E);
            }
        }
        return z;
    }

    private boolean aB() {
        boolean z;
        synchronized (this.f78U) {
            z = false;
            for (C0126g aL : this.f78U) {
                z = aL.aL(this, this.f62E) | z;
            }
        }
        return z;
    }

    private void az() {
        synchronized (this.f78U) {
            for (Object obj : this.f78U.toArray()) {
                ((C0126g) obj).aK(this);
            }
        }
    }

    public SurfaceTexture ae() {
        return this.f60C;
    }

    public int aj() {
        return this.f61D;
    }

    public C0555l ao() {
        return this.f75R;
    }

    public Rect al() {
        if (this.f65H == null) {
            return this.f68K;
        }
        return this.f65H;
    }

    public Rect as() {
        return new Rect(0, 0, C0616j.apG(), C0616j.aoL());
    }

    public Rect ap() {
        return this.f68K;
    }

    public void ah(boolean z) {
        this.f77T = z;
    }

    public void ac(C0291h c0291h) {
        this.f74Q.aP(c0291h);
    }

    public boolean ad(C0291h c0291h) {
        return this.f74Q.aO(c0291h);
    }

    public C0506b at() {
        return this.f67J;
    }
}
