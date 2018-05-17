package com.android.normal.p040a;

import android.content.Context;
import cn.nubia.videogenerator.p006a.C0052a;
import cn.nubia.videogenerator.p006a.C0053b;
import com.android.common.cameradevice.C0382m;
import com.p010a.C0090a;
import java.util.concurrent.atomic.AtomicBoolean;

public class C0991a {
    private static String TAG = "meeeLiveVideoGenerator";
    private C0052a aBe;
    private int aBf;
    private C0997g aBg;
    private C0382m aBh;
    private Context aBi;
    private int aBj;
    private C0992b aBk;
    private C0998h aBl;
    private AtomicBoolean aBm = new AtomicBoolean(false);
    private C0994d aBn;
    private C0993c aBo;
    private C0996f aBp;
    private C0995e aBq;
    private int aBr = 0;
    private String aBs;
    private String aBt;
    private C0053b aBu;

    public C0991a(Context context) {
        this.aBi = context;
    }

    public void aQL(int i) {
        this.aBj = i;
    }

    public void setOrientation(int i) {
        this.aBr = i;
    }

    public void aQG(String str) {
        this.aBt = str;
    }

    public void aQI(C0382m c0382m, int i) {
        this.aBh = c0382m;
        this.aBf = i;
    }

    public void aQK(C0053b c0053b) {
        this.aBu = c0053b;
    }

    public void aQJ(C0052a c0052a) {
        this.aBe = c0052a;
    }

    public void aQO(String str) {
        this.aBs = str;
    }

    public void aQE(C0993c c0993c) {
        this.aBo = c0993c;
    }

    public void aQF(C0994d c0994d) {
        this.aBn = c0994d;
    }

    public void aQM() {
        aQN();
        this.aBg = new C0997g();
        this.aBg.aRt();
    }

    public void aQN() {
        if (this.aBl != null) {
            this.aBl.cancel();
            this.aBl = null;
        }
        if (this.aBg != null) {
            this.aBg.aRs();
            this.aBg = null;
        }
    }

    public void aQH() {
        if (!this.aBg.aRp()) {
            C0090a.bvj(TAG, "make live when cacher is not runing !");
        } else if (this.aBm.get()) {
            C0090a.bvj(TAG, "make live is still exporting !");
        } else {
            if (this.aBg.aRq()) {
                this.aBg.aRr();
                C0090a.bvj(TAG, "it seems no preview,try reRegister PreviewCallback");
            }
            if (this.aBl != null) {
                this.aBl.release();
                this.aBl = null;
            }
            this.aBl = new C0998h();
            this.aBl.aRv();
        }
    }

    public boolean aQD() {
        return this.aBm.get();
    }
}
