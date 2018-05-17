package com.android.startrack;

import com.android.common.appService.C0300B;
import com.android.common.appService.StarFuncState;

final class C1124m implements C0300B {
    final /* synthetic */ C1119h aLs;

    C1124m(C1119h c1119h) {
        this.aLs = c1119h;
    }

    public void aaa() {
        this.aLs.aLn.aLe = StarFuncState.IDLE;
        this.aLs.aLn.aLj.baU(false);
        this.aLs.aLn.alF();
        this.aLs.aLn.bby();
        this.aLs.aLn.adA.OQ = false;
        this.aLs.aLn.bbI();
    }
}
