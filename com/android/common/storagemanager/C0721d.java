package com.android.common.storagemanager;

public class C0721d {
    private int aeJ = 0;
    private C0722e aeK;

    public C0721d(C0722e c0722e) {
        this.aeK = c0722e;
    }

    public boolean alU() {
        if (this.aeK.amh() - 4 > this.aeJ) {
            this.aeJ++;
            return false;
        }
        this.aeJ = 0;
        return true;
    }
}
