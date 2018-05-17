package com.android.electronicfno;

import android.os.Handler;
import com.nubia.camera.common.Native.EletronicAlgorithm;
import com.p010a.C0090a;

public class C0839j {
    private boolean aXM = false;
    private EletronicAlgorithm aXN;
    private Handler aXO = new C0845q(this);
    private int aXP;
    private C0832k aXQ;
    private int aXR;
    private int aXS = 0;
    private C0840l aXT;
    private int aXU;
    private int mState = 0;

    public void bop(C0832k c0832k) {
        this.aXQ = c0832k;
    }

    public int boq() {
        if (this.aXN == null) {
            return 0;
        }
        return this.mState;
    }

    public void bor(int i, int i2, int i3, int i4, int i5, boolean z, int i6, int i7) {
        if (this.aXN != null) {
            if (this.aXQ != null) {
                this.aXQ.bnO(1);
            }
            return;
        }
        this.aXM = false;
        this.aXR = i3;
        if (i3 == -1) {
            this.aXM = true;
        } else if (i3 >= 8) {
            this.aXR = ((i4 + 10) * i3) / 10;
        }
        this.aXU = i;
        this.aXP = i2;
        this.aXS = i6;
        this.aXT = new C0840l(this, i, i2, i3, i4, i5, z, i7);
        this.aXT.start();
    }

    public void cancel() {
        if (this.aXN != null) {
            this.aXT.boB();
        }
    }

    public boolean boo(byte[] bArr) {
        if (this.mState == 3 || this.aXN == null) {
            return false;
        }
        int btU = this.aXN.btU(bArr);
        C0090a.bvo("ElectronicOjbect", "asyncAddYuvData,num wanted " + this.aXR + " num put " + btU);
        return btU >= this.aXR ? this.aXM : true;
    }

    public void stop() {
        if (this.aXN != null) {
            this.aXT.boC();
        }
    }
}
