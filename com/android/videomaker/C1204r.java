package com.android.videomaker;

import android.graphics.Bitmap;

public class C1204r {
    protected Bitmap aAM = null;
    private int aAN;
    private String aAO;
    protected C1202p aAP;

    public C1204r(int i, String str, C1202p c1202p) {
        this.aAN = i;
        this.aAO = str;
        this.aAP = c1202p;
        aQm();
    }

    public void aQm() {
        this.aAM = C1205s.aQq(this);
    }

    public void aQl() {
        if (this.aAM != null && !this.aAM.isRecycled()) {
            this.aAM.recycle();
            this.aAM = null;
        }
    }

    public String aQn() {
        return this.aAO;
    }

    public C1202p aQo() {
        return this.aAP;
    }

    public Bitmap aQk() {
        return this.aAM;
    }
}
