package com.android.dng;

import com.android.common.p012e.C0102l;

class C0808x extends C0102l {
    private int aNA;
    final /* synthetic */ C0807w aNB;

    public C0808x(C0807w c0807w, int i) {
        this.aNB = c0807w;
        this.aNA = i;
    }

    public void mE() {
        this.aNB.aNz.aMA.uY(this.aNA);
        this.aNB.aNz.aMF.setText(this.aNB.aNz.aMt[this.aNA]);
        this.aNB.aNz.aMB.notifyDataSetChanged();
        if (this.aNB.aNz.aMx != null) {
            this.aNB.aNz.aMx.bdb(this.aNB.aNz.aMA.vd(), this.aNB.aNz.aMA.tw());
        }
    }

    public int mF() {
        return -1;
    }
}
