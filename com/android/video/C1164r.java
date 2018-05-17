package com.android.video;

final class C1164r implements Runnable {
    final /* synthetic */ C1152e aRt;
    final /* synthetic */ int aRu;

    C1164r(C1152e c1152e, int i) {
        this.aRt = c1152e;
        this.aRu = i;
    }

    public void run() {
        if (this.aRt.aPZ != null) {
            this.aRt.aPZ.bgY(this.aRu);
        }
    }
}
