package com.android.videomaker;

import android.graphics.Bitmap;

public class C1196i {
    boolean aAa = true;
    String aAb = null;
    String aAc = null;
    int azY;
    Bitmap azZ = null;

    public C1196i(int i, String str, Bitmap bitmap, String str2) {
        this.azY = i;
        this.aAc = str;
        this.azZ = bitmap;
        this.aAb = str2;
    }

    public String aPz() {
        return this.aAc;
    }

    public Bitmap aPy() {
        return this.azZ;
    }

    public boolean aPx() {
        return this.aAa;
    }

    public void aPw(boolean z) {
        this.aAa = z;
    }

    public void aPv() {
        if (this.azZ != null) {
            this.azZ.recycle();
            this.azZ = null;
        }
    }
}
