package com.android.videomaker.service;

import android.content.Intent;

final class C1209e implements Runnable {
    final /* synthetic */ MakerService axF;
    final /* synthetic */ Intent axG;
    final /* synthetic */ Object axH;
    final /* synthetic */ Object axI;
    final /* synthetic */ Exception axJ;
    final /* synthetic */ boolean axK;

    C1209e(MakerService makerService, Intent intent, Object obj, Object obj2, Exception exception, boolean z) {
        this.axF = makerService;
        this.axG = intent;
        this.axH = obj;
        this.axI = obj2;
        this.axJ = exception;
        this.axK = z;
    }

    public void run() {
        this.axF.aLN(this.axG, this.axH, this.axI, this.axJ, this.axK);
    }
}
