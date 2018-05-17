package com.android.videomaker.service;

import android.content.Intent;

final class C1213i implements Runnable {
    final /* synthetic */ MakerService axS;
    final /* synthetic */ Intent axT;

    C1213i(MakerService makerService, Intent intent) {
        this.axS = makerService;
        this.axT = intent;
    }

    public void run() {
        this.axS.aLL(this.axT);
        MakerService.axv.aLr(this.axT);
    }
}
