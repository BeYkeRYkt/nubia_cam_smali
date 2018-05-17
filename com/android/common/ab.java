package com.android.common;

final class ab implements Runnable {
    final /* synthetic */ ActivityBase akT;

    ab(ActivityBase activityBase) {
        this.akT = activityBase;
    }

    public void run() {
        if (!this.akT.atB()) {
            this.akT.aiV.Rp();
            this.akT.atR();
        }
    }
}
