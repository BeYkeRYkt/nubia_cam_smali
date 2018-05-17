package com.android.common;

final class ac implements Runnable {
    final /* synthetic */ ActivityBase akU;

    ac(ActivityBase activityBase) {
        this.akU = activityBase;
    }

    public void run() {
        this.akU.aiH = true;
        this.akU.aso();
    }
}
