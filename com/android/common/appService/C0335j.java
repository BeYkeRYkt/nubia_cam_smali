package com.android.common.appService;

import android.app.Activity;
import com.android.common.C0616j;
import java.util.ArrayList;

public class C0335j {
    private Activity QH;
    private C0337l QI;
    private ArrayList QJ;
    private int QK = -1;
    private int QL = 0;
    private C0338m QM;
    private int QN = -1;

    public C0335j(Activity activity) {
        this.QH = activity;
        this.QJ = new ArrayList();
        this.QM = new C0338m(this, activity);
    }

    public void Yi() {
        if (this.QM == null) {
            this.QM = new C0338m(this, this.QH);
        }
        this.QM.enable();
    }

    public void Yj() {
        this.QM.disable();
        this.QM = null;
    }

    public int Yk() {
        return this.QK;
    }

    public int Yl() {
        return this.QL;
    }

    public void Ym(C0336k c0336k) {
        synchronized (this.QJ) {
            if (c0336k != null) {
                if (!this.QJ.contains(c0336k)) {
                    this.QJ.add(c0336k);
                    c0336k.gc(this.QL);
                }
            }
        }
    }

    public void Yn(C0336k c0336k) {
        synchronized (this.QJ) {
            this.QJ.remove(c0336k);
        }
    }

    private void Yp(int i) {
        synchronized (this.QJ) {
            int size = this.QJ.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((C0336k) this.QJ.get(i2)).gc(i);
            }
        }
    }

    private void Yo(int i) {
        if (this.QI != null) {
            this.QI.Yw(i);
        }
    }

    private void Yq() {
        if (this.QK != -1) {
            int apj = (this.QK + C0616j.apj(this.QH)) % 360;
            if (this.QL != apj) {
                this.QL = apj;
                Yp(this.QL);
            }
        }
    }
}
