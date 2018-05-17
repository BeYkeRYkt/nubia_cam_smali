package com.android.videomaker;

class C1199m extends Thread {
    final /* synthetic */ C1198k aAs;

    private C1199m(C1198k c1198k) {
        this.aAs = c1198k;
    }

    public void run() {
        while (this.aAs.aAl) {
            do {
            } while (this.aAs.aAj.size() >= 3);
            synchronized (C1198k.aAf) {
                this.aAs.aAj.add(this.aAs.aPH());
                C1198k c1198k = this.aAs;
                c1198k.aAr = c1198k.aAr + 1;
                if (this.aAs.aAr >= this.aAs.aAi) {
                    this.aAs.aAk.sendEmptyMessage(1);
                }
                if (this.aAs.aAg && this.aAs.aAj.size() == 1) {
                    C1198k.aAf.notifyAll();
                }
            }
        }
    }
}
