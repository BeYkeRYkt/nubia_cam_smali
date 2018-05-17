package com.android.videomaker.service;

final class C1208d implements Runnable {
    final /* synthetic */ MakerService axE;

    C1208d(MakerService makerService) {
        this.axE = makerService;
    }

    public void run() {
        if (MakerService.axy.size() == 0) {
            this.axE.stopSelf();
        }
    }
}
