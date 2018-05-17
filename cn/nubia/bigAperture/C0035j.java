package cn.nubia.bigAperture;

import com.p010a.C0090a;

class C0035j implements C0034l {
    final /* synthetic */ C0032h boP;

    private C0035j(C0032h c0032h) {
        this.boP = c0032h;
    }

    public void bLv(BigApertureTask bigApertureTask, byte[] bArr, byte[] bArr2, C0038n c0038n) {
        C0090a.bvo("BigApertureProcessTread", "onDataSaved");
        synchronized (this.boP.boG) {
            this.boP.bKS(bigApertureTask, bArr, bArr2, c0038n);
            this.boP.boI.remove(bigApertureTask);
        }
    }
}
