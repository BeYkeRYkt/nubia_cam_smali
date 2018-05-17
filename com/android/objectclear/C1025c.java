package com.android.objectclear;

import com.p010a.C0090a;

class C1025c extends Thread {
    private int aJC;
    final /* synthetic */ C1023a aJD;
    private byte[] data;

    public C1025c(C1023a c1023a, int i, byte[] bArr) {
        this.aJD = c1023a;
        C0090a.m1e("NubiaObjectClearDataProvider", "SaveData i = " + i);
        this.aJC = i;
        this.data = bArr;
    }

    public void run() {
        if (!this.aJD.aJz) {
            if (this.aJD.aJA != null) {
                this.aJD.aJA.aZM(this.aJC);
            }
            this.aJD.aZA(this.aJC, this.data);
            if (this.aJC == 4 && this.aJD.aJA != null) {
                this.aJD.aJA.aZK();
            }
        }
    }
}
