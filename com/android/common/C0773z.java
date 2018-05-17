package com.android.common;

import com.android.p035d.C0774a;

public class C0773z {
    private int[] akd = new int[8];
    private int ake = 0;

    public void avz(int i) {
        int[] iArr;
        if (this.akd.length == this.ake) {
            iArr = new int[(this.ake + this.ake)];
            C0774a.boI(this.akd, 0, iArr, 0, this.ake);
            this.akd = iArr;
        }
        iArr = this.akd;
        int i2 = this.ake;
        this.ake = i2 + 1;
        iArr[i2] = i;
    }

    public int avC() {
        this.ake--;
        return this.akd[this.ake];
    }

    public int avA() {
        return this.ake;
    }

    public int[] avB(int[] iArr) {
        if (iArr == null || iArr.length < this.ake) {
            iArr = new int[this.ake];
        }
        C0774a.boI(this.akd, 0, iArr, 0, this.ake);
        return iArr;
    }
}
