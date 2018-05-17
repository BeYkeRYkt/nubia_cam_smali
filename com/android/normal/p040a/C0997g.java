package com.android.normal.p040a;

import cn.nubia.videogenerator.p007b.C0071i;
import com.android.common.ActivityBase;
import com.p010a.C0090a;
import java.util.concurrent.ConcurrentLinkedQueue;

class C0997g {
    private ConcurrentLinkedQueue aBv;
    private C0071i aBw;
    private ConcurrentLinkedQueue aBx;
    private C0999i aBy;
    final /* synthetic */ C0991a aBz;
    public int mState;

    private C0997g(C0991a c0991a) {
        this.aBz = c0991a;
        this.aBy = null;
        this.aBx = new ConcurrentLinkedQueue();
        this.aBw = null;
        this.aBv = new ConcurrentLinkedQueue();
        this.mState = 2;
    }

    public void aRt() {
        if (this.mState == 1) {
            C0090a.bvo(C0991a.TAG, "Live is already turn on");
            return;
        }
        C0090a.bvo(C0991a.TAG, "turn on");
        this.aBy = new C0999i();
        this.aBy.aRG(this.aBz.aBh, this.aBz.aBu, ((ActivityBase) this.aBz.aBi).arB().Ts());
        this.aBy.aRH(this.aBz.aBj);
        this.aBy.aRI(this.aBx);
        this.aBy.start();
        this.aBw = new C0071i();
        this.aBw.bOz(this.aBz.aBf);
        this.aBw.bOA(this.aBz.aBe);
        this.aBw.bOB(this.aBz.aBj);
        this.aBw.bOC(this.aBv);
        this.aBw.start();
        if (this.aBz.aBq != null) {
            this.aBz.aBq.aRl();
        }
        this.mState = 1;
    }

    public void aRs() {
        if (this.mState == 2) {
            C0090a.bvo(C0991a.TAG, "Live is already turn off");
            return;
        }
        if (this.aBz.aBl != null) {
            this.aBz.aBl.cancel();
            this.aBz.aBl = null;
        }
        if (this.aBy != null) {
            this.aBy.stop();
            this.aBy = null;
        }
        if (this.aBw != null) {
            this.aBw.stop();
            this.aBw = null;
        }
        if (this.aBv != null) {
            this.aBv.clear();
            this.aBv = null;
        }
        if (this.aBx != null) {
            this.aBx.clear();
            this.aBx = null;
        }
        if (this.aBz.aBp != null) {
            this.aBz.aBp.aRm();
        }
        this.mState = 2;
    }

    public boolean aRp() {
        return this.mState == 1;
    }

    public ConcurrentLinkedQueue aRo() {
        if (this.mState != 1) {
            C0090a.bvo(C0991a.TAG, "getYUVOutQueue from cacher when cacher is not turn on");
        }
        return this.aBx;
    }

    public ConcurrentLinkedQueue aRn() {
        if (this.mState != 1) {
            C0090a.bvo(C0991a.TAG, "getPCMOutQueue from cacher when cacher is not turn on");
        }
        return this.aBv;
    }

    public boolean aRq() {
        return this.aBx.isEmpty();
    }

    public void aRr() {
        this.aBy.aRJ();
    }
}
